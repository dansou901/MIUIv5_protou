.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_NUM_DATA_STATE_READS:I = 0xf

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_OFFLINE_ALARM:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static final mChinaOpList:Ljava/util/ArrayList;

.field static final mNeedAppendixOpList:Ljava/util/ArrayList;


# instance fields
.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsState:I

.field private isFirstNetworkStateChange:Z

.field lteCqi:I

.field lteRsrp:I

.field lteRsrq:I

.field lteRssnr:I

.field lteSignalStrength:I

.field private m2gWithDTM:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCFUFlag:Z

.field private mCgregChange:Z

.field private mCregChange:Z

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mFirstNitzGetAfterRadioOn:Z

.field mFlightModeBootup:Z

.field mGPRSNetworkType:I

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHtcContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSIMRecordsLoaded:Z

.field mIsVaildGPRS:Z

.field mIsVaildVoice:Z

.field private mLocale:Ljava/util/Locale;

.field private mMMRejectCause:I

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field private mNeedNetworkRequest:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNewMMRejectCause:I

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOperatorName:Ljava/lang/String;

.field mPreferredNetworkType:I

.field public mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mSpecialEmMode:Z

.field private mStartedGprsRegCheck:Z

.field mVoiceNetworkType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newRilCgregState:I

.field private newRilCregState:I

.field private oldRilCgregState:I

.field private oldRilCregState:I

