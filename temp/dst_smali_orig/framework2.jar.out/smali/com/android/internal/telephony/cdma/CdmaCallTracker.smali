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

    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    new-array v0, v2, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

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

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x35

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirNumInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v6, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3d

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControl(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "CDMA"

    const-string v1, "registerForLineControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 0

    .prologue
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dc"
    .parameter "i"

    .prologue
    const/4 v0, 0x0

    .local v0, newRinging:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v2, v1, p2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

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

    :cond_0
    :goto_0
    return-object v0

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

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

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

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isUserDialingSwapSpecialCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isUserDialingMergeSpecialCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    :cond_2
    const/16 v2, 0x38

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x320

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger 3 way delayed, dummy="

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

    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .parameter "dialString"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dialEmergencyCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGenericTrue(Ljava/lang/String;)V

    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

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

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

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

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v2, earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .end local v2           #earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    const/4 v0, 0x1

    .local v0, bNewConnection:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3, p1, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    :cond_4
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .parameter "action"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    packed-switch p1, :pswitch_data_0

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

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method private htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "conn"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method private htcHandleRedirectNumber([Ljava/lang/String;)V
    .locals 7
    .parameter "mIndication"

    .prologue
    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string v4, "RedirNum zero length"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    array-length v4, p1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    const/4 v3, 0x0

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

    const/4 v1, 0x0

    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    aget-object v4, p1, v6

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #mRedirectName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    aget-object v3, p1, v4

    goto :goto_1

    .restart local v1       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v3       #mRedirectName:Ljava/lang/String;
    :catch_0
    move-exception v2

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

    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_1

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

    :catch_1
    move-exception v2

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

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "Pending redirNum for new call"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    aget-object v5, p1, v6

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

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

    const/4 v4, 0x0

    .local v4, flashRequestMode:I
    const/4 v3, 0x0

    .local v3, flashCommandSend:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, needFlashAndSetGeneric:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v4, 0x1f4

    if-eqz p2, :cond_0

    move-object v3, p2

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

    if-eqz v6, :cond_27

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGenericTrue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v3, ""

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_3

    const/16 v4, 0x3e8

    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v9, :cond_5

    const/16 v4, 0x5dc

    if-eqz p2, :cond_4

    move-object v3, p2

    :goto_3
    goto :goto_0

    :cond_4
    const-string v3, ""

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    .local v5, lastCallMt:Z
    const/4 v1, 0x0

    .local v1, defaultFlashString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, defaultFlashString_2nd:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v7

    .local v7, specialCode:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const/16 v4, 0x1770

    :goto_4
    if-eqz v1, :cond_1a

    if-eqz p2, :cond_15

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    packed-switch p1, :pswitch_data_1

    add-int/lit16 v4, v4, 0xbe

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_6

    const/16 v4, 0x7d0

    aget-object v1, v7, v10

    goto :goto_4

    :cond_6
    const/16 v4, 0xbb8

    aget-object v1, v7, v9

    goto :goto_4

    :pswitch_1
    if-eqz v5, :cond_7

    const/16 v4, 0xfa0

    const/4 v8, 0x2

    aget-object v1, v7, v8

    aget-object v2, v7, v10

    goto :goto_4

    :cond_7
    const/16 v4, 0x1388

    const/4 v8, 0x3

    aget-object v1, v7, v8

    aget-object v2, v7, v9

    goto :goto_4

    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v4, v4, 0x6e

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x78

    goto/16 :goto_0

    :cond_9
    add-int/lit16 v4, v4, 0x82

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit16 v4, v4, 0x8c

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    add-int/lit16 v4, v4, 0x96

    goto/16 :goto_0

    :cond_b
    add-int/lit16 v4, v4, 0xa0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    add-int/lit16 v4, v4, 0xaa

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :cond_d
    add-int/lit16 v4, v4, 0xb4

    goto/16 :goto_0

    :cond_e
    packed-switch p1, :pswitch_data_2

    add-int/lit16 v4, v4, 0x122

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_10

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

    add-int/lit16 v4, v4, 0xd2

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_f
    add-int/lit16 v4, v4, 0xdc

    goto/16 :goto_0

    :cond_10
    add-int/lit16 v4, v4, 0xe6

    goto/16 :goto_0

    :pswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz v2, :cond_12

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    add-int/lit16 v4, v4, 0xf0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_11
    add-int/lit16 v4, v4, 0xfa

    goto/16 :goto_0

    :cond_12
    add-int/lit16 v4, v4, 0x104

    goto/16 :goto_0

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    add-int/lit16 v4, v4, 0x10e

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :cond_14
    add-int/lit16 v4, v4, 0x118

    goto/16 :goto_0

    :cond_15
    move-object v3, v1

    packed-switch p1, :pswitch_data_3

    add-int/lit16 v4, v4, 0x186

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    add-int/lit16 v4, v4, 0x136

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_16
    add-int/lit16 v4, v4, 0x140

    goto/16 :goto_0

    :cond_17
    add-int/lit16 v4, v4, 0x14a

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_18

    add-int/lit16 v4, v4, 0x168

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object v3, v2

    add-int/lit16 v4, v4, 0x172

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :cond_19
    add-int/lit16 v4, v4, 0x17c

    goto/16 :goto_0

    :cond_1a
    if-eqz p2, :cond_21

    move-object v3, p2

    packed-switch p1, :pswitch_data_4

    add-int/lit16 v4, v4, 0x1ea

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_8
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_1c

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

    add-int/lit16 v4, v4, 0x19a

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1b
    add-int/lit16 v4, v4, 0x1a4

    goto/16 :goto_0

    :cond_1c
    add-int/lit16 v4, v4, 0x1ae

    goto/16 :goto_0

    :pswitch_9
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_1f

    if-eqz v2, :cond_1e

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move-object v3, v2

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    add-int/lit16 v4, v4, 0x1b8

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1d
    add-int/lit16 v4, v4, 0x1c2

    goto/16 :goto_0

    :cond_1e
    add-int/lit16 v4, v4, 0x1cc

    goto/16 :goto_0

    :cond_1f
    if-eqz v2, :cond_20

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move-object v3, v2

    add-int/lit16 v4, v4, 0x1d6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :cond_20
    add-int/lit16 v4, v4, 0x1e0

    goto/16 :goto_0

    :cond_21
    const-string v3, ""

    packed-switch p1, :pswitch_data_5

    add-int/lit16 v4, v4, 0x24e

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_23

    aget-object v8, v7, v9

    if-eqz v8, :cond_22

    aget-object v8, v7, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    add-int/lit16 v4, v4, 0x1fe

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_22
    add-int/lit16 v4, v4, 0x208

    goto/16 :goto_0

    :cond_23
    add-int/lit16 v4, v4, 0x212

    goto/16 :goto_0

    :pswitch_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_25

    if-eqz v2, :cond_24

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    move-object v3, v2

    add-int/lit16 v4, v4, 0x21c

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_24
    add-int/lit16 v4, v4, 0x230

    goto/16 :goto_0

    :cond_25
    if-eqz v2, :cond_26

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    move-object v3, v2

    add-int/lit16 v4, v4, 0x23a

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    :cond_26
    add-int/lit16 v4, v4, 0x244

    goto/16 :goto_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    return-void
.end method

.method private isUserDialingMergeSpecialCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "userGivenDialing"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, isSpecialCode:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v1

    .local v1, specialCode:[Ljava/lang/String;
    if-nez v0, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

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

    const/4 v0, 0x0

    .local v0, isSpecialCode:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v1

    .local v1, specialCode:[Ljava/lang/String;
    if-nez v0, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .end local v1           #specialCode:[Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

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

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .local v1, otaPrivision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v4, :cond_0

    aget v2, v1, v3

    sparse-switch v2, :sswitch_data_0

    .end local v1           #otaPrivision:[I
    :cond_0
    :goto_1
    return-void

    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v2, v3

    goto :goto_0

    .restart local v0       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v1       #otaPrivision:[I
    :sswitch_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isForOtaProvision:Z

    goto :goto_1

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

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x36

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-gtz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    const-string v0, "CDMA"

    const-string v1, "Reset pending accept flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    goto :goto_1
.end method

.method private reducedLogBoolean(Z)C
    .locals 1
    .parameter "value"

    .prologue
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

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

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

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    :cond_1
    return-void

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

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

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

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    if-eqz v1, :cond_0

    const-string v1, "phone"

    const-string v2, "acceptCall: progressing..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 3
    .parameter "dialString"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method blockCallForKddiOtasp(Z)Z
    .locals 2
    .parameter "isEmergencyCall"

    .prologue
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

    if-nez p1, :cond_0

    const-string v0, "CDMA"

    const-string v1, "canDial: false - need kddi otasp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canConference()Z
    .locals 2

    .prologue
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

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v9, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "true"

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

    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_1

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

    const-string v3, "true"

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

    :cond_1
    return v1

    .end local v1           #ret:Z
    :cond_2
    move v1, v5

    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_3
    move v3, v5

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
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, inEcm:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, isPhoneInEcmMode:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .local v1, isEmergencyCall:Z
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->blockCallForKddiOtasp(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial since kddi otasp is needed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    const/4 v3, 0x0

    .local v3, waitingForPendingMoResponse:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_4

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

    const-string v4, "CDMA"

    const-string v5, "avoid dialing twice."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    :cond_4
    :goto_1
    if-nez v3, :cond_6

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

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

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    :cond_7
    const-string v4, "CDMA"

    const-string v5, "previous dialing not yet responsed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v6, 0x41

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, p2, v6}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    goto :goto_2
.end method

.method public dispose()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirNumInfo(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForForLineControl(Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    const/4 v2, 0x0

    .local v2, eccCallSwitchPhone:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dispose()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    :cond_5
    const-string v6, "CDMA"

    const-string v7, "Remove all registrants "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    return-void

    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .restart local v3       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, " connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    if-eqz v1, :cond_2

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

    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 5
    .parameter "enable"

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .local v2, result:Z
    if-eqz p1, :cond_1

    const/high16 v3, 0x4000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    const-string v3, "MODE_IN_CALL_CDMA=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    :cond_1
    return v2

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to CDMA audio path on exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "MODE_IN_CALL_CDMA=OFF"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to CDMA audio path off exception "

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    :cond_0
    :goto_0
    return-object v1

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

    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMute()Z
    .locals 4

    .prologue
    const-string v2, "ro.board.platform"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

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
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-boolean v17, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v17, :cond_1

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

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

    :sswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    :sswitch_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .local v16, strBuf:Ljava/lang/StringBuilder;
    const-string v17, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, ", st="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v17, ", htc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v17, 0x5f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v17, 0x5f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v17, "CDMA"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    const-string v18, "2GVoiceCallEnded"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    goto/16 :goto_0

    .end local v2           #ar:Landroid/os/AsyncResult;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .end local v16           #strBuf:Ljava/lang/StringBuilder;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

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

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto :goto_3

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

    const/16 v17, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->removeMessages(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v3, 0x10

    .local v3, causeCode:I
    const-string v17, "CDMA"

    const-string v18, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, s:I
    :goto_6
    if-ge v12, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v6, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

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

    .restart local v12       #i:I
    .restart local v15       #s:I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

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

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

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

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto :goto_8

    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    goto/16 :goto_0

    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    new-instance v10, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v10}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .local v10, dc:Lcom/android/internal/telephony/DriverCall;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    const/16 v17, 0x81

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    sget v17, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    .local v7, connIdx:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v7, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v11, earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v13, lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_c
    :goto_9
    if-lez v7, :cond_d

    add-int/lit8 v7, v7, -0x1

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

    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eq v4, v11, :cond_c

    if-eq v4, v13, :cond_c

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    goto :goto_9

    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .end local v11           #earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v13           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    :cond_f
    :goto_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    :cond_11
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto :goto_b

    .end local v7           #connIdx:I
    .end local v10           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_12
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcHandleRedirectNumber([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const-string v17, "CDMA"

    const-string v18, " Accept Cdma call complete "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto/16 :goto_0

    :sswitch_d
    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_FWIM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v13       #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLineControlInfo()V

    goto/16 :goto_0

    .end local v13           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :sswitch_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .local v14, modifiedDialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz v14, :cond_0

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

    const-string v17, "CDMA"

    const-string v18, " send three way call with address"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14           #modifiedDialString:Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_END_AND_SWITCH success"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .local v8, count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_c
    if-ge v12, v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v5, con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ANSWER_AND_END_ACTIVE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .end local v5           #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/internal/telephony/cdma/CdmaConnection;

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

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v5       #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    if-eqz v5, :cond_14

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

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

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

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
    const/16 v18, 0x0

    .local v18, nrPolledCalls:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .local v19, polledCalls:Ljava/util/List;
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_1
    const/16 v17, 0x0

    .local v17, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .local v12, hasNonHangupStateChanged:Z
    const/16 v16, 0x0

    .local v16, needsPollDelay:Z
    const/16 v20, 0x0

    .local v20, unknownConnectionAppeared:Z
    const/4 v14, 0x0

    .local v14, mHtcCallCount:I
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v7, 0x0

    .local v7, curDC:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    aget-object v5, v21, v13

    .local v5, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/4 v8, 0x0

    .local v8, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v21, v0

    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_0
    :goto_3
    if-eqz v8, :cond_1

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/4 v8, 0x0

    :cond_1
    if-eqz v8, :cond_2

    add-int/lit8 v14, v14, 0x1

    :cond_2
    if-nez v5, :cond_d

    if-eqz v8, :cond_d

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

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    aput-object v22, v21, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

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

    .restart local v19       #polledCalls:Ljava/util/List;
    :cond_5
    const/16 v21, -0x1

    goto/16 :goto_0

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

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19       #polledCalls:Ljava/util/List;
    goto/16 :goto_1

    .end local v19           #polledCalls:Ljava/util/List;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_4

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

    :catch_0
    move-exception v11

    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v21, "CDMA"

    const-string v22, "unexpected error on hangup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

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

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    if-nez v17, :cond_a

    const/16 v20, 0x1

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    :cond_b
    const/4 v12, 0x1

    :cond_c
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v5, :cond_11

    if-nez v8, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    const/4 v15, 0x0

    .local v15, n:I
    :goto_6
    if-ge v15, v6, :cond_e

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

    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

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

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_f

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

    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

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

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto/16 :goto_5

    .end local v6           #count:I
    .end local v15           #n:I
    :cond_11
    if-eqz v5, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

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

    :cond_12
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move/from16 v21, v0

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    if-nez v17, :cond_13

    const/16 v20, 0x1

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto/16 :goto_5

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

    :cond_15
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

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

    .end local v3           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_18
    if-nez v14, :cond_1a

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6       #count:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_9
    if-ge v15, v6, :cond_19

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

    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

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

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .end local v6           #count:I
    .end local v15           #n:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v21, v0

    if-nez v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->endPendingMoCall(Ljava/lang/String;)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    :cond_1c
    :goto_a
    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V

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

    :try_start_1
    const-string v21, "CDMA"

    const-string v22, "critical MT -> MO:foregroundCall.hangup()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    :goto_c
    if-ltz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCollided()Z

    move-result v21

    if-eqz v21, :cond_21

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;Z)V

    :cond_1f
    :goto_d
    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_20
    const-string v21, "CDMA"

    const-string v22, "Pending MO waiting"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_1
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    const-string v21, "CDMA"

    const-string v22, "critical MT -> MO:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

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

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_22

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_d

    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_22
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_e

    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_23
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_d

    :cond_24
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_d

    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    :cond_26
    if-eqz v16, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    :cond_27
    if-nez v17, :cond_28

    if-eqz v12, :cond_29

    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection()V

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    const/4 v12, 0x1

    :cond_2b
    if-nez v12, :cond_2c

    if-eqz v17, :cond_4

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

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_2

    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_1

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
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

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

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_1

    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    :goto_1
    return-void

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

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

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

    :catch_0
    move-exception v0

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
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

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
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    return-void
.end method

.method public htcIsRingingButHaventReported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

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
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

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

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .local v1, specialCodes:[Ljava/lang/String;
    aput-object v3, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v0, 0x0

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

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    const-string v3, "INDIA_TATA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "3"

    aput-object v2, v1, v5

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    aget-object v2, v0, v4

    const-string v3, "INDIA_RELIANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "2"

    aput-object v2, v1, v7

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->isInEmergencyCall()Z

    move-result v0

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

    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "c"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    return-void

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
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

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

    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    const-string v2, "ro.board.platform"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

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
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