.field operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v0

    const-string v4, "46002"

    aput-object v4, v3, v1

    const-string v4, "46007"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "45412"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "460"

    aput-object v4, v3, v0

    const-string v4, "454"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    .line 289
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v2, v6, :cond_1

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 131
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 132
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 133
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 134
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 135
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 136
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 139
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    .line 140
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 141
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    .line 142
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 143
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 145
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 155
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedNetworkRequest:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 177
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCFUFlag:Z

    .line 182
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    .line 186
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 195
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 210
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 223
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 226
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 229
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    .line 233
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 246
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 247
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 248
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 275
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 281
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildVoice:Z

    .line 282
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildGPRS:Z

    .line 283
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceNetworkType:I

    .line 284
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGPRSNetworkType:I

    .line 295
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 533
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 2431
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteSignalStrength:I

    .line 2432
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRsrp:I

    .line 2433
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRsrq:I

    .line 2434
    const v5, 0x7fffffff

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRssnr:I

    .line 2435
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteCqi:I

    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 338
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 339
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 340
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 341
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 342
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 343
    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 345
    new-instance v5, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 349
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 350
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 352
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 354
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "ServiceStateTracker"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 356
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, p0, v6, v9}, Lcom/android/internal/telephony/IccCard;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x43

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x45

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/16 v6, 0x44

    invoke-virtual {v5, p0, v6, v9}, Lcom/android/internal/telephony/IccCard;->registerForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    :cond_0
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkOffAlarm()Z

    move-result v0

    .line 389
    .local v0, alarmTriggered:Z
    :goto_0
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->airplaneModeOn(Landroid/content/Context;)V

    .line 392
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePowerState(Z)V

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 396
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time_zone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 404
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 407
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_2

    .line 412
    const-string v5, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2, v9, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 418
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 421
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleIfLanguageChanged()V

    .line 445
    const-string v5, "1"

    const-string v6, "ro.ril.emc.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    .line 446
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSpecialEmMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 454
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->initNitzTimeZoneIsValid()V

    .line 457
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x32

    if-eq v5, v6, :cond_4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_7

    .line 459
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 464
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 465
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .line 468
    :cond_5
    return-void

    .end local v0           #alarmTriggered:Z
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_6
    move v0, v4

    .line 386
    goto/16 :goto_0

    .line 422
    .restart local v0       #alarmTriggered:Z
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 423
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    goto :goto_1

    .line 461
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->airplaneModeOn(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private airplaneModeOn(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 3066
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkOffAlarm()Z

    move-result v1

    .line 3067
    .local v1, isAlarmTriggered:Z
    if-eqz v1, :cond_0

    .line 3070
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3071
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3072
    .local v0, airplaneIntent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3073
    const-string/jumbo v3, "state"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3074
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3077
    .end local v0           #airplaneIntent:Landroid/content/Intent;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private checkOffAlarm()Z
    .locals 4

    .prologue
    .line 3035
    const/4 v0, 0x0

    .line 3037
    .local v0, alarmTriggered:Z
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v1, :cond_0

    .line 3038
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOffAlarm()Z

    move-result v0

    .line 3039
    const-string v1, "GsmServiceStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmTriggered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    if-eqz v0, :cond_0

    .line 3041
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3046
    :cond_0
    return v0
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2509
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2511
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2512
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2513
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2514
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2516
    if-gez p0, :cond_0

    .line 2517
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2518
    neg-int p0, p0

    .line 2523
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2524
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2526
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2527
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2529
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2531
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2532
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2534
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2520
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2128
    move v5, p1

    .line 2129
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 2130
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 2132
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 2133
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2134
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 2135
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 2136
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 2137
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 2139
    move-object v2, v6

    .line 2144
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2135
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2738
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2741
    :goto_0
    return v1

    .line 2738
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2747
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2750
    :goto_0
    return v1

    .line 2747
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2749
    :catch_0
    move-exception v0

    .line 2750
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2119
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2121
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2124
    return-object v0

    .line 2121
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2123
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getOffAlarm()Z
    .locals 2

    .prologue
    .line 3050
    const-string v1, "dev.bootreason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, reason:Ljava/lang/String;
    const-string v1, "rtc_alarm"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private handleIfLanguageChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2826
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v3, v4, :cond_7

    .line 2827
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    .line 2828
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2831
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 2832
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    .line 2834
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4080036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2835
    .local v1, opStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 2836
    aget-object v3, v1, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2837
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2838
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    aget-object v5, v2, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2843
    .end local v0           #i:I
    .end local v1           #opStr:[Ljava/lang/String;
    .end local v2           #strArray:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 2844
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2848
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 2849
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v6, v3, :cond_6

    .line 2850
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 2863
    :cond_5
    :goto_2
    return-void

    .line 2852
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2857
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-nez v3, :cond_8

    .line 2858
    const-string v3, "GSM"

    const-string v4, "No HTC Context was loaded!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2860
    :cond_8
    const-string v3, "GSM"

    const-string v4, "Language is not changed, leave as what it was!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleImsRadioReset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3208
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerStateToDesired: mDesiredPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 3211
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v2, :cond_0

    .line 3212
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataConnectionAsDesired: mDesiredPowerState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    if-eqz v0, :cond_0

    .line 3214
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 3219
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_3

    .line 3221
    const-string v2, "GSM"

    const-string v3, "handleImsRadioReset() turn radio on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v1

    .line 3224
    .local v1, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v1, :cond_2

    .line 3226
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 3228
    invoke-virtual {v1, v6, v5, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 3247
    .end local v1           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_1
    :goto_0
    return-void

    .line 3232
    .restart local v1       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 3236
    .end local v1           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 3239
    const-string v2, "GSM"

    const-string v3, "handleImsRadioReset() turn radio on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 4
    .parameter "currRadioState"

    .prologue
    .line 3251
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v0

    .line 3255
    .local v0, needToClearCache:Z
    if-eqz v0, :cond_2

    .line 3256
    move-object v1, p1

    .line 3257
    .local v1, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    if-nez v1, :cond_0

    .line 3258
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 3260
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_2

    .line 3262
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 3263
    const-string v2, "gsm.cdma.pri.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    .end local v1           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    return-void
.end method

.method private initNitzTimeZoneIsValid()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3131
    const-string v0, "gsm.timezone.isvalid"

    .line 3132
    .local v0, KEY_TIME_ZONE_IS_VALID:Ljava/lang/String;
    const-string v2, "gsm.timezone.isvalid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3134
    .local v1, timezoneIsValid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3135
    invoke-direct {p0, v4, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 3137
    :cond_0
    return-void
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 2110
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedDiscardNitzInforamtion(Ljava/lang/String;J)Z
    .locals 12
    .parameter "nitz"
    .parameter "currentNitzUtcTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3159
    const-wide/32 v0, 0x927c0

    .line 3161
    .local v0, TIME_NEED_TO_DISCARD_NITZ:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3164
    .local v4, systemCurrentUtcTime:J
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    if-nez v8, :cond_1

    .line 3165
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 3166
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NITZ: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was apply ==> First get NITZ after radio on"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    :cond_0
    :goto_0
    return v6

    .line 3171
    :cond_1
    const/4 v3, 0x0

    .line 3173
    .local v3, isTestIcc:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3178
    :goto_1
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedDiscardNitzInforamtion - isTestIcc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    if-nez v3, :cond_0

    .line 3184
    sub-long v8, p2, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x927c0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 3186
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NITZ: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was discard ==> currentNitzUtcTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,and systemCurrentUtcTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    move v6, v7

    .line 3191
    goto :goto_0

    .line 3174
    :catch_0
    move-exception v2

    .line 3175
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "GSM"

    const-string v9, "checkTestIcc fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2445
    const-string v10, "gsm.sim.operator.alpha"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2447
    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 2448
    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 2450
    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .line 2451
    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .line 2453
    .local v2, equalsOnss:Z
    :goto_1
    const-string v10, "gsm.sim.operator.numeric"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2455
    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2457
    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2459
    .local v0, equalsMcc:Z
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2464
    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v9

    .line 2450
    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v9

    .line 2451
    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v9

    .line 2464
    goto :goto_3

    .line 2461
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2277
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 2279
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2281
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 2282
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 2283
    .local v0, ints:[I
    aget v2, v0, v4

    .line 2285
    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2289
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_2

    .line 2290
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2293
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 2297
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2299
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2300
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2301
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2312
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2313
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2315
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2360
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2362
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2363
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_6
    move v3, v4

    .line 2285
    goto :goto_0

    :cond_7
    move v3, v4

    .line 2290
    goto :goto_1

    :cond_8
    move v5, v4

    .line 2293
    goto :goto_2

    .line 2302
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2303
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2304
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 2316
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2318
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2319
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2321
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2323
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2325
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2327
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2328
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2330
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2331
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2333
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2335
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2337
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2339
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2340
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2342
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2343
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2345
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2348
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2350
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2351
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2353
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2354
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2356
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 24
    .parameter "ar"

    .prologue
    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    .line 2171
    .local v23, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v2, 0x63

    .line 2172
    .local v2, rssi:I
    const/4 v9, -0x1

    .line 2173
    .local v9, lteSignalStrength:I
    const/4 v10, -0x1

    .line 2174
    .local v10, lteRsrp:I
    const/4 v11, -0x1

    .line 2175
    .local v11, lteRsrq:I
    const/4 v12, -0x1

    .line 2176
    .local v12, lteRssnr:I
    const/4 v13, -0x1

    .line 2178
    .local v13, lteCqi:I
    const/16 v17, -0x1

    .line 2179
    .local v17, htcLteRsrp:I
    const/16 v18, -0x1

    .line 2180
    .local v18, htcLteRsrq:I
    const/16 v14, 0x63

    .line 2181
    .local v14, signalDbm:I
    const/4 v15, -0x1

    .line 2182
    .local v15, ecno:I
    const/16 v21, 0x0

    .line 2185
    .local v21, extraInfo:Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 2188
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2244
    :cond_0
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v16, -0x1

    const/16 v19, 0x1

    invoke-direct/range {v1 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    if-lez v1, :cond_f

    .line 2250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_f

    .line 2252
    const-string v1, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSFB, ignore signal strength here, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_1
    :goto_1
    return-void

    .line 2190
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v22, v1

    check-cast v22, [I

    .line 2193
    .local v22, ints:[I
    move-object/from16 v0, v22

    array-length v1, v0

    if-eqz v1, :cond_8

    .line 2194
    const/4 v1, 0x0

    aget v2, v22, v1

    .line 2203
    const/4 v1, 0x7

    aget v1, v22, v1

    if-lez v1, :cond_3

    const/4 v1, 0x7

    aget v9, v22, v1

    .line 2204
    :goto_2
    const/16 v1, 0x8

    aget v1, v22, v1

    if-lez v1, :cond_4

    const/16 v1, 0x8

    aget v10, v22, v1

    .line 2205
    :goto_3
    const/16 v1, 0x9

    aget v1, v22, v1

    if-lez v1, :cond_5

    const/16 v1, 0x9

    aget v11, v22, v1

    .line 2206
    :goto_4
    const/16 v1, 0xa

    aget v1, v22, v1

    if-lez v1, :cond_6

    const/16 v1, 0xa

    aget v12, v22, v1

    .line 2207
    :goto_5
    const/16 v1, 0xb

    aget v1, v22, v1

    if-lez v1, :cond_7

    const/16 v1, 0xb

    aget v13, v22, v1

    .line 2215
    :goto_6
    move-object/from16 v0, v22

    array-length v1, v0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 2216
    const/16 v21, 0x1

    .line 2227
    const/4 v1, 0x7

    aget v1, v22, v1

    if-lez v1, :cond_9

    const/4 v1, 0x7

    aget v14, v22, v1

    .line 2228
    :goto_7
    const/16 v1, 0x8

    aget v1, v22, v1

    if-lez v1, :cond_a

    const/16 v1, 0x8

    aget v15, v22, v1

    .line 2229
    :goto_8
    const/16 v1, 0x9

    aget v1, v22, v1

    if-lez v1, :cond_b

    const/16 v1, 0x9

    aget v9, v22, v1

    .line 2230
    :goto_9
    const/16 v1, 0xa

    aget v1, v22, v1

    if-lez v1, :cond_c

    const/16 v1, 0xa

    aget v1, v22, v1

    mul-int/lit8 v10, v1, -0x1

    .line 2231
    :goto_a
    const/16 v1, 0xb

    aget v1, v22, v1

    if-lez v1, :cond_d

    const/16 v1, 0xb

    aget v1, v22, v1

    mul-int/lit8 v11, v1, -0x1

    .line 2232
    :goto_b
    const/16 v1, 0xc

    aget v12, v22, v1

    .line 2233
    const/16 v1, 0xd

    aget v1, v22, v1

    if-lez v1, :cond_e

    const/16 v1, 0xd

    aget v13, v22, v1

    .line 2234
    :goto_c
    mul-int/lit8 v17, v10, -0x1

    .line 2235
    mul-int/lit8 v18, v11, -0x1

    goto/16 :goto_0

    .line 2203
    :cond_3
    const/4 v9, -0x1

    goto :goto_2

    .line 2204
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 2205
    :cond_5
    const/4 v11, -0x1

    goto :goto_4

    .line 2206
    :cond_6
    const/4 v12, -0x1

    goto :goto_5

    .line 2207
    :cond_7
    const/4 v13, -0x1

    goto :goto_6

    .line 2210
    :cond_8
    const-string v1, "Bogus signal strength response"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2211
    const/16 v2, 0x63

    goto :goto_6

    .line 2227
    :cond_9
    const/4 v14, -0x1

    goto :goto_7

    .line 2228
    :cond_a
    const/4 v15, -0x1

    goto :goto_8

    .line 2229
    :cond_b
    const/4 v9, -0x1

    goto :goto_9

    .line 2230
    :cond_c
    const/16 v1, 0xa

    aget v10, v22, v1

    goto :goto_a

    .line 2231
    :cond_d
    const/16 v1, 0xb

    aget v11, v22, v1

    goto :goto_b

    .line 2233
    :cond_e
    const/4 v13, -0x1

    goto :goto_c

    .line 2258
    .end local v22           #ints:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2262
    :catch_0
    move-exception v20

    .line 2263
    .local v20, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1584
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 1589
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceNetworkType:I

    .line 1590
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGPRSNetworkType:I

    .line 1591
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildVoice:Z

    .line 1592
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildGPRS:Z

    .line 1596
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1651
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1663
    :goto_0
    return-void

    .line 1598
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1600
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1601
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1602
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1603
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1607
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1610
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1612
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 1615
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 1617
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 1620
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1621
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 39

    .prologue
    .line 1667
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v34

    if-eqz v34, :cond_1

    sget-boolean v34, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v34, :cond_1

    .line 1668
    const-string v34, "GSM"

    const-string v35, " pollStateDone drop event "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkType()V

    .line 1679
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] newSS=["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] oldGprs="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " newData="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " oldMaxDataCalls="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " mNewMaxDataCalls="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " oldReasonDataDenied="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " mNewReasonDataDenied="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " oldType="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " newType="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    if-eqz v34, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    if-nez v34, :cond_1c

    const/16 v16, 0x1

    .line 1695
    .local v16, hasRegistered:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v34

    if-eqz v34, :cond_3

    .line 1697
    if-nez v16, :cond_2

    .line 1699
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    if-nez v34, :cond_2

    .line 1700
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set the hasRegistered ="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "due to there has network change during poll state"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/16 v16, 0x1

    .line 1704
    :cond_2
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 1705
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "reset the mCregChange ="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    if-nez v34, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    if-eqz v34, :cond_1d

    const/4 v10, 0x1

    .line 1712
    .local v10, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    if-eqz v34, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    if-nez v34, :cond_1e

    const/4 v11, 0x1

    .line 1717
    .local v11, hasGprsAttached:Z
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v34

    if-eqz v34, :cond_5

    .line 1719
    if-nez v11, :cond_4

    .line 1721
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    if-nez v34, :cond_4

    .line 1722
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set the hasGprsAttached ="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "due to there has network change during poll state"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v11, 0x1

    .line 1726
    :cond_4
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    .line 1727
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "reset the mCgregChange ="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    if-nez v34, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    if-eqz v34, :cond_1f

    const/4 v12, 0x1

    .line 1735
    .local v12, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_20

    const/4 v15, 0x1

    .line 1737
    .local v15, hasRadioTechnologyChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_21

    const/4 v8, 0x1

    .line 1739
    .local v8, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v34

    if-nez v34, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v34

    if-eqz v34, :cond_22

    const/16 v18, 0x1

    .line 1741
    .local v18, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v34

    if-eqz v34, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v34

    if-nez v34, :cond_23

    const/16 v17, 0x1

    .line 1743
    .local v17, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_24

    const/4 v13, 0x1

    .line 1746
    .local v13, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_7

    .line 1747
    :cond_6
    const v34, 0xc3c2

    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1752
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_25

    const/4 v14, 0x1

    .line 1756
    .local v14, hasMMRejectChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v34

    const/16 v35, 0xe

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v34

    const/16 v35, 0xe

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_26

    const/4 v9, 0x1

    .line 1761
    .local v9, hasCsfbForLTE:Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    .line 1762
    .local v29, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1763
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    .line 1768
    .local v27, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1769
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1774
    if-eqz v15, :cond_9

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1779
    const/4 v6, -0x1

    .line 1780
    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v21

    check-cast v21, Landroid/telephony/gsm/GsmCellLocation;

    .line 1781
    .local v21, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1782
    :cond_8
    const v34, 0xc3c0

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1785
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RAT switched "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " -> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " at cell "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1791
    .end local v6           #cid:I
    .end local v21           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    .line 1796
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1802
    if-eqz v14, :cond_a

    .line 1803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    .line 1804
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "MM Reject Cause: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " hasChanged: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v37, v0

    aput v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMMLocationUpdateInfo([I)V

    .line 1806
    if-nez v8, :cond_a

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 1812
    :cond_a
    if-eqz v15, :cond_b

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 1817
    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0xad

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x2b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x64

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x1d

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x1e

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x43

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    sget-short v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v35, 0x1fe

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_b
    if-eqz v9, :cond_c

    .line 1839
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CSFB, notify signal strength again here, "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    :cond_c
    :goto_c
    if-eqz v16, :cond_d

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1854
    :cond_d
    if-eqz v10, :cond_e

    .line 1855
    const-string v34, ""

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string v35, "airplane_mode_on"

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    if-nez v34, :cond_27

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->processRestartManualNetworkSelection()V

    .line 1866
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    .line 1869
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " changing to false"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1872
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1876
    :cond_e
    if-eqz v8, :cond_14

    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 1890
    const-string v34, "gsm.operator.numeric"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1892
    .local v25, prevOperatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 1893
    .local v24, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.numeric"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_28

    .line 1900
    :cond_f
    const-string v34, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.iso-country"

    const-string v36, ""

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v34, ""

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 1903
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1904
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1928
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2a

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2a

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z

    move-result v19

    .line 1939
    .local v19, isTestIcc:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_10

    if-eqz v19, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v34, v0

    if-eqz v34, :cond_12

    .line 1940
    const/16 v32, 0x0

    .line 1944
    .local v32, zone:Ljava/util/TimeZone;
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "fixTimeZone mOPERATOR_ISO_COUNTRY: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mZoneOffset: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " mZoneDst: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " mZoneTime:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " isTestIcc:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v34, "persist.sys.timezone"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1948
    .local v33, zoneName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1949
    .local v23, needLaunchTimeZonePicker:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v34, v0

    if-nez v34, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v34, v0

    if-nez v34, :cond_2d

    if-eqz v33, :cond_2d

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_2d

    sget-object v34, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v34

    if-gez v34, :cond_2d

    .line 1953
    if-eqz v19, :cond_2b

    .line 1954
    const-string v34, "UTC"

    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1959
    :goto_10
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mZoneOffset:0, mZoneDst:false, zoneName != null, zone:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 1966
    .local v30, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v34

    if-eqz v34, :cond_2c

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1994
    .end local v30           #tzOffset:J
    :goto_11
    if-eqz v32, :cond_31

    .line 1995
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "fixTimeZone is done zone:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 1998
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "pollStateDone AUTO_TIME_ZONE update time zone: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2002
    :cond_11
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2003
    if-eqz v23, :cond_30

    .line 2004
    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 2008
    :goto_12
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2015
    .end local v23           #needLaunchTimeZonePicker:Z
    .end local v32           #zone:Ljava/util/TimeZone;
    .end local v33           #zoneName:Ljava/lang/String;
    :cond_12
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v34

    if-eqz v34, :cond_32

    const-string/jumbo v34, "true"

    :goto_14
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    .line 2025
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v34

    if-nez v34, :cond_13

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2027
    .local v26, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v26, :cond_13

    .line 2028
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    .line 2035
    .end local v26           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2037
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v34

    if-eqz v34, :cond_14

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 2043
    .end local v19           #isTestIcc:Z
    .end local v24           #operatorNumeric:Ljava/lang/String;
    .end local v25           #prevOperatorNumeric:Ljava/lang/String;
    :cond_14
    if-eqz v11, :cond_15

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2047
    :cond_15
    if-eqz v12, :cond_16

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2056
    :cond_16
    if-nez v15, :cond_17

    if-eqz v11, :cond_18

    .line 2058
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "nwTypeChanged"

    const-string v36, "*"

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_18
    if-eqz v18, :cond_19

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2065
    :cond_19
    if-eqz v17, :cond_1a

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2069
    :cond_1a
    if-eqz v13, :cond_1b

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 2073
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v34

    if-nez v34, :cond_33

    .line 2074
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v34, v0

    if-nez v34, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v34, v0

    if-nez v34, :cond_0

    .line 2075
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string v35, "gprs_register_check_period_ms"

    const v36, 0xea60

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2081
    .local v5, check_period:I
    const/16 v34, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    int-to-long v0, v5

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1690
    .end local v5           #check_period:I
    .end local v8           #hasChanged:Z
    .end local v9           #hasCsfbForLTE:Z
    .end local v10           #hasDeregistered:Z
    .end local v11           #hasGprsAttached:Z
    .end local v12           #hasGprsDetached:Z
    .end local v13           #hasLocationChanged:Z
    .end local v14           #hasMMRejectChanged:Z
    .end local v15           #hasRadioTechnologyChanged:Z
    .end local v16           #hasRegistered:Z
    .end local v17           #hasRoamingOff:Z
    .end local v18           #hasRoamingOn:Z
    .end local v27           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v29           #tss:Landroid/telephony/ServiceState;
    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1708
    .restart local v16       #hasRegistered:Z
    :cond_1d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1712
    .restart local v10       #hasDeregistered:Z
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1731
    .restart local v11       #hasGprsAttached:Z
    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1735
    .restart local v12       #hasGprsDetached:Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1737
    .restart local v15       #hasRadioTechnologyChanged:Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1739
    .restart local v8       #hasChanged:Z
    :cond_22
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 1741
    .restart local v18       #hasRoamingOn:Z
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1743
    .restart local v17       #hasRoamingOff:Z
    :cond_24
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 1752
    .restart local v13       #hasLocationChanged:Z
    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1756
    .restart local v14       #hasMMRejectChanged:Z
    :cond_26
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 1842
    .restart local v9       #hasCsfbForLTE:Z
    .restart local v27       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v29       #tss:Landroid/telephony/ServiceState;
    :catch_0
    move-exception v7

    .line 1843
    .local v7, ex:Ljava/lang/NullPointerException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "SignalStrength not notified"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1861
    .end local v7           #ex:Ljava/lang/NullPointerException;
    :cond_27
    const-string v34, "GSM"

    const-string v35, "device has deregistered due to airplane on"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1898
    .restart local v24       #operatorNumeric:Ljava/lang/String;
    .restart local v25       #prevOperatorNumeric:Ljava/lang/String;
    :cond_28
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_f

    .line 1906
    const-string v20, ""

    .line 1907
    .local v20, iso:Ljava/lang/String;
    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1909
    .local v22, mcc:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    .line 1916
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.iso-country"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 1920
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_29

    const/16 v34, 0x1

    :goto_16
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto/16 :goto_e

    .line 1910
    :catch_1
    move-exception v7

    .line 1911
    .local v7, ex:Ljava/lang/NumberFormatException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_15

    .line 1912
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v7

    .line 1913
    .local v7, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_15

    .line 1920
    .end local v7           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_29
    const/16 v34, 0x0

    goto :goto_16

    .line 1932
    .end local v20           #iso:Ljava/lang/String;
    .end local v22           #mcc:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1956
    .restart local v19       #isTestIcc:Z
    .restart local v23       #needLaunchTimeZonePicker:Z
    .restart local v32       #zone:Ljava/util/TimeZone;
    .restart local v33       #zoneName:Ljava/lang/String;
    :cond_2b
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v32

    .line 1957
    const/16 v23, 0x1

    goto/16 :goto_10

    .line 1970
    .restart local v30       #tzOffset:J
    :cond_2c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v34, v0

    sub-long v34, v34, v30

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto/16 :goto_11

    .line 1972
    .end local v30           #tzOffset:J
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, ""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2f

    .line 1976
    const-string v28, "001"

    .line 1977
    .local v28, testOperatorMCC:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_2e

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2e

    .line 1979
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "test operator :"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " for iso is empty"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v36, v0

    const-string/jumbo v38, "us"

    invoke-static/range {v34 .. v38}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1982
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    goto/16 :goto_11

    .line 1984
    :cond_2e
    const-string v34, "GSM"

    const-string/jumbo v35, "to figure out time zone in no iso case"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v32

    .line 1986
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    goto/16 :goto_11

    .line 1990
    .end local v28           #testOperatorMCC:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v34 .. v38}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    goto/16 :goto_11

    .line 2006
    :cond_30
    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    goto/16 :goto_12

    .line 2010
    :cond_31
    const-string v34, "GSM"

    const-string v35, "fixTimeZone zone is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    goto/16 :goto_13

    .line 2015
    .end local v23           #needLaunchTimeZonePicker:Z
    .end local v32           #zone:Ljava/util/TimeZone;
    .end local v33           #zoneName:Ljava/lang/String;
    :cond_32
    const-string v34, "false"

    goto/16 :goto_14

    .line 2085
    .end local v19           #isTestIcc:Z
    .end local v24           #operatorNumeric:Ljava/lang/String;
    .end local v25           #prevOperatorNumeric:Ljava/lang/String;
    :cond_33
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_0
.end method

.method private processIfDTMCase(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    .line 3085
    move v0, p1

    .line 3086
    .local v0, resultType:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 3088
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 3089
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 3090
    const/4 v0, 0x1

    .line 3112
    :cond_0
    :goto_0
    return v0

    .line 3091
    :cond_1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 3092
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 3093
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private queryCFUIfNecessary()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2093
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cfu_query_when_campon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 2095
    .local v0, cfuQuery:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v0, v1, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2100
    :cond_0
    return-void

    .end local v0           #cfuQuery:Z
    :cond_1
    move v0, v2

    .line 2093
    goto :goto_0
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 2148
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2156
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2157
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2162
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 2429
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2367
    packed-switch p1, :pswitch_data_0

    .line 2412
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2413
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 2375
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2378
    goto :goto_0

    .line 2384
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2387
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2396
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2399
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 2403
    goto :goto_0

    .line 2407
    :pswitch_7
    const-string v0, "GSM"

    const-string/jumbo v2, "special emergency state with +CREG:15"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2408
    goto :goto_0

    .line 2367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 2799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2811
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2807
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 2808
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2822
    :cond_0
    :goto_0
    return-void

    .line 2818
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2759
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2761
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2756
    return-void
.end method

.method private sendNewtworkSelection()V
    .locals 4

    .prologue
    .line 3275
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedNetworkRequest:Z

    .line 3278
    const/4 v0, 0x0

    .line 3280
    .local v0, needToSendRequest:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3282
    const/4 v0, 0x1

    .line 3286
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v1

    .line 3287
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3288
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_2

    .line 3291
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearNetworkSelection()V

    .line 3294
    :cond_2
    const/4 v0, 0x1

    .line 3301
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 3302
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 3305
    :cond_4
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2791
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2793
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2794
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2795
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2796
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2771
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2773
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2774
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2775
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2776
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2777
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2782
    return-void
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 2927
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd1

    if-eq v6, v7, :cond_1

    .line 2929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2930
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2932
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2933
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2934
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2935
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2936
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2937
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2940
    const-string v1, ""

    .line 2941
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400ee

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2942
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2944
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2966
    :goto_0
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2967
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2968
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2971
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2974
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_2

    .line 2976
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2982
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notificationId:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return-void

    .line 2946
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #details:Ljava/lang/CharSequence;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #notificationId:I
    .restart local v5       #title:Ljava/lang/CharSequence;
    :pswitch_1
    const/16 v3, 0x378

    .line 2947
    const v6, 0x10400ef

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2948
    goto :goto_0

    .line 2950
    :pswitch_2
    const/16 v3, 0x378

    .line 2951
    goto :goto_0

    .line 2953
    :pswitch_3
    const v6, 0x10400f2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2954
    goto :goto_0

    .line 2956
    :pswitch_4
    const v6, 0x10400f1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2957
    goto :goto_0

    .line 2959
    :pswitch_5
    const v6, 0x10400f0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2960
    goto :goto_0

    .line 2979
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2944
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 20

    .prologue
    .line 1572
    new-instance v1, Landroid/telephony/SignalStrength;

    const/16 v2, 0x63

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x1

    invoke-direct/range {v1 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1573
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 34
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 2545
    .local v23, start:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " start="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " delay="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v23, p2

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2552
    :try_start_0
    const-string v29, "GMT"

    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 2554
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 2555
    const/16 v29, 0x10

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2557
    const-string v29, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2559
    .local v20, nitzSubs:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v27, v0

    .line 2560
    .local v27, year:I
    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2563
    const/16 v29, 0x1

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v19, v29, -0x1

    .line 2564
    .local v19, month:I
    const/16 v29, 0x2

    move/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2566
    const/16 v29, 0x2

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2567
    .local v6, date:I
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 2569
    const/16 v29, 0x3

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2570
    .local v12, hour:I
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 2572
    const/16 v29, 0x4

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2573
    .local v18, minute:I
    const/16 v29, 0xc

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2575
    const/16 v29, 0x5

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2576
    .local v21, second:I
    const/16 v29, 0xd

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2578
    const/16 v29, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    .line 2580
    .local v22, sign:Z
    :goto_0
    const/16 v29, 0x6

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2582
    .local v25, tzOffset:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    const/16 v29, 0x7

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2592
    .local v7, dst:I
    :goto_1
    if-eqz v22, :cond_3

    const/16 v29, 0x1

    :goto_2
    mul-int v29, v29, v25

    mul-int/lit8 v29, v29, 0xf

    mul-int/lit8 v29, v29, 0x3c

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    .line 2594
    const/16 v28, 0x0

    .line 2600
    .local v28, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 2601
    const/16 v29, 0x8

    aget-object v29, v20, v29

    const/16 v30, 0x21

    const/16 v31, 0x2f

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v26

    .line 2602
    .local v26, tzname:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    .line 2607
    .end local v26           #tzname:Ljava/lang/String;
    :cond_0
    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x3e

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 2608
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNeedDiscardNitzInforamtion(Ljava/lang/String;J)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 2734
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v12           #hour:I
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v25           #tzOffset:I
    .end local v27           #year:I
    .end local v28           #zone:Ljava/util/TimeZone;
    :goto_3
    return-void

    .line 2578
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v12       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v27       #year:I
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 2582
    .restart local v22       #sign:Z
    .restart local v25       #tzOffset:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2592
    .restart local v7       #dst:I
    :cond_3
    const/16 v29, -0x1

    goto :goto_2

    .line 2614
    .restart local v28       #zone:Ljava/util/TimeZone;
    :cond_4
    const-string v29, "gsm.operator.iso-country"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2615
    .local v15, iso:Ljava/lang/String;
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "get ISO: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mGotCountryCode: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mOPERATOR_ISO_COUNTRY: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    if-nez v28, :cond_5

    .line 2618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 2619
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_c

    .line 2620
    if-eqz v7, :cond_b

    const/16 v29, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move/from16 v0, v25

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3, v15}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 2640
    :cond_5
    :goto_5
    const/4 v14, 0x0

    .line 2642
    .local v14, isTestIcc:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 2646
    :goto_6
    if-nez v28, :cond_6

    if-eqz v14, :cond_6

    .line 2647
    :try_start_2
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "isTestIcc: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    if-eqz v7, :cond_10

    const/16 v29, 0x1

    :goto_7
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v28

    .line 2652
    :cond_6
    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v30, v0

    if-eqz v7, :cond_11

    const/16 v29, 0x1

    :goto_8
    move/from16 v0, v30

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 2657
    :cond_7
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2658
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2659
    if-eqz v7, :cond_12

    const/16 v29, 0x1

    :goto_9
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2660
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2663
    :cond_8
    if-eqz v28, :cond_a

    .line 2664
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 2666
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setTimeFromNITZString AUTO_TIME update time zone: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 2669
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2671
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2674
    :cond_a
    const-string v29, "gsm.ignore-nitz"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2675
    .local v13, ignore:Ljava/lang/String;
    if-eqz v13, :cond_13

    const-string/jumbo v29, "yes"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 2676
    const-string v29, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2731
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v12           #hour:I
    .end local v13           #ignore:Ljava/lang/String;
    .end local v14           #isTestIcc:Z
    .end local v15           #iso:Ljava/lang/String;
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v25           #tzOffset:I
    .end local v27           #year:I
    .end local v28           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v11

    .line 2732
    .local v11, ex:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ex="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2620
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v12       #hour:I
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v22       #sign:Z
    .restart local v25       #tzOffset:I
    .restart local v27       #year:I
    .restart local v28       #zone:Ljava/util/TimeZone;
    :cond_b
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 2624
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_e

    .line 2625
    if-eqz v7, :cond_d

    const/16 v29, 0x1

    :goto_a
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v32, v0

    move/from16 v0, v25

    move/from16 v1, v29

    move-wide/from16 v2, v30

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_5

    :cond_d
    const/16 v29, 0x0

    goto :goto_a

    .line 2634
    :cond_e
    if-eqz v7, :cond_f

    const/16 v29, 0x1

    :goto_b
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_5

    :cond_f
    const/16 v29, 0x0

    goto :goto_b

    .line 2643
    .restart local v14       #isTestIcc:Z
    :catch_1
    move-exception v8

    .line 2644
    .local v8, e:Ljava/lang/Exception;
    const-string v29, "GSM"

    const-string v30, "checkTestIcc fail"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 2648
    .end local v8           #e:Ljava/lang/Exception;
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2652
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 2659
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 2681
    .restart local v13       #ignore:Ljava/lang/String;
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2683
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v29

    if-eqz v29, :cond_16

    .line 2684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v16, v29, p2

    .line 2687
    .local v16, millisSinceNitzReceived:J
    const-wide/16 v29, 0x0

    cmp-long v29, v16, v29

    if-gez v29, :cond_14

    .line 2690
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2729
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 2697
    :cond_14
    const-wide/32 v29, 0x7fffffff

    cmp-long v29, v16, v29

    if-lez v29, :cond_15

    .line 2700
    :try_start_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/32 v30, 0x5265c00

    div-long v30, v16, v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " days"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2729
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 2708
    :cond_15
    const/16 v29, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v30, v0

    :try_start_8
    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 2711
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: Setting time of day to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " NITZ receive delay(ms): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " gained(ms): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " from "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2719
    const-string v29, "GSM"

    const-string v30, "NITZ: after Setting time of day"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    .end local v16           #millisSinceNitzReceived:J
    :cond_16
    const-string v29, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 2724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2725
    .local v9, end:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: end="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " dur="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v9, v23

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2727
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2729
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    .end local v9           #end:J
    :catchall_0
    move-exception v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v29
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2994
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    return-void
.end method

.method private triggerTimezonePicker()V
    .locals 5

    .prologue
    .line 3118
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3119
    .local v1, context:Landroid/content/Context;
    const-string v0, "htc.intent.action.timezone_picker"

    .line 3120
    .local v0, ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "htc.intent.action.timezone_picker"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3122
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 3123
    const-string v3, "GSM"

    const-string/jumbo v4, "triggerTimezonePicker"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3128
    :goto_0
    return-void

    .line 3126
    :cond_0
    const-string v3, "GSM"

    const-string/jumbo v4, "triggerTimezonePicker fail, context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2470
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2471
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2473
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2475
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2478
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 3312
    const/4 v0, 0x0

    .line 3313
    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildGPRS:Z

    if-eqz v1, :cond_1

    .line 3314
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGPRSNetworkType:I

    .line 3318
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIfDTMCase(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 3319
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 3320
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    .line 3321
    return-void

    .line 3315
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildVoice:Z

    if-eqz v1, :cond_0

    .line 3316
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceNetworkType:I

    goto :goto_0
.end method

.method private updateNitzTimeZoneIsValid(ZZ)V
    .locals 4
    .parameter "isValid"
    .parameter "needNotifyTimeZonePicker"

    .prologue
    .line 3140
    const-string v0, "gsm.timezone.isvalid"

    .line 3142
    .local v0, KEY_TIME_ZONE_IS_VALID:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNitzTimeZoneIsValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "needNotifyTimeZonePicker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    const-string v2, "gsm.timezone.isvalid"

    if-eqz p1, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    if-eqz p2, :cond_0

    .line 3148
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->triggerTimezonePicker()V

    .line 3155
    :cond_0
    return-void

    .line 3145
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method private updateOperatorInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2870
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_8

    .line 2871
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v3, v5, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 2872
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_5

    move v2, v3

    .line 2874
    .local v2, showSpn:Z
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v7, :cond_6

    move v1, v3

    .line 2879
    .local v1, showPlmn:Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2880
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2881
    const/4 v1, 0x0

    .line 2885
    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v3, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v3, v7, :cond_2

    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-eq v3, v5, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xda

    if-ne v3, v5, :cond_3

    .line 2891
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, operatorNumeric:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2895
    const/4 v2, 0x0

    .line 2896
    const/4 v1, 0x1

    .line 2901
    .end local v0           #operatorNumeric:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .end local v2           #showSpn:Z
    :cond_4
    iput-boolean v2, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2902
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2903
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 2904
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 2914
    .end local v1           #showPlmn:Z
    :goto_3
    const-string v3, "GSM"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    return-void

    :cond_5
    move v2, v4

    .line 2872
    goto/16 :goto_0

    .restart local v2       #showSpn:Z
    :cond_6
    move v1, v4

    .line 2874
    goto/16 :goto_1

    .end local v2           #showSpn:Z
    .restart local v1       #showPlmn:Z
    :cond_7
    move v4, v1

    .line 2902
    goto :goto_2

    .line 2906
    .end local v1           #showPlmn:Z
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 2907
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2908
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2909
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 2910
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_3
.end method

.method private updatePowerState(Z)V
    .locals 5
    .parameter "alarmTriggered"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3056
    if-ne v2, p1, :cond_0

    move v0, v2

    .line 3061
    .local v0, airplaneMode:I
    :goto_0
    if-gtz v0, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 3062
    if-lez v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    .line 3063
    return-void

    .line 3056
    .end local v0           #airplaneMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .restart local v0       #airplaneMode:I
    :cond_1
    move v1, v3

    .line 3061
    goto :goto_1

    :cond_2
    move v2, v3

    .line 3062
    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 472
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 473
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 478
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 479
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForReady(Landroid/os/Handler;)V

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;)V

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardProxy;

    .line 492
    .local v0, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 503
    .end local v0           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 508
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 518
    :cond_1
    return-void

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 497
    .local v1, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2999
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " gprsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newGPRSState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedToRegForSimLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpnRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 521
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 2490
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2486
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    return-object v0
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    const-string v0, "gsm.cdma.pri.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Not ready"

    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 560
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_1

    sget-boolean v22, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v22, :cond_1

    .line 561
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " GsmServiceTracker drop event "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 572
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Received message "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] while being destroyed. Ignoring."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 971
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 583
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->WPHONE_UI_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 585
    const-string v22, "Receive EVENT_RADIO_AVAILABLE and send EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 603
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IccCardProxy;

    .line 605
    .local v8, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v8, :cond_3

    .line 606
    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 617
    .end local v8           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_3
    :goto_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 621
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 623
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendNewtworkSelection()V

    .line 638
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 653
    const-string v22, "SIM READY, notify data connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const-string v23, "nwTypeChanged"

    const-string v24, "*"

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 611
    .local v18, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v18, :cond_3

    .line 612
    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 659
    .end local v18           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 660
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 661
    const-string v22, "EVENT_RIL_CDMA_RS_INFO:CDMA Info ar.result == null."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :cond_8
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 663
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 664
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EVENT_RIL_CDMA_RS_INFO:version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mobile_sw_version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->mobile_sw_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " esn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " prl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " pre_only:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " imsi:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " customer_id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->customer_id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " prl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 675
    .local v21, unifiedPRIversion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 677
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 679
    :cond_9
    const-string v22, "gsm.cdma.pri.version"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    .end local v21           #unifiedPRIversion:Ljava/lang/String;
    :cond_a
    const-string v22, "EVENT_RIL_CDMA_RS_INFO:No this section!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EVENT_RADIO_STATE_CHANGED Radio State: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v22

    if-nez v22, :cond_b

    .line 705
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedNetworkRequest:Z

    .line 709
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    .line 714
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsFlightModeRequest:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 720
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 717
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleImsRadioReset()V

    goto :goto_2

    .line 725
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 726
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 727
    iget-object v4, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 728
    .local v4, appState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "AppState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    sget-object v22, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_e

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendNewtworkSelection()V

    goto/16 :goto_0

    .line 731
    :cond_e
    sget-object v22, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_0

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendNewtworkSelection()V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    goto/16 :goto_0

    .line 738
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedNetworkRequest:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 739
    const-string v22, "GSM"

    const-string v23, "mNeedNetworkRequest is true."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendNewtworkSelection()V

    goto/16 :goto_0

    .line 750
    .end local v4           #appState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 752
    const-string v22, "ril.notify.regstatus"

    const-string v23, "-1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 753
    .local v17, rilCregState:Ljava/lang/String;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rilCregState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v22, "ril.notify.gprsregstatus"

    const-string v23, "-1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 755
    .local v16, rilCgregState:Ljava/lang/String;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rilCgregState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 758
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 759
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 760
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 775
    :cond_10
    :goto_3
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldRilCREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  newRilCREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldRilCGREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  newRilCGREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCregChange: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  mCgregChange: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v16           #rilCgregState:Ljava/lang/String;
    .end local v17           #rilCregState:Ljava/lang/String;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 764
    .restart local v16       #rilCgregState:Ljava/lang/String;
    .restart local v17       #rilCregState:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    .line 765
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    .line 768
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 771
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 772
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    .line 773
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    goto/16 :goto_3

    .line 784
    .end local v16           #rilCgregState:Ljava/lang/String;
    .end local v17           #rilCregState:Ljava/lang/String;
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 791
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 795
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 796
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 802
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 804
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_16

    .line 809
    const/16 v19, 0x0

    .line 810
    .local v19, states:[Ljava/lang/String;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v19, v22

    check-cast v19, [Ljava/lang/String;

    .line 812
    const/4 v10, -0x1

    .line 813
    .local v10, lac:I
    const/4 v6, -0x1

    .line 814
    .local v6, cid:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_15

    .line 816
    const/16 v22, 0x1

    :try_start_0
    aget-object v22, v19, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_14

    .line 817
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 819
    :cond_14
    const/16 v22, 0x2

    aget-object v22, v19, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x2

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_15

    .line 820
    const/16 v22, 0x2

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 826
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 832
    .end local v6           #cid:I
    .end local v10           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 822
    .restart local v6       #cid:I
    .restart local v10       #lac:I
    .restart local v19       #states:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 823
    .local v7, ex:Ljava/lang/NumberFormatException;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error parsing location: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 840
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #cid:I
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 842
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 848
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 852
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 854
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x0

    aget-object v15, v22, v23

    check-cast v15, Ljava/lang/String;

    .line 855
    .local v15, nitzString:Ljava/lang/String;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 857
    .local v13, nitzReceiveTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 864
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v13           #nitzReceiveTime:J
    .end local v15           #nitzString:Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 868
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 870
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 877
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    goto/16 :goto_0

    .line 884
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 886
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xf

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 892
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 894
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x15

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 895
    .local v12, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 899
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #message:Landroid/os/Message;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 900
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 901
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-static/range {v22 .. v22}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v22

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 903
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 908
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 910
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_17

    .line 911
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 916
    :goto_5
    const/16 v22, 0x14

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 917
    .restart local v12       #message:Landroid/os/Message;
    const/16 v20, 0x7

    .line 919
    .local v20, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 913
    .end local v12           #message:Landroid/os/Message;
    .end local v20           #toggledNetworkType:I
    :cond_17
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_5

    .line 924
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleIfLanguageChanged()V

    goto/16 :goto_0

    .line 928
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v22

    if-nez v22, :cond_18

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v11

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    .line 934
    .local v11, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v23, 0xc3bb

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v22

    const/16 v25, 0x1

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v22

    :goto_6
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 936
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 938
    .end local v11           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_18
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 934
    .restart local v11       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_19
    const/16 v22, -0x1

    goto :goto_6

    .line 945
    .end local v11           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_14
    const-string v22, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 949
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 954
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 955
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v9, v22

    check-cast v9, [I

    .line 956
    .local v9, isSIMRemoved:[I
    const-string v23, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v9, :cond_1a

    array-length v0, v9

    move/from16 v22, v0

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v22, v0

    if-lez v22, :cond_0

    const/16 v22, 0x0

    aget v22, v9, v22

    if-nez v22, :cond_0

    .line 963
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedNetworkRequest:Z

    .line 965
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 956
    :cond_1a
    const/16 v22, -0x1

    goto :goto_7

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_0
        0xe -> :sswitch_9
        0xf -> :sswitch_8
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x12 -> :sswitch_e
        0x13 -> :sswitch_11
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x35 -> :sswitch_12
        0x37 -> :sswitch_2
        0x3f -> :sswitch_6
        0x40 -> :sswitch_9
        0x43 -> :sswitch_15
        0x44 -> :sswitch_4
        0x45 -> :sswitch_15
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 17
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1314
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v14

    if-eqz v14, :cond_1

    sget-boolean v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v14, :cond_1

    .line 1315
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " handlePollStateResult drop event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    if-ne v14, v15, :cond_0

    .line 1326
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_8

    .line 1327
    const/4 v2, 0x0

    .line 1329
    .local v2, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/android/internal/telephony/CommandException;

    if-eqz v14, :cond_2

    .line 1330
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/internal/telephony/CommandException;

    check-cast v14, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1333
    :cond_2
    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v14, :cond_3

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1339
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1345
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v14, :cond_5

    .line 1349
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    const/4 v15, 0x0

    aget v16, v14, v15

    add-int/lit8 v16, v16, -0x1

    aput v16, v14, v15

    .line 1550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-nez v14, :cond_0

    .line 1560
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v14, :cond_19

    :cond_6
    const/4 v11, 0x1

    .line 1561
    .local v11, roaming:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1562
    const/4 v11, 0x0

    .line 1564
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v11}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1566
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1355
    .end local v11           #roaming:Z
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1357
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1358
    .local v13, states:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 1359
    .local v5, lac:I
    const/4 v1, -0x1

    .line 1360
    .local v1, cid:I
    const/4 v10, -0x1

    .line 1361
    .local v10, regState:I
    const/4 v9, -0x1

    .line 1362
    .local v9, reasonRegStateDenied:I
    const/4 v8, -0x1

    .line 1363
    .local v8, psc:I
    array-length v14, v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v14, :cond_d

    .line 1365
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1366
    array-length v14, v13

    const/4 v15, 0x3

    if-lt v14, v15, :cond_a

    .line 1367
    const/4 v14, 0x1

    aget-object v14, v13, v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 1368
    const/4 v14, 0x1

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 1370
    :cond_9
    const/4 v14, 0x2

    aget-object v14, v13, v14

    if-eqz v14, :cond_a

    const/4 v14, 0x2

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    .line 1371
    const/4 v14, 0x2

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1392
    :cond_a
    array-length v14, v13

    const/4 v15, 0x4

    if-lt v14, v15, :cond_b

    const/4 v14, 0x3

    aget-object v14, v13, v14

    if-eqz v14, :cond_b

    .line 1393
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildVoice:Z

    .line 1394
    const/4 v14, 0x3

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceNetworkType:I

    .line 1398
    :cond_b
    array-length v14, v13

    const/16 v15, 0xe

    if-le v14, v15, :cond_c

    .line 1399
    const/16 v14, 0xe

    aget-object v14, v13, v14

    if-eqz v14, :cond_c

    const/16 v14, 0xe

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_c

    .line 1400
    const/16 v14, 0xe

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 1404
    :cond_c
    array-length v14, v13

    const/16 v15, 0xe

    if-lt v14, v15, :cond_f

    const/16 v14, 0xd

    aget-object v14, v13, v14

    if-eqz v14, :cond_f

    .line 1405
    const/16 v14, 0xd

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    .line 1406
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MM Reject Cause from RIL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1419
    :cond_d
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1422
    const/16 v14, 0xa

    if-eq v10, v14, :cond_e

    const/16 v14, 0xc

    if-eq v10, v14, :cond_e

    const/16 v14, 0xd

    if-eq v10, v14, :cond_e

    const/16 v14, 0xe

    if-ne v10, v14, :cond_10

    .line 1423
    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1429
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v14, v5, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v14, v8}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1544
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v8           #psc:I
    .end local v9           #reasonRegStateDenied:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1545
    .local v3, ex:Ljava/lang/RuntimeException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1408
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #cid:I
    .restart local v5       #lac:I
    .restart local v8       #psc:I
    .restart local v9       #reasonRegStateDenied:I
    .restart local v10       #regState:I
    .restart local v13       #states:[Ljava/lang/String;
    :cond_f
    const/4 v14, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1411
    :catch_1
    move-exception v3

    .line 1414
    .local v3, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error parsing RegistrationState: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1425
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_4

    .line 1434
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v8           #psc:I
    .end local v9           #reasonRegStateDenied:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1442
    .restart local v13       #states:[Ljava/lang/String;
    const/4 v10, -0x1

    .line 1443
    .restart local v10       #regState:I
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1444
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1445
    array-length v14, v13
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v14, :cond_13

    .line 1447
    const/4 v14, 0x0

    :try_start_5
    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1450
    array-length v14, v13

    const/4 v15, 0x4

    if-lt v14, v15, :cond_11

    const/4 v14, 0x3

    aget-object v14, v13, v14

    if-eqz v14, :cond_11

    .line 1457
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsVaildGPRS:Z

    .line 1458
    const/4 v14, 0x3

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGPRSNetworkType:I

    .line 1461
    :cond_11
    array-length v14, v13

    const/4 v15, 0x5

    if-lt v14, v15, :cond_12

    const/4 v14, 0x3

    if-ne v10, v14, :cond_12

    .line 1462
    const/4 v14, 0x4

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1464
    :cond_12
    array-length v14, v13

    const/4 v15, 0x6

    if-lt v14, v15, :cond_13

    .line 1465
    const/4 v14, 0x5

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1471
    :cond_13
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1472
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    goto/16 :goto_1

    .line 1467
    :catch_2
    move-exception v3

    .line 1468
    .restart local v3       #ex:Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing GprsRegistrationState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 1489
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 1491
    .local v7, opNames:[Ljava/lang/String;
    if-eqz v7, :cond_5

    array-length v14, v7

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    .line 1499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v14, :cond_15

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/16 v16, 0x2

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-ne v14, v15, :cond_15

    .line 1500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1504
    .local v6, opLong:Ljava/lang/String;
    :goto_6
    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 1505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const/16 v16, 0x2

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    sget-object v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1509
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appendix criteria is matched: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v15, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1512
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    .line 1520
    :goto_7
    array-length v14, v7

    const/4 v15, 0x4

    if-lt v14, v15, :cond_5

    .line 1522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/SIMRecords;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1523
    .local v12, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v12, :cond_5

    .line 1526
    const/4 v14, 0x3

    :try_start_7
    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->setOperatorNameSource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 1527
    :catch_3
    move-exception v3

    .line 1529
    .restart local v3       #ex:Ljava/lang/NumberFormatException;
    const/4 v14, -0x1

    :try_start_8
    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->setOperatorNameSource(I)V

    goto/16 :goto_1

    .line 1502
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v6           #opLong:Ljava/lang/String;
    .end local v12           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_15
    const/4 v14, 0x0

    aget-object v6, v7, v14

    .restart local v6       #opLong:Ljava/lang/String;
    goto/16 :goto_6

    .line 1514
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    goto :goto_7

    .line 1517
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    goto :goto_7

    .line 1539
    .end local v6           #opLong:Ljava/lang/String;
    .end local v7           #opNames:[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v0, v14

    check-cast v0, [I

    move-object v4, v0

    .line 1540
    .local v4, ints:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x0

    aget v14, v4, v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_18

    const/4 v14, 0x1

    :goto_8
    invoke-virtual {v15, v14}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :cond_18
    const/4 v14, 0x0

    goto :goto_8

    .line 1560
    .end local v4           #ints:[I
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1355
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V

    .line 1064
    return-void
.end method

.method protected htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "simRemainActive"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1069
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1071
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1072
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 1077
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_1

    .line 1078
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1086
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected htcSetPowerStateToDesired(Ljava/lang/Boolean;)V
    .locals 9
    .parameter "isRequestedByPhoneApp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 986
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerStateToDesired, mDesiredPowerState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requestByPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 990
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v3, :cond_0

    .line 991
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataConnectionAsDesired: mDesiredPowerState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz v0, :cond_0

    .line 993
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 998
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_4

    .line 1001
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .line 1002
    .local v2, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_3

    .line 1003
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    invoke-virtual {v2, v7, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1006
    :cond_1
    invoke-virtual {v2, v8, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1058
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 1010
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .restart local p1
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1014
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1016
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 1021
    if-eqz p1, :cond_5

    .end local p1
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_0

    .restart local p1
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1026
    :cond_6
    const/4 v1, 0x0

    .line 1027
    .local v1, noRedundantCommand:Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_7

    .line 1030
    const-string v3, "GSM"

    const-string v4, "Boot-up with airplane mode is on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    .line 1033
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .line 1034
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_8

    .line 1035
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v3, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1043
    :goto_2
    const/4 v1, 0x1

    .line 1048
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_2

    .line 1052
    const-string v3, "GSM"

    const-string v4, "IMS flight mode on, but power off case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1039
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2500
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2985
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2990
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcSetPowerStateToDesired(Ljava/lang/Boolean;)V

    .line 979
    return-void
.end method

.method protected updateNetworkNameDisplay()V
    .locals 19

    .prologue
    .line 1143
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1145
    .local v11, serviceStatus:I
    const-string v16, "networkState"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1146
    const-string/jumbo v17, "unregistered_icc"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v16, v0

    if-lez v16, :cond_b

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    const-string/jumbo v16, "unregistered_icc_code"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1149
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SPN_STRINGS_UPDATED_ACTION serviceStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " rejectCause:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    if-nez v11, :cond_12

    .line 1153
    const/4 v4, 0x0

    .line 1159
    .local v4, ignoreDisplayRule:Z
    const/4 v10, 0x1

    .line 1160
    .local v10, rule:I
    const/4 v15, 0x0

    .line 1162
    .local v15, spn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v14, v16

    .line 1163
    .local v14, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :goto_1
    if-eqz v14, :cond_0

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v10

    .line 1165
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v15

    .line 1169
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 1171
    .local v8, numeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1173
    .local v9, plmn:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plmn("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") name  in resource: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_2
    sget-object v16, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_e

    const/4 v6, 0x1

    .line 1182
    .local v6, is3Gtype:Z
    :goto_3
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "network Type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-eqz v6, :cond_1

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getAppendixType()I

    move-result v2

    .line 1185
    .local v2, appendixType:I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v2, v0, :cond_f

    .line 1186
    const-string v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1187
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "3G"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1197
    .end local v2           #appendixType:I
    .end local v6           #is3Gtype:Z
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const-string v17, "gsm.operator.alpha"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1202
    :cond_2
    and-int/lit8 v16, v10, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 1204
    .local v13, showSpn:Z
    :goto_5
    and-int/lit8 v16, v10, 0x2

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 1209
    .local v12, showPlmn:Z
    :goto_6
    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    if-eqz v15, :cond_3

    .line 1210
    invoke-virtual {v9, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_3

    .line 1211
    const-string v16, "GSM"

    const-string/jumbo v17, "spn and plmn are identical strings!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/4 v12, 0x0

    .line 1216
    :cond_3
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x1b

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    :cond_4
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0xd8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0xda

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1222
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    sget-object v16, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1225
    const/4 v13, 0x0

    .line 1226
    const/4 v12, 0x1

    .line 1228
    const/4 v4, 0x1

    .line 1234
    :cond_6
    if-eqz v8, :cond_8

    .line 1236
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_0
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1237
    .local v7, mcc:Ljava/lang/String;
    const-string v16, "404"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, "405"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1246
    :cond_7
    if-eqz v15, :cond_8

    .line 1247
    const-string v16, "Vodafone IN"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "airtel"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_8

    .line 1249
    const-string v16, "GSM"

    const-string v17, "According to customerization table, we only show PLMN!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    const/4 v13, 0x0

    .line 1251
    const/4 v12, 0x1

    .line 1262
    .end local v7           #mcc:Ljava/lang/String;
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    if-nez v4, :cond_9

    .line 1263
    const-string v15, ""

    .line 1264
    const-string v9, ""

    .line 1268
    :cond_9
    const-string v16, "showSpn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1269
    const-string/jumbo v16, "spn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string v16, "showPlmn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1271
    const-string v16, "plmn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1274
    .end local v12           #showPlmn:Z
    .end local v13           #showSpn:Z
    :cond_a
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1275
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1276
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1305
    .end local v4           #ignoreDisplayRule:Z
    .end local v8           #numeric:Ljava/lang/String;
    .end local v9           #plmn:Ljava/lang/String;
    .end local v10           #rule:I
    .end local v14           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    .end local v15           #spn:Ljava/lang/String;
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorInfo()V

    .line 1306
    return-void

    .line 1146
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1162
    .restart local v4       #ignoreDisplayRule:Z
    .restart local v10       #rule:I
    .restart local v15       #spn:Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1175
    .restart local v8       #numeric:Ljava/lang/String;
    .restart local v14       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 1176
    .restart local v9       #plmn:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plmn("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") name from RIL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1181
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1189
    .restart local v2       #appendixType:I
    .restart local v6       #is3Gtype:Z
    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_1

    .line 1190
    const-string v16, "3G "

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1191
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3G "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 1202
    .end local v2           #appendixType:I
    .end local v6           #is3Gtype:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1204
    .restart local v13       #showSpn:Z
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1256
    .restart local v12       #showPlmn:Z
    :catch_0
    move-exception v3

    .line 1257
    .local v3, e:Ljava/lang/Exception;
    const-string v16, "GSM"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1296
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ignoreDisplayRule:Z
    .end local v8           #numeric:Ljava/lang/String;
    .end local v9           #plmn:Ljava/lang/String;
    .end local v10           #rule:I
    .end local v12           #showPlmn:Z
    .end local v13           #showSpn:Z
    .end local v14           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    .end local v15           #spn:Ljava/lang/String;
    :cond_12
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1297
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1298
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1299
    const-string v16, "showSpn"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    const-string/jumbo v16, "spn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v16, "showPlmn"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    const-string v16, "plmn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method

.method protected updateSpnDisplay()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1092
    const/4 v2, 0x1

    .line 1093
    .local v2, rule:I
    const/4 v6, 0x0

    .line 1095
    .local v6, spn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1096
    .local v5, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v5, :cond_0

    .line 1097
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v2

    .line 1098
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;->getSpn(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1102
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;->getPlmn(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, plmn:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1106
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040315

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSpnDisplay: emergency only and radio is on plmn=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1111
    :cond_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v2, v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1114
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    and-int/lit8 v9, v2, 0x1

    if-ne v9, v7, :cond_4

    move v4, v7

    .line 1116
    .local v4, showSpn:Z
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    and-int/lit8 v9, v2, 0x2

    if-ne v9, v12, :cond_5

    move v3, v7

    .line 1120
    .local v3, showPlmn:Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    aput-object v1, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v12

    const/4 v7, 0x3

    aput-object v6, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1124
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v0, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1126
    const-string v7, "showSpn"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1127
    const-string/jumbo v7, "spn"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    const-string v7, "showPlmn"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    const-string v7, "plmn"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1133
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1134
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1135
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1137
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorInfo()V

    .line 1139
    return-void

    :cond_4
    move v4, v8

    .line 1114
    goto :goto_0

    .restart local v4       #showSpn:Z
    :cond_5
    move v3, v8

    .line 1116
    goto :goto_1
.end method
