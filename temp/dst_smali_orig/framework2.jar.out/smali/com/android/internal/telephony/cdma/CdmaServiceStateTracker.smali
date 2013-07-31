.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;,
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;
    }
.end annotation


# static fields
.field public static final ERR_NO_RESPONSE:Ljava/lang/String; = "FFFF"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_FIND_AND_REG_REGISTER_MMDCT:I = 0x1

.field public static final FEATURE_CDMA_DIRECTLY_SIGNAL_STRENGTH:Z = true

.field private static final HSPAP:I = 0xf

.field static IMSI_11_12:Ljava/lang/String; = null

.field static IMSI_MCC:Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MCC_COMMAND:Ljava/lang/String; = "C826B00000"

#the value of this static final field might be set in the static constructor
.field private static final MDN_PROVISION_CHECKING:Z = false

.field static final MNC_COMMAND:Ljava/lang/String; = "C826B10000"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field static final NVITEM_ID_LENGTH:I = 0x8

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static final RADIO_TECH_1xRTT:I = 0x6

.field private static final RADIO_TECH_EDGE:I = 0x2

.field private static final RADIO_TECH_EHRPD:I = 0xd

.field private static final RADIO_TECH_EVDO_0:I = 0x7

.field private static final RADIO_TECH_EVDO_A:I = 0x8

.field private static final RADIO_TECH_EVDO_B:I = 0xc

.field private static final RADIO_TECH_GPRS:I = 0x1

.field private static final RADIO_TECH_HSDPA:I = 0x9

.field private static final RADIO_TECH_HSPA:I = 0xb

.field private static final RADIO_TECH_HSUPA:I = 0xa

.field private static final RADIO_TECH_IS95A:I = 0x4

.field private static final RADIO_TECH_IS95B:I = 0x5

.field private static final RADIO_TECH_LTE:I = 0xe

.field private static final RADIO_TECH_UMTS:I = 0x3

.field private static final RADIO_TECH_UNKNOWN:I = 0x0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static htcCurrentOtaspMode:I

.field static isKddiOtaspProvision:Z

.field static final mChinaOpList:Ljava/util/ArrayList;

.field static mImsiReady:Z

.field static mRuimLoaded:Z

.field private static mRuimProvisioned:Z


# instance fields
.field protected cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private currentCarrier:Ljava/lang/String;

.field public dbg_get_mdn:Ljava/lang/String;

.field private forceSpnUpdate:Z

.field private getEventDate:Ljava/util/Date;

.field private getEventTime:J

.field private isEriTextLoaded:Z

.field protected isSubscriptionFromRuim:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field protected mCurPlmn:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field protected mDataConnectionState:I

.field private mDataStateRegHandler:Landroid/os/Handler;

.field private mDefaultRoamingIndicator:I

.field mFlightModeBootup:Ljava/lang/Boolean;

.field private mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

.field protected mGotCountryCode:Z

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

.field private mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

.field private mHtcContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIntentReceiver_miui:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIsInPrl:Z

.field private mIsMccMncChange:Z

.field protected mIsMinInfoReady:Z

.field private mLocale:Ljava/util/Locale;

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field private mNeedToRegForRuimLoaded:Z

.field protected mNewDataConnectionState:I

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mOldOperatorNumeric:Ljava/lang/String;

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

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPrevSignalBar:I

.field private mPrevSignalBarTime:J

.field protected mPrlVersion:Ljava/lang/String;

.field public mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

.field private mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    sput v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sget-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v2

    const-string v2, "46001"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "46002"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "46003"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "46007"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "45412"

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 11
    .parameter "phone"

    .prologue
    const/16 v10, 0xb

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver_miui:Landroid/content/BroadcastReceiver;

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    const-string v4, "ro.nitz_update_spacing"

    const v7, 0x927c0

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    const-string v4, "ro.nitz_update_diff"

    const/16 v7, 0x7d0

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    const-string v4, "not response CDMA Subscription"

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dbg_get_mdn:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriTextLoaded:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->currentCarrier:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataStateRegHandler:Landroid/os/Handler;

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v4}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    new-instance v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v4}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x27

    invoke-static {v4, v7, p0, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    new-instance v4, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "ServiceStateTracker"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x1e

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v10, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xc

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x28

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v4, 0x24

    invoke-virtual {p1, p0, v4, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x25

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x33

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCTMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x3d

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x43

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x45

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xaa

    if-eq v4, v7, :cond_2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v4, v10, :cond_2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x63

    if-ne v4, v7, :cond_3

    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x3e

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForLBS(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .local v0, airplaneMode:I
    :goto_1
    if-gtz v0, :cond_a

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_4

    move v6, v5

    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time_zone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v4, :cond_5

    const-string v4, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2, v9, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "com.htc"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataStateRegHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v4, v5, :cond_6

    const-string v4, "CDMA"

    const-string v5, "registerForUimOtaNotify for kddi otasp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x41

    invoke-interface {v4, p0, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForUimOtaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_7
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v4, p0, v5, v9}, Lcom/android/internal/telephony/IccCard;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->monitorLocaleChange()V

    return-void

    .end local v0           #airplaneMode:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_8
    move v4, v6

    goto/16 :goto_0

    .restart local v3       #powerManager:Landroid/os/PowerManager;
    :cond_9
    move v0, v6

    goto/16 :goto_1

    .restart local v0       #airplaneMode:I
    :cond_a
    move v4, v6

    goto/16 :goto_2

    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    goto :goto_3

    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    const-string v4, "CDMA"

    const-string v5, "phone is null or phone.getIccCard() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 14
    .parameter "dwVal"
    .parameter "dwDigits"

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, i:Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, dwBCD:Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v10

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const-string v3, ""

    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataServiceStateChanged()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    move v5, p1

    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    const v9, 0x36ee80

    sub-int/2addr v5, v9

    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

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

    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    move-object v2, v6

    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fixTimeZone(Ljava/lang/String;I)V
    .locals 7
    .parameter "isoCountryCode"
    .parameter "updateType"

    .prologue
    const/4 v6, 0x0

    .local v6, zone:Ljava/util/TimeZone;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v0, :cond_0

    if-nez v6, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    :cond_0
    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, proxy:Lcom/android/internal/telephony/IccCardProxy;
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getHtcIccCardProxy"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/BaseCommands;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/IccCardProxy;

    move-object v3, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-object v3

    :catch_0
    move-exception v1

    .local v1, eg:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No IccCardProxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #eg:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v2

    .local v2, ei:Ljava/lang/Exception;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access IccCardProxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getIMSI_fromIccRecords(Lcom/android/internal/telephony/IccRecords;)Ljava/lang/String;
    .locals 2
    .parameter "iccRec"

    .prologue
    const/4 v0, 0x0

    .local v0, imsi:Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    return-void
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 3
    .parameter "newSubscriptionSource"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription Source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .local v0, oldIsSubscriptionFromRuim:Z
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    if-nez v1, :cond_0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleIfLanguageChanged()V
    .locals 9

    .prologue
    const v8, 0x40700c9

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x4080036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, opStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    aget-object v5, v2, v0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, strArray:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    aget-object v6, v3, v1

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #opStr:[Ljava/lang/String;
    .end local v3           #strArray:[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v5

    if-eq v5, v4, :cond_5

    move v1, v4

    .local v1, isRoaming:Z
    :cond_5
    if-eqz v1, :cond_7

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_7

    const-string v4, "CDMA"

    const-string v5, "KDDI and into roaming network"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    .end local v1           #isRoaming:Z
    :cond_6
    :goto_2
    return-void

    .restart local v1       #isRoaming:Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #isRoaming:Z
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-nez v4, :cond_a

    const-string v4, "CDMA"

    const-string v5, "No HTC Context was loaded!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v4, "CDMA"

    const-string v5, "Language is not changed, leave as what it was!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 5
    .parameter "currRadioState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, clearTakeAction:Z
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const-string v1, "gsm.cdma.pri.version"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    const-string v1, "ril.cdmaphoneapp.mdn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ril.cdmaphoneapp.min"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .parameter "sid"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .end local v0           #i:I
    :goto_1
    return v1

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .parameter "roamInd"

    .prologue
    const/4 v5, 0x0

    const-string v6, "ro.cdma.homesystem"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, homeRoamIndicators:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, homeRoamInd:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #homeRoamInd:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return v5

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #homeRoamInd:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .local v0, equalsOnsl:Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .local v1, equalsOnss:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v5

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_0
    move v0, v6

    goto :goto_0

    .restart local v0       #equalsOnsl:Z
    :cond_1
    move v1, v6

    goto :goto_1

    .restart local v1       #equalsOnss:Z
    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    const-string v0, "unknown"

    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_4
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_5
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_6
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_7
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_8
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_9
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_b
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    :pswitch_c
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_d
    const-string v0, "HSPAP"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "cmd"
    .parameter "digits"

    .prologue
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForDataServiceStateChanged()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    const-string v6, "registerForDataServiceStateChanged"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    const-string v6, "unregisterForDataServiceStateChanged"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #cls:Ljava/lang/Class;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End of reg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_2

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-object v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    return-void

    .restart local v0       #cls:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, ef:Ljava/lang/Exception;
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForDataServiceStateChanged fnd Cls fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #ef:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .local v3, es:Ljava/lang/Exception;
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find Reg/Unreg method fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #cls:Ljava/lang/Class;
    .end local v3           #es:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .local v2, ei:Ljava/lang/Exception;
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke Reg method fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #ei:Ljava/lang/Exception;
    :cond_2
    move v4, v5

    goto :goto_3

    :cond_3
    const-string v4, "CDMA"

    const-string v5, "registerForDataServiceStateChanged can\'t find Reg method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private requestMCC()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B00000"

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private requestMNC()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B10000"

    const/16 v2, 0x39

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTime: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 2
    .parameter "source"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(JILjava/lang/String;)V
    .locals 2
    .parameter "time"
    .parameter "updateType"
    .parameter "updateZone"

    .prologue
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupNitz(IJLjava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 2
    .parameter "zoneId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V
    .locals 4
    .parameter "zoneId"
    .parameter "updateType"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupTimeZone(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setOperatorProperties()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x94

    if-ne v9, v10, :cond_0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eqz v9, :cond_1

    :cond_0
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xaf

    if-eq v9, v10, :cond_1

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xc

    if-ne v9, v10, :cond_9

    :cond_1
    const/4 v0, 0x1

    .local v0, SprintOperNum:Z
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .local v7, operatorNumeric:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .local v6, operatorName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eq v9, v11, :cond_2

    const-string v7, ""

    const-string v6, ""

    :cond_2
    const/4 v4, 0x0

    .local v4, isSprintLte:Z
    if-eqz v0, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, dataServiceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_a

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v11, :cond_a

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    :cond_4
    const/4 v4, 0x1

    .end local v1           #dataServiceState:Landroid/telephony/ServiceState;
    :cond_5
    :goto_1
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOperatorProperties - service state operator numeric: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", operator name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    if-eqz v9, :cond_6

    if-eqz v7, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    const-string v9, "CDMA"

    const-string v10, "setOperatorProperties - set operator numeric/alpha to system perties"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.numeric"

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.alpha"

    invoke-virtual {v9, v10, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c

    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.iso-country"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    :goto_2
    return-void

    .end local v0           #SprintOperNum:Z
    .end local v4           #isSprintLte:Z
    .end local v6           #operatorName:Ljava/lang/String;
    .end local v7           #operatorNumeric:Ljava/lang/String;
    :cond_9
    move v0, v8

    goto/16 :goto_0

    .restart local v0       #SprintOperNum:Z
    .restart local v1       #dataServiceState:Landroid/telephony/ServiceState;
    .restart local v4       #isSprintLte:Z
    .restart local v6       #operatorName:Ljava/lang/String;
    .restart local v7       #operatorNumeric:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v11, :cond_5

    :cond_b
    sget-object v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ro.cdma.home.operator.alpha"

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOperatorProperties - hardcode operator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #dataServiceState:Landroid/telephony/ServiceState;
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    const-string v5, ""

    .local v5, isoCountryCode:Ljava/lang/String;
    if-eqz v7, :cond_d

    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    :cond_d
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v3

    .local v3, htcCountry:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v3, :cond_e

    iget-object v8, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    :cond_e
    if-eqz v0, :cond_f

    if-nez v4, :cond_f

    const-string v5, "us"

    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v9, "gsm.operator.iso-country"

    invoke-virtual {v8, v9, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOperatorProperties - set iso-country: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3           #htcCountry:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v2           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :catch_2
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    .local v29, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventDate:Ljava/util/Date;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->receiveNitz(Ljava/lang/String;JJLjava/util/Date;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v29

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v29, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .local v9, c:Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    const/16 v2, 0x10

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    const-string v2, "[/:,+-]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .local v24, nitzSubs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v0, v2, 0x7d0

    move/from16 v35, v0

    .local v35, year:I
    const/4 v2, 0x1

    move/from16 v0, v35

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, month:I
    const/4 v2, 0x2

    move/from16 v0, v23

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, date:I
    const/4 v2, 0x5

    invoke-virtual {v9, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x3

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, hour:I
    const/16 v2, 0xa

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x4

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .local v22, minute:I
    const/16 v2, 0xc

    move/from16 v0, v22

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .local v27, second:I
    const/16 v2, 0xd

    move/from16 v0, v27

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    const/16 v28, 0x1

    .local v28, sign:Z
    :goto_0
    const/4 v2, 0x6

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, tzOffset:I
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x8

    if-lt v2, v4, :cond_9

    const/4 v2, 0x7

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .local v11, dst:I
    :goto_1
    if-eqz v28, :cond_a

    const/4 v2, 0x1

    :goto_2
    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v5, v2, 0x3e8

    const/4 v3, 0x0

    .local v3, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2

    const/16 v2, 0x8

    aget-object v2, v24, v2

    const/16 v4, 0x21

    const/16 v6, 0x2f

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v34

    .local v34, tzname:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .end local v34           #tzname:Ljava/lang/String;
    :cond_2
    const-string v2, "gsm.operator.iso-country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, iso:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eqz v11, :cond_b

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, v24

    array-length v4, v0

    const/16 v6, 0x8

    if-lt v4, v6, :cond_d

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v3

    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-eqz v11, :cond_12

    const/4 v2, 0x1

    :goto_7
    if-eq v4, v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eqz v11, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    :cond_5
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .local v31, strBuf:Ljava/lang/StringBuilder;
    const-string v2, "NITZ: tzOffset="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " zone="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v2, " iso="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mGotCountryCode="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNeedFixZone="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_7
    const-string v2, "gsm.ignore-nitz"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, ignore:Ljava/lang/String;
    if-eqz v18, :cond_15

    const-string v2, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v3           #zone:Ljava/util/TimeZone;
    .end local v5           #tzOffset:I
    .end local v9           #c:Ljava/util/Calendar;
    .end local v10           #date:I
    .end local v11           #dst:I
    .end local v17           #hour:I
    .end local v18           #ignore:Ljava/lang/String;
    .end local v19           #iso:Ljava/lang/String;
    .end local v22           #minute:I
    .end local v23           #month:I
    .end local v24           #nitzSubs:[Ljava/lang/String;
    .end local v27           #second:I
    .end local v28           #sign:Z
    .end local v31           #strBuf:Ljava/lang/StringBuilder;
    .end local v35           #year:I
    :goto_a
    return-void

    .restart local v9       #c:Ljava/util/Calendar;
    .restart local v10       #date:I
    .restart local v17       #hour:I
    .restart local v22       #minute:I
    .restart local v23       #month:I
    .restart local v24       #nitzSubs:[Ljava/lang/String;
    .restart local v27       #second:I
    .restart local v35       #year:I
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_0

    .restart local v5       #tzOffset:I
    .restart local v28       #sign:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v11       #dst:I
    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_2

    .restart local v3       #zone:Ljava/util/TimeZone;
    .restart local v19       #iso:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_e
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    if-eqz v2, :cond_3

    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    if-eqz v11, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-static {v5, v2, v6, v7, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    if-eqz v11, :cond_11

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    .restart local v31       #strBuf:Ljava/lang/StringBuilder;
    :cond_14
    const-string v2, "<null>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    .end local v3           #zone:Ljava/util/TimeZone;
    .end local v5           #tzOffset:I
    .end local v9           #c:Ljava/util/Calendar;
    .end local v10           #date:I
    .end local v11           #dst:I
    .end local v17           #hour:I
    .end local v19           #iso:Ljava/lang/String;
    .end local v22           #minute:I
    .end local v23           #month:I
    .end local v24           #nitzSubs:[Ljava/lang/String;
    .end local v27           #second:I
    .end local v28           #sign:Z
    .end local v31           #strBuf:Ljava/lang/StringBuilder;
    .end local v35           #year:I
    :catch_0
    move-exception v14

    .local v14, ex:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Parsing NITZ time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_a

    .end local v14           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #zone:Ljava/util/TimeZone;
    .restart local v5       #tzOffset:I
    .restart local v9       #c:Ljava/util/Calendar;
    .restart local v10       #date:I
    .restart local v11       #dst:I
    .restart local v17       #hour:I
    .restart local v18       #ignore:Ljava/lang/String;
    .restart local v19       #iso:Ljava/lang/String;
    .restart local v22       #minute:I
    .restart local v23       #month:I
    .restart local v24       #nitzSubs:[Ljava/lang/String;
    .restart local v27       #second:I
    .restart local v28       #sign:Z
    .restart local v31       #strBuf:Ljava/lang/StringBuilder;
    .restart local v35       #year:I
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v20, v6, p2

    .local v20, millisSinceNitzReceived:J
    const-wide/16 v6, 0x0

    cmp-long v2, v20, v6

    if-gez v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .local v12, end:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .end local v12           #end:J
    :cond_16
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v20, v6

    if-lez v2, :cond_17

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, processing has taken "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v6, 0x5265c00

    div-long v6, v20, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " days"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12       #end:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_a

    .end local v12           #end:J
    :cond_17
    const/16 v2, 0xe

    move-wide/from16 v0, v20

    long-to-int v4, v0

    :try_start_5
    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->add(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v15, v6, v36

    .local v15, gained:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v36, v0

    sub-long v32, v6, v36

    .local v32, timeSinceLastUpdate:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .local v26, nitzUpdateSpacing:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .local v25, nitzUpdateDiff:I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    const-wide/16 v36, 0x0

    cmp-long v2, v6, v36

    if-eqz v2, :cond_18

    move/from16 v0, v26

    int-to-long v6, v0

    cmp-long v2, v32, v6

    if-gtz v2, :cond_18

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v36, v0

    cmp-long v2, v6, v36

    if-lez v2, :cond_1b

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Auto updating time of day to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NITZ receive delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    .end local v15           #gained:J
    .end local v25           #nitzUpdateDiff:I
    .end local v26           #nitzUpdateSpacing:I
    .end local v32           #timeSinceLastUpdate:J
    :cond_19
    const-string v2, "NITZ: update nitz time property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v2, "gsm.nitz.time"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12       #end:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    .end local v12           #end:J
    .restart local v15       #gained:J
    .restart local v25       #nitzUpdateDiff:I
    .restart local v26       #nitzUpdateSpacing:I
    .restart local v32       #timeSinceLastUpdate:J
    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: ignore, a previous update was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms ago and gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12       #end:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    .end local v12           #end:J
    .end local v15           #gained:J
    .end local v20           #millisSinceNitzReceived:J
    .end local v25           #nitzUpdateDiff:I
    .end local v26           #nitzUpdateSpacing:I
    .end local v32           #timeSinceLastUpdate:J
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12       #end:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: end="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dur="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v12, v29

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private signalBarLogControl(I)Z
    .locals 9
    .parameter "signalBar"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, currentTime:J
    const-wide/16 v3, 0x1388

    .local v3, timeInterval:J
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    if-ne v5, p1, :cond_1

    iget-wide v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private unregisterForDataServiceStateChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataStateRegHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ei:Ljava/lang/Exception;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unreg fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ei:Ljava/lang/Exception;
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "Can\'t find Unreg method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "command"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .local v0, errMsg:Ljava/lang/String;
    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command state is error, reason is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "0100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "internal dmss used"

    goto :goto_0

    :cond_2
    const-string v2, "0200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "can\'t recognize command"

    goto :goto_0

    :cond_3
    const-string v2, "0300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "memory is full"

    goto :goto_0

    :cond_4
    const-string v2, "0400"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "command is fail"

    goto :goto_0

    :cond_5
    const-string v2, "0500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "not support this command"

    goto :goto_0

    :cond_6
    const-string v2, "0600"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    :cond_7
    const-string v2, "0700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "memeory is read only"

    goto :goto_0

    :cond_8
    const-string v2, "FFFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "No respone!!"

    goto :goto_0

    :cond_9
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForReady(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCTMccMncChange(Landroid/os/Handler;)V

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLBS(Landroid/os/Handler;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .local v0, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .end local v0           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    sget-boolean v1, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataServiceStateChanged()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->dispose()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const-string v1, "CDMA"

    const-string v2, "unregisterForUimOtaNotify for kddi otasp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForUimOtaNotify(Landroid/os/Handler;)V

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->dispose()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v0, "CdmaServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewDataConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedToRegForRuimLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " currentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->currentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "isoCountryCode"

    .prologue
    const/4 v0, 0x0

    .local v0, zone:Ljava/util/TimeZone;
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    const-string v0, "MIN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCdmaVoiceCampedOperator(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 12
    .parameter "objAccountInfos"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/HtcAccountInfos;

    .local v0, htcAccountInfos:Lcom/android/internal/telephony/HtcAccountInfos;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v5

    if-eq v5, v6, :cond_4

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, isRoamingNetwork:Ljava/lang/Boolean;
    :goto_1
    const/16 v5, 0xa

    new-array v4, v5, [Ljava/lang/String;

    .local v4, result:[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v7, v4, v9

    aput-object v7, v4, v10

    const/4 v5, 0x6

    aput-object v7, v4, v5

    const/4 v5, 0x7

    aput-object v7, v4, v5

    aput-object v7, v4, v11

    const/16 v5, 0x9

    aput-object v7, v4, v5

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v5, v7, v7, v6}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/telephony/HtcIccType;

    move-object v2, v5

    check-cast v2, [Lcom/android/internal/telephony/HtcIccType;

    .local v2, iccTypes:[Lcom/android/internal/telephony/HtcIccType;
    if-eqz v2, :cond_8

    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v5, v2

    if-ge v1, v5, :cond_8

    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v4, v9

    if-nez v5, :cond_0

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    aput-object v5, v4, v9

    :cond_0
    aget-object v5, v4, v10

    if-nez v5, :cond_1

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    aput-object v5, v4, v10

    :cond_1
    aget-object v5, v4, v11

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-eqz v5, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    :cond_2
    const/16 v5, 0x9

    aget-object v5, v4, v5

    if-nez v5, :cond_3

    const/16 v5, 0x9

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    aput-object v6, v4, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1           #i:I
    .end local v2           #iccTypes:[Lcom/android/internal/telephony/HtcIccType;
    .end local v3           #isRoamingNetwork:Ljava/lang/Boolean;
    .end local v4           #result:[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v3, v7

    goto/16 :goto_1

    .restart local v3       #isRoamingNetwork:Ljava/lang/Boolean;
    .restart local v4       #result:[Ljava/lang/String;
    :cond_6
    move-object v5, v7

    goto/16 :goto_2

    :cond_7
    move-object v5, v7

    goto/16 :goto_3

    :cond_8
    return-object v4
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    return v0
.end method

.method protected getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 6
    .parameter "givenServiceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, eriSs:Landroid/telephony/ServiceState;
    :goto_0
    const/4 v2, 0x0

    .local v2, updateByHtcEri:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v1, mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v5

    if-ltz v5, :cond_2

    move v2, v3

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIconMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    :goto_2
    return-object v0

    .end local v0           #eriSs:Landroid/telephony/ServiceState;
    .end local v1           #mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;
    .end local v2           #updateByHtcEri:Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    goto :goto_0

    .restart local v0       #eriSs:Landroid/telephony/ServiceState;
    .restart local v1       #mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;
    .restart local v2       #updateByHtcEri:Z
    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    :goto_3
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    goto :goto_3
.end method

.method getImsi()Ljava/lang/String;
    .locals 6

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .local v2, imsi:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .local v0, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .local v1, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/IccRecords;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_0
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RUIM imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v0           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v2           #imsi:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSInfo imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v2, v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    .local v3, retrieved_Min:Ljava/lang/String;
    if-eqz v3, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI_MCC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    const-string v0, "MDN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    goto :goto_0
.end method

.method getOtasp()I
    .locals 4

    .prologue
    const/16 v3, 0x51

    const/4 v0, 0x3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKddiOtaspProvision:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x43

    if-ne v1, v2, :cond_3

    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    :cond_3
    sget v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    goto :goto_0
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

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
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .parameter "msg"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventTime:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventDate:Ljava/util/Date;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v4, :cond_1

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CdmaServiceTracker drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message with number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive EVENT_RUIM_READY IccCardProxy.ENABLED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLteOnCdmaMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const-string v4, "Receive EVENT_RUIM_READY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription + EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v33

    .local v33, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v33, :cond_3

    const/16 v4, 0x1b

    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .end local v33           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_6
    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    goto :goto_2

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    const-string v4, "Receive EVENT_NV_READY and Send Request getCDMASubscription + EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    .local v26, currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    const/16 v50, 0x1

    .local v50, normalSetPowerState:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v31, 0x1

    .local v31, firstRadioPowerIsOn:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v0, v31

    if-eq v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v31, v0

    :cond_8
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_d

    const/16 v55, 0x1

    .local v55, radioOffOnBoot:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v59

    .local v59, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v59, :cond_e

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change poweron mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    const/16 v50, 0x0

    :cond_9
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    .end local v31           #firstRadioPowerIsOn:Z
    .end local v55           #radioOffOnBoot:Z
    .end local v59           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_a
    if-eqz v50, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_3

    .restart local v31       #firstRadioPowerIsOn:Z
    :cond_d
    const/16 v55, 0x0

    goto :goto_4

    .restart local v55       #radioOffOnBoot:Z
    .restart local v59       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_e
    move/from16 v0, v31

    move/from16 v1, v55

    if-ne v0, v1, :cond_9

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change normal poweron mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    move/from16 v0, v55

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    const/16 v50, 0x0

    goto :goto_5

    .end local v26           #currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v31           #firstRadioPowerIsOn:Z
    .end local v50           #normalSetPowerState:Z
    .end local v55           #radioOffOnBoot:Z
    .end local v59           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .local v23, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_17

    const/16 v60, 0x0

    .local v60, states:[Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/RegStateResponse;

    if-eqz v4, :cond_18

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/RegStateResponse;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v60

    :goto_6
    const/4 v9, -0x1

    .local v9, baseStationId:I
    const v10, 0x7fffffff

    .local v10, baseStationLatitude:I
    const v11, 0x7fffffff

    .local v11, baseStationLongitude:I
    const/4 v12, -0x1

    .local v12, systemId:I
    const/4 v13, -0x1

    .local v13, networkId:I
    move-object/from16 v0, v60

    array-length v4, v0

    const/16 v5, 0x9

    if-le v4, v5, :cond_16

    const/4 v4, 0x4

    :try_start_0
    aget-object v4, v60, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x4

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_f
    const/4 v4, 0x5

    aget-object v4, v60, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x5

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_10
    const/4 v4, 0x6

    aget-object v4, v60, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x6

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_11
    if-nez v10, :cond_12

    if-nez v11, :cond_12

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    :cond_12
    const/16 v4, 0x8

    aget-object v4, v60, v4

    if-eqz v4, :cond_13

    const/16 v4, 0x8

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_13
    const/16 v4, 0x9

    aget-object v4, v60, v4

    if-eqz v4, :cond_14

    const/16 v4, 0x9

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v4, :cond_16

    const/16 v56, 0x4

    .local v56, registrationState:I
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v60, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v56

    :cond_15
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .local v8, nitzServiceState:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventTime:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventDate:Ljava/util/Date;

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v43

    .local v43, nitzIso:Ljava/lang/String;
    if-eqz v43, :cond_16

    packed-switch v8, :pswitch_data_1

    .end local v8           #nitzServiceState:I
    .end local v43           #nitzIso:Ljava/lang/String;
    .end local v56           #registrationState:I
    :cond_16
    :goto_9
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .end local v9           #baseStationId:I
    .end local v10           #baseStationLatitude:I
    .end local v11           #baseStationLongitude:I
    .end local v12           #systemId:I
    .end local v13           #networkId:I
    .end local v60           #states:[Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .restart local v60       #states:[Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v60, v4

    check-cast v60, [Ljava/lang/String;

    goto/16 :goto_6

    .restart local v9       #baseStationId:I
    .restart local v10       #baseStationLatitude:I
    .restart local v11       #baseStationLongitude:I
    .restart local v12       #systemId:I
    .restart local v13       #networkId:I
    :catch_0
    move-exception v30

    .local v30, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing cell location data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_7

    .end local v30           #ex:Ljava/lang/NumberFormatException;
    .restart local v8       #nitzServiceState:I
    .restart local v43       #nitzIso:Ljava/lang/String;
    .restart local v56       #registrationState:I
    :pswitch_9
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto :goto_9

    .end local v8           #nitzServiceState:I
    .end local v9           #baseStationId:I
    .end local v10           #baseStationLatitude:I
    .end local v11           #baseStationLongitude:I
    .end local v12           #systemId:I
    .end local v13           #networkId:I
    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v43           #nitzIso:Ljava/lang/String;
    .end local v56           #registrationState:I
    .end local v60           #states:[Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    new-instance v32, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy hh:mm:ss.SSS"

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v32, formatter:Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    .local v51, now:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .local v24, calendar:Ljava/util/Calendar;
    move-object/from16 v0, v24

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v25, v4

    check-cast v25, [Ljava/lang/String;

    .local v25, cdmaSubscription:[Ljava/lang/String;
    if-eqz v25, :cond_22

    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_22

    const/4 v4, 0x0

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v25, v4

    const/4 v5, 0x2

    aget-object v5, v25, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1f

    const/4 v4, 0x4

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No PRL version in RIL_CDMA_SUBSCRIPTION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    :cond_1a
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last GET_CDMA_SUBSCRIPTION MDN response on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dbg_get_mdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: MDN=null on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dbg_get_mdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x55

    if-ne v4, v5, :cond_21

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_21

    const-string v4, "MPCS SIM not send INTENT_VALUE_ICC_IMSI in CARD_ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_1c
    :goto_c
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-nez v4, :cond_1d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyIMSIReady()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumber(Ljava/lang/String;I)V

    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v4, v5, :cond_0

    const-string v4, "ril.cdmaphoneapp.mdn"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ril.cdmaphoneapp.min"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "CDMA"

    const-string v5, "No PRL version in RIL_CDMA_SUBSCRIPTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dbg_get_mdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last GET_CDMA_SUBSCRIPTION MDN response: error parsing cdmaSubscription params num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dbg_get_mdn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v24           #calendar:Ljava/util/Calendar;
    .end local v25           #cdmaSubscription:[Ljava/lang/String;
    .end local v32           #formatter:Ljava/text/DateFormat;
    .end local v51           #now:J
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v46, v4, v5

    check-cast v46, Ljava/lang/String;

    .local v46, nitzString:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .local v44, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v44           #nitzReceiveTime:J
    .end local v46           #nitzString:Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dontPollSignalStrength:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    if-nez v4, :cond_25

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    :goto_d
    sget-boolean v4, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v33

    .restart local v33       #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_24

    if-eqz v33, :cond_24

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v34

    .local v34, iccRec:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/IccRecords;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .end local v33           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v34           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    goto/16 :goto_0

    :cond_25
    const-string v4, "Receive RUIM refresh reload"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto :goto_d

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v37, v4

    check-cast v37, [I

    .local v37, ints:[I
    const/4 v4, 0x0

    aget v54, v37, v4

    .local v54, otaStatus:I
    const/16 v4, 0x8

    move/from16 v0, v54

    if-eq v0, v4, :cond_26

    const/16 v4, 0xa

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    :cond_26
    const-string v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v37           #ints:[I
    .end local v54           #otaStatus:I
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v37, v4

    check-cast v37, [I

    .restart local v37       #ints:[I
    const/4 v4, 0x0

    aget v4, v37, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v37           #ints:[I
    :pswitch_14
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CT_MCCMNC_CHANGE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_27

    const-string v4, "EVENT_RIL_CDMA_RS_INFO:CDMA Info ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_29

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RIL_CDMA_RS_INFO:version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobile_sw_version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->mobile_sw_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " esn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pre_only:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " customer_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->customer_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pri2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .local v40, mCc:Ljava/lang/String;
    const-string v4, "gsm.cdma.nv.mcc"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gsm.cdma.nv.mnc"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gsm.cdma.nv.home.country"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v40           #mCc:Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    move-object/from16 v61, v0

    .local v61, unifiedPRIversion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    :cond_28
    const-string v4, "gsm.cdma.pri.version"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v61           #unifiedPRIversion:Ljava/lang/String;
    :catch_1
    move-exception v29

    .local v29, e:Ljava/lang/Exception;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .end local v29           #e:Ljava/lang/Exception;
    :cond_29
    const-string v4, "EVENT_RIL_CDMA_RS_INFO:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    const-string v58, ""

    .local v58, retrieved_IMSI_MCC:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2b

    const-string v4, "EVENT_RESPONSE_MCC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_f
    sput-object v58, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2d

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .local v42, nValue:Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .local v41, nCommand:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .local v35, id:Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .local v22, NvItemData:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, NAM:Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .local v47, nonDecode:Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .local v48, nonDecodeVal:J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .local v27, decodeVal:J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MCC:IMSI_MCC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v21           #NAM:Ljava/lang/String;
    .end local v22           #NvItemData:Ljava/lang/String;
    .end local v27           #decodeVal:J
    .end local v35           #id:Ljava/lang/String;
    .end local v41           #nCommand:Ljava/lang/String;
    .end local v47           #nonDecode:Ljava/lang/String;
    .end local v48           #nonDecodeVal:J
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MCC:error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v42           #nValue:Ljava/lang/String;
    :cond_2d
    const-string v4, "EVENT_RESPONSE_MCC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v58           #retrieved_IMSI_MCC:Ljava/lang/String;
    :pswitch_17
    const-string v57, ""

    .local v57, retrieved_IMSI_11_12:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2f

    const-string v4, "EVENT_RESPONSE_MNC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_10
    sput-object v57, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_31

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .restart local v42       #nValue:Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .restart local v41       #nCommand:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .restart local v35       #id:Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #NvItemData:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #NAM:Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .restart local v47       #nonDecode:Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .restart local v48       #nonDecodeVal:J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .restart local v27       #decodeVal:J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v57

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:IMSI_11_12:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v21           #NAM:Ljava/lang/String;
    .end local v22           #NvItemData:Ljava/lang/String;
    .end local v27           #decodeVal:J
    .end local v35           #id:Ljava/lang/String;
    .end local v41           #nCommand:Ljava/lang/String;
    .end local v47           #nonDecode:Ljava/lang/String;
    .end local v48           #nonDecodeVal:J
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v42           #nValue:Ljava/lang/String;
    :cond_31
    const-string v4, "EVENT_RESPONSE_MNC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v57           #retrieved_IMSI_11_12:Ljava/lang/String;
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_32

    new-instance v36, Landroid/content/Intent;

    const-string v4, "com.htc.omadm.phone.state"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v36, intent:Landroid/content/Intent;
    const-string v4, "OTASP"

    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "Send intent:com.htc.omadm.phone.state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v36           #intent:Landroid/content/Intent;
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumberToDefault(I)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_1a
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xaa

    if-eq v4, v5, :cond_33

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xb

    if-eq v4, v5, :cond_33

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v4, v5, :cond_0

    :cond_33
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_34

    const-string v4, "EVENT_LBS_POPUP_NOTIFY Info ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_35

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v37, v4

    check-cast v37, [I

    .restart local v37       #ints:[I
    const/4 v4, 0x0

    aget v39, v37, v4

    .local v39, lbsvalue:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LBS_POPUP_NOTIFY Info LBS value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x2

    move/from16 v0, v39

    if-ne v0, v4, :cond_0

    const-string v4, "Send LBS intent to trigger popup"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    new-instance v20, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.LBS.DIALOG.NOTIFY"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v20, LBS_notify_intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v20           #LBS_notify_intent:Landroid/content/Intent;
    .end local v37           #ints:[I
    .end local v39           #lbsvalue:I
    :cond_35
    const-string v4, "EVENT_LBS_POPUP_NOTIFY no this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorProperties()V

    const-string v4, "handleMessage: EVENT_POLL_STATE_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v38, v4

    check-cast v38, [I

    .local v38, isSIMRemoved:[I
    const-string v5, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v38, :cond_36

    move-object/from16 v0, v38

    array-length v4, v0

    :goto_11
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v38, :cond_0

    move-object/from16 v0, v38

    array-length v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget v4, v38, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    :cond_36
    const/4 v4, -0x1

    goto :goto_11

    .end local v23           #ar:Landroid/os/AsyncResult;
    .end local v38           #isSIMRemoved:[I
    :pswitch_1d
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    const-string v4, "CDMA"

    const-string v5, "receive EVENT_KDDI_OTASP for kddi otasp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    if-eqz v23, :cond_3c

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3b

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v53, v4, v5

    .local v53, otaReq:I
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    const-string v5, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddi otasp required: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v53

    if-ne v0, v4, :cond_39

    const-string v4, "true"

    :goto_12
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v4, 0x1

    move/from16 v0, v53

    if-ne v0, v4, :cond_3a

    :try_start_3
    const-string v4, "CDMA"

    const-string v5, "launch otasp Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Landroid/content/Intent;

    const-string v4, "com.htc.android.uim.otasp.start"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v36       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v36           #intent:Landroid/content/Intent;
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOtaspState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    goto/16 :goto_0

    :cond_39
    const-string v4, "false"

    goto :goto_12

    :catch_2
    move-exception v29

    .restart local v29       #e:Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .end local v29           #e:Ljava/lang/Exception;
    :cond_3a
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    goto :goto_13

    .end local v53           #otaReq:I
    :cond_3b
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_KDDI_OTASP exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3c
    const-string v4, "CDMA"

    const-string v5, "receive EVENT_KDDI_OTASP null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v23           #ar:Landroid/os/AsyncResult;
    :pswitch_1e
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d

    const-string v4, "CDMA"

    const-string v5, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE for kddi otsap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    .restart local v23       #ar:Landroid/os/AsyncResult;
    if-eqz v23, :cond_3f

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3e

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "CDMA"

    const-string v5, "kddi otsap required"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3e
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3f
    const-string v4, "CDMA"

    const-string v5, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v9       #baseStationId:I
    .restart local v10       #baseStationLatitude:I
    .restart local v11       #baseStationLongitude:I
    .restart local v12       #systemId:I
    .restart local v13       #networkId:I
    .restart local v56       #registrationState:I
    .restart local v60       #states:[Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_1
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_0
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 11
    .parameter "what"
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v6, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_a

    const/4 v1, 0x0

    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    :cond_2
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollStateResult: RIL returned an error where it must succeed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v7, v6, v8

    add-int/lit8 v7, v7, -0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v6, v6, v8

    if-nez v6, :cond_0

    const/4 v4, 0x0

    .local v4, namMatch:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    :cond_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    const/4 v3, 0x1

    .local v3, isPrlLoaded:Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x0

    :cond_7
    if-nez v3, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    .local v5, roamingIndicator:I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .local v0, eriIconInd:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". mCdmaRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isPrlLoaded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". namMatch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mIsInPrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRoamingIndicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", eriIconInd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDefaultRoamingIndicator= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x55

    if-ne v6, v7, :cond_9

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x66

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v7, :cond_9

    const-string v6, "MPCS SIM set ECC only service in ABSENT"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v10}, Landroid/telephony/ServiceState;->setState(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .end local v0           #eriIconInd:I
    .end local v3           #isPrlLoaded:Z
    .end local v4           #namMatch:Z
    .end local v5           #roamingIndicator:I
    :cond_a
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #namMatch:Z
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_2

    .restart local v3       #isPrlLoaded:Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v4, :cond_d

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    :cond_d
    if-eqz v4, :cond_e

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    :cond_e
    if-nez v4, :cond_f

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    :cond_f
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-gt v6, v10, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    :cond_10
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 32
    .parameter "what"
    .parameter "ar"

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v2, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/RegStateResponse;

    if-eqz v2, :cond_10

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RegStateResponse;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v30

    .local v30, states:[Ljava/lang/String;
    :goto_1
    const/16 v27, 0x4

    .local v27, registrationState:I
    const/16 v25, -0x1

    .local v25, radioTechnology:I
    const/4 v7, -0x1

    .local v7, baseStationId:I
    const v8, 0x7fffffff

    .local v8, baseStationLatitude:I
    const v9, 0x7fffffff

    .local v9, baseStationLongitude:I
    const/16 v18, 0x0

    .local v18, cssIndicator:I
    const/4 v10, 0x0

    .local v10, systemId:I
    const/4 v11, 0x0

    .local v11, networkId:I
    const/16 v28, -0x1

    .local v28, roamingIndicator:I
    const/16 v31, 0x0

    .local v31, systemIsInPrl:I
    const/16 v19, 0x0

    .local v19, defaultRoamingIndicator:I
    const/16 v26, 0x0

    .local v26, reasonForDenial:I
    move-object/from16 v0, v30

    array-length v2, v0

    const/16 v3, 0xe

    if-lt v2, v3, :cond_11

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v30, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    :cond_1
    const/4 v2, 0x3

    aget-object v2, v30, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    :cond_2
    const/4 v2, 0x4

    aget-object v2, v30, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_3
    const/4 v2, 0x5

    aget-object v2, v30, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_4
    const/4 v2, 0x6

    aget-object v2, v30, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_5
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    :cond_6
    const/4 v2, 0x7

    aget-object v2, v30, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :cond_7
    const/16 v2, 0x8

    aget-object v2, v30, v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_8
    const/16 v2, 0x9

    aget-object v2, v30, v2

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_9
    const/16 v2, 0xa

    aget-object v2, v30, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    :cond_a
    const/16 v2, 0xb

    aget-object v2, v30, v2

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    :cond_b
    const/16 v2, 0xc

    aget-object v2, v30, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    :cond_c
    const/16 v2, 0xd

    aget-object v2, v30, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    aget-object v2, v30, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v6

    .local v6, nitzServiceState:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventTime:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getEventDate:Ljava/util/Date;

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v22

    .local v22, nitzIso:Ljava/lang/String;
    if-eqz v22, :cond_e

    packed-switch v6, :pswitch_data_1

    .end local v6           #nitzServiceState:I
    .end local v22           #nitzIso:Ljava/lang/String;
    :cond_e
    :goto_3
    :pswitch_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xa

    aget-object v2, v30, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setState(I)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setCdmaTechnology(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v10, v11}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-nez v31, :cond_13

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    if-nez v26, :cond_14

    const-string v2, "General"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration denied, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_16

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->htcSetCdmaRadioPowerSaveMode(Z)V

    goto/16 :goto_0

    .end local v7           #baseStationId:I
    .end local v8           #baseStationLatitude:I
    .end local v9           #baseStationLongitude:I
    .end local v10           #systemId:I
    .end local v11           #networkId:I
    .end local v18           #cssIndicator:I
    .end local v19           #defaultRoamingIndicator:I
    .end local v25           #radioTechnology:I
    .end local v26           #reasonForDenial:I
    .end local v27           #registrationState:I
    .end local v28           #roamingIndicator:I
    .end local v30           #states:[Ljava/lang/String;
    .end local v31           #systemIsInPrl:I
    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .restart local v30       #states:[Ljava/lang/String;
    goto/16 :goto_1

    .restart local v7       #baseStationId:I
    .restart local v8       #baseStationLatitude:I
    .restart local v9       #baseStationLongitude:I
    .restart local v10       #systemId:I
    .restart local v11       #networkId:I
    .restart local v18       #cssIndicator:I
    .restart local v19       #defaultRoamingIndicator:I
    .restart local v25       #radioTechnology:I
    .restart local v26       #reasonForDenial:I
    .restart local v27       #registrationState:I
    .restart local v28       #roamingIndicator:I
    .restart local v31       #systemIsInPrl:I
    :catch_0
    move-exception v20

    .local v20, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v20           #ex:Ljava/lang/NumberFormatException;
    :cond_11
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " strings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v6       #nitzServiceState:I
    .restart local v22       #nitzIso:Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_3

    .end local v6           #nitzServiceState:I
    .end local v22           #nitzIso:Ljava/lang/String;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_15

    const-string v2, "Authentication Failure"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_6

    :cond_16
    const/4 v2, 0x0

    goto :goto_7

    .end local v7           #baseStationId:I
    .end local v8           #baseStationLatitude:I
    .end local v9           #baseStationLongitude:I
    .end local v10           #systemId:I
    .end local v11           #networkId:I
    .end local v18           #cssIndicator:I
    .end local v19           #defaultRoamingIndicator:I
    .end local v25           #radioTechnology:I
    .end local v26           #reasonForDenial:I
    .end local v27           #registrationState:I
    .end local v28           #roamingIndicator:I
    .end local v30           #states:[Ljava/lang/String;
    .end local v31           #systemIsInPrl:I
    :pswitch_3
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v24, v2

    check-cast v24, [Ljava/lang/String;

    .local v24, opNames:[Ljava/lang/String;
    if-eqz v24, :cond_1d

    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA - len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v4, 0x2

    aget-object v4, v24, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->fakeOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    :cond_17
    const/16 v23, 0x0

    .local v23, opLong:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    const/16 v21, 0x1

    .local v21, isRoaming:Z
    :goto_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v29

    .local v29, slotType:[Ljava/lang/String;
    if-eqz v21, :cond_19

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_19

    const-string v2, "CDMA"

    const-string v3, "KDDI and into roaming network"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x40700c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_9
    const/4 v2, 0x0

    aget-object v2, v24, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x1

    aget-object v3, v24, v3

    const/4 v4, 0x2

    aget-object v4, v24, v4

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v4}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v21           #isRoaming:Z
    .end local v23           #opLong:Ljava/lang/String;
    .end local v29           #slotType:[Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v24, :cond_1e

    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1e

    const/4 v2, 0x2

    aget-object v2, v24, v2

    :goto_b
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #nitzIso:Ljava/lang/String;
    if-eqz v22, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v22           #nitzIso:Ljava/lang/String;
    .restart local v23       #opLong:Ljava/lang/String;
    :cond_18
    const/16 v21, 0x0

    goto :goto_8

    .restart local v21       #isRoaming:Z
    .restart local v29       #slotType:[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #opLong:Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .restart local v23       #opLong:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In mOperatorStringLists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    aget-object v2, v29, v2

    const-string v3, "NV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v2, v3, :cond_1b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriText()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_9

    :cond_1c
    const/4 v2, 0x0

    aget-object v23, v24, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opNames[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v21           #isRoaming:Z
    .end local v23           #opLong:Ljava/lang/String;
    .end local v29           #slotType:[Ljava/lang/String;
    :cond_1d
    const-string v2, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "simRemainActive"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "icsDcTracker"
    .parameter "simRemainActive"

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v1, mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    if-nez v0, :cond_1

    const-string v3, "dcTracker pointer is null, turn off radio right away"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x42018

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->arg1:I

    const-string v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    monitor-enter p0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected htcSetPowerStateToDesired(Ljava/lang/Boolean;)V
    .locals 10
    .parameter "isRequestedByPhoneApp"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v1, mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->partialDisableUnderMultiPhone(Landroid/content/Context;)[Z

    move-result-object v2

    .local v2, partialDisableStatus:[Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPowerStateToDesired, mDesiredPowerState="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", pref="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->logBooleanArray([Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", state="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", requestByPhone="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", bootState="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-boolean v5, v2, v5

    if-eqz v5, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    :cond_0
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v3

    .local v3, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v3, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v7, v4, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    :cond_2
    invoke-virtual {v3, v6, v4, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    :goto_2
    if-eqz v1, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    .end local v3           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .end local p1
    :cond_3
    :goto_3
    return-void

    .end local v2           #partialDisableStatus:[Z
    .restart local p1
    :cond_4
    move-object v2, v4

    goto/16 :goto_0

    .restart local v2       #partialDisableStatus:[Z
    :cond_5
    const-string v5, ""

    goto :goto_1

    .restart local v3       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2

    .end local v3           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v4

    if-nez v4, :cond_8

    const v5, 0xc3bc

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-static {v5, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz p1, :cond_a

    .end local p1
    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_3

    .restart local p1
    :cond_9
    move v4, v7

    goto :goto_4

    :cond_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_b
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_c

    if-eqz v1, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcConnectionRequest()V

    goto :goto_3

    :cond_c
    if-eqz p1, :cond_d

    .end local p1
    :goto_6
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_3

    .restart local p1
    :cond_d
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isIMSIReady()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method public isReportImsiFromCdma()Ljava/lang/Boolean;
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSidsAllZeros()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .end local v0           #i:I
    :goto_1
    return v1

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method monitorLocaleChange()V
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver_miui:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 33
    .parameter "ar"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v31, v0

    .local v31, oldSignalStrength:Landroid/telephony/SignalStrength;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v27, v1

    check-cast v27, [I

    .local v27, ints:[I
    const/16 v30, 0x2

    .local v30, offset:I
    const/4 v1, 0x0

    aget v1, v27, v1

    add-int/lit8 v2, v1, -0x1

    .local v2, signalBar:I
    const/4 v3, -0x1

    .local v3, evdoSignalBar:I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->signalBarLogControl(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "signalBar:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    aget v1, v27, v1

    add-int/lit8 v3, v1, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "evdoSignalBar="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_3
    aget v1, v27, v30

    if-lez v1, :cond_7

    aget v1, v27, v30

    neg-int v4, v1

    .local v4, cdmaDbm:I
    :goto_2
    const/4 v1, 0x3

    aget v1, v27, v1

    if-lez v1, :cond_8

    const/4 v1, 0x3

    aget v1, v27, v1

    neg-int v5, v1

    .local v5, cdmaEcio:I
    :goto_3
    const/4 v1, 0x4

    aget v1, v27, v1

    if-lez v1, :cond_9

    const/4 v1, 0x4

    aget v1, v27, v1

    neg-int v6, v1

    .local v6, evdoRssi:I
    :goto_4
    const/4 v1, 0x5

    aget v1, v27, v1

    if-lez v1, :cond_a

    const/4 v1, 0x5

    aget v1, v27, v1

    neg-int v7, v1

    .local v7, evdoEcio:I
    :goto_5
    const/4 v1, 0x6

    aget v1, v27, v1

    if-lez v1, :cond_b

    const/4 v1, 0x6

    aget v1, v27, v1

    const/16 v12, 0x8

    if-gt v1, v12, :cond_b

    const/4 v1, 0x6

    aget v8, v27, v1

    .local v8, evdoSnr:I
    :goto_6
    const/4 v9, -0x1

    .local v9, lteSignalStrength:I
    const/4 v10, -0x1

    .local v10, lteRsrp:I
    const/16 v28, -0x1

    .local v28, lteRsrq:I
    const v29, 0x7fffffff

    .local v29, lteRssnr:I
    const/4 v11, -0x1

    .local v11, lteCqi:I
    const/16 v25, -0x1

    .local v25, htcLteRsrp:I
    const/16 v26, -0x1

    .local v26, htcLteRsrq:I
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v12, 0xd

    if-lt v1, v12, :cond_c

    const/16 v32, 0x1

    .local v32, withLteExtension:Z
    :goto_7
    if-eqz v32, :cond_4

    const/16 v1, 0x9

    aget v1, v27, v1

    if-lez v1, :cond_d

    const/16 v1, 0x9

    aget v1, v27, v1

    neg-int v9, v1

    :goto_8
    const/16 v1, 0xa

    aget v1, v27, v1

    if-lez v1, :cond_e

    const/16 v1, 0xa

    aget v1, v27, v1

    neg-int v10, v1

    :goto_9
    const/16 v1, 0xa

    aget v1, v27, v1

    if-lez v1, :cond_f

    const/16 v1, 0xa

    aget v25, v27, v1

    :goto_a
    const/16 v1, 0xb

    aget v1, v27, v1

    if-lez v1, :cond_10

    const/16 v1, 0xb

    aget v1, v27, v1

    neg-int v0, v1

    move/from16 v28, v0

    :goto_b
    const/16 v1, 0xb

    aget v1, v27, v1

    if-lez v1, :cond_11

    const/16 v1, 0xb

    aget v26, v27, v1

    :goto_c
    const/16 v1, 0xc

    aget v1, v27, v1

    if-lez v1, :cond_12

    const/16 v1, 0xc

    aget v1, v27, v1

    neg-int v0, v1

    move/from16 v29, v0

    :cond_4
    :goto_d
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v12, 0xe

    if-lt v1, v12, :cond_5

    const/16 v1, 0xd

    aget v1, v27, v1

    if-lez v1, :cond_13

    const/16 v1, 0xd

    aget v1, v27, v1

    neg-int v11, v1

    :cond_5
    :goto_e
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_6
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v28

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setLteRsrq(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v29

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setLteRssnr(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v25

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setHtcLteRsrp(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v26

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setHtcLteRsrq(I)V

    goto/16 :goto_0

    .end local v4           #cdmaDbm:I
    .end local v5           #cdmaEcio:I
    .end local v6           #evdoRssi:I
    .end local v7           #evdoEcio:I
    .end local v8           #evdoSnr:I
    .end local v9           #lteSignalStrength:I
    .end local v10           #lteRsrp:I
    .end local v11           #lteCqi:I
    .end local v25           #htcLteRsrp:I
    .end local v26           #htcLteRsrq:I
    .end local v28           #lteRsrq:I
    .end local v29           #lteRssnr:I
    .end local v32           #withLteExtension:Z
    :cond_7
    const/16 v4, -0x78

    goto/16 :goto_2

    .restart local v4       #cdmaDbm:I
    :cond_8
    const/16 v5, -0xa0

    goto/16 :goto_3

    .restart local v5       #cdmaEcio:I
    :cond_9
    const/16 v6, -0x78

    goto/16 :goto_4

    .restart local v6       #evdoRssi:I
    :cond_a
    const/4 v7, -0x1

    goto/16 :goto_5

    .restart local v7       #evdoEcio:I
    :cond_b
    const/4 v8, -0x1

    goto/16 :goto_6

    .restart local v8       #evdoSnr:I
    .restart local v9       #lteSignalStrength:I
    .restart local v10       #lteRsrp:I
    .restart local v11       #lteCqi:I
    .restart local v25       #htcLteRsrp:I
    .restart local v26       #htcLteRsrq:I
    .restart local v28       #lteRsrq:I
    .restart local v29       #lteRssnr:I
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_7

    .restart local v32       #withLteExtension:Z
    :cond_d
    const/4 v9, -0x1

    goto/16 :goto_8

    :cond_e
    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_f
    const/16 v25, -0x1

    goto/16 :goto_a

    :cond_10
    const/16 v28, -0x1

    goto/16 :goto_b

    :cond_11
    const/16 v26, -0x1

    goto :goto_c

    :cond_12
    const/16 v29, -0x1

    goto :goto_d

    :cond_13
    const/4 v11, -0x1

    goto :goto_e

    :cond_14
    new-instance v12, Landroid/telephony/SignalStrength;

    const/4 v14, -0x1

    const/16 v23, 0x0

    move v13, v2

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-direct/range {v12 .. v23}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_f

    .end local v2           #signalBar:I
    .end local v3           #evdoSignalBar:I
    .end local v4           #cdmaDbm:I
    .end local v5           #cdmaEcio:I
    .end local v6           #evdoRssi:I
    .end local v7           #evdoEcio:I
    .end local v8           #evdoSnr:I
    .end local v9           #lteSignalStrength:I
    .end local v10           #lteRsrp:I
    .end local v11           #lteCqi:I
    .end local v25           #htcLteRsrp:I
    .end local v26           #htcLteRsrq:I
    .end local v27           #ints:[I
    .end local v28           #lteRsrq:I
    .end local v29           #lteRssnr:I
    .end local v30           #offset:I
    .end local v32           #withLteExtension:Z
    :catch_0
    move-exception v24

    .local v24, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "SignalStrength not notified"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sidStr"
    .parameter "nidStr"

    .prologue
    if-eqz p1, :cond_0

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, sid:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v3           #sid:[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, nid:[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0       #ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v2           #nid:[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aput v1, v2, v1

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .local v0, airplaneMode:I
    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .end local v0           #airplaneMode:I
    :cond_1
    move v0, v1

    goto :goto_1

    .restart local v0       #airplaneMode:I
    :cond_2
    const-string v2, "Radio unavaliable off"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v0           #airplaneMode:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pollStateDone: oldSS=[(same)] newSS=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_f

    const/4 v8, 0x1

    .local v8, hasRegistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-eqz v13, :cond_10

    const/4 v5, 0x1

    .local v5, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    if-nez v13, :cond_11

    const/4 v1, 0x1

    .local v1, hasCdmaDataConnectionAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    if-eqz v13, :cond_12

    const/4 v3, 0x1

    .local v3, hasCdmaDataConnectionDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    if-eq v13, v14, :cond_13

    const/4 v2, 0x1

    .local v2, hasCdmaDataConnectionChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRilRadioTechnology:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewRilRadioTechnology:I

    if-eq v13, v14, :cond_14

    const/4 v7, 0x1

    .local v7, hasRadioTechnologyChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v4, 0x1

    .local v4, hasChanged:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v10, 0x1

    .local v10, hasRoamingOn:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-nez v13, :cond_17

    const/4 v9, 0x1

    .local v9, hasRoamingOff:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v13, v14}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    const/4 v6, 0x1

    .local v6, hasLocationChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    if-eq v13, v14, :cond_1

    :cond_0
    const v13, 0xc3c4

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .local v12, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .local v11, tcl:Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewRilRadioTechnology:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRilRadioTechnology:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewRilRadioTechnology:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_3
    if-eqz v5, :cond_4

    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorProperties()V

    const-string v13, "operatorNumeric is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v15, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-eqz v13, :cond_19

    const-string v13, "true"

    :goto_b
    invoke-virtual {v14, v15, v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->forceSpnUpdate:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_5
    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_7
    if-nez v2, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_a
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_b
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->displayNitzHistory(Z)V

    :cond_d
    return-void

    .end local v1           #hasCdmaDataConnectionAttached:Z
    .end local v2           #hasCdmaDataConnectionChanged:Z
    .end local v3           #hasCdmaDataConnectionDetached:Z
    .end local v4           #hasChanged:Z
    .end local v5           #hasDeregistered:Z
    .end local v6           #hasLocationChanged:Z
    .end local v7           #hasRadioTechnologyChanged:Z
    .end local v8           #hasRegistered:Z
    .end local v9           #hasRoamingOff:Z
    .end local v10           #hasRoamingOn:Z
    .end local v11           #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12           #tss:Landroid/telephony/ServiceState;
    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pollStateDone: oldSS=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] newSS=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .restart local v8       #hasRegistered:Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    .restart local v5       #hasDeregistered:Z
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_3

    .restart local v1       #hasCdmaDataConnectionAttached:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    .restart local v3       #hasCdmaDataConnectionDetached:Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .restart local v2       #hasCdmaDataConnectionChanged:Z
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_6

    .restart local v7       #hasRadioTechnologyChanged:Z
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .restart local v4       #hasChanged:Z
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_8

    .restart local v10       #hasRoamingOn:Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_9

    .restart local v9       #hasRoamingOff:Z
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_a

    .restart local v6       #hasLocationChanged:Z
    .restart local v11       #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v12       #tss:Landroid/telephony/ServiceState;
    :cond_19
    const-string v13, "false"

    goto/16 :goto_b
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    .local v0, retVal:I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method protected setCdmaTechnology(I)V
    .locals 1
    .parameter "radioTech"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->radioTechnologyToDataServiceState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewDataConnectionState:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewRilRadioTechnology:I

    return-void
.end method

.method public setHtcCurrentOtaspMode(I)V
    .locals 4
    .parameter "status"

    .prologue
    sget v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    .local v1, oldOtaspMode:I
    move v0, p1

    .local v0, newOtaspMode:I
    if-eq v1, v0, :cond_0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHtcCurrentOtaspMode: oldOtaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newOtaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    return-void
.end method

.method public setKddiOtaStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setUimOtaStatus(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcSetPowerStateToDesired(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v8, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected updateNetworkNameDisplay()V
    .locals 21

    .prologue
    const-string v5, ""

    .local v5, spn:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, showSpn:Z
    const-string v3, ""

    .local v3, plmn:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, rule:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    .local v19, serviceStatus:I
    const-string v2, "networkState"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .local v16, numeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #plmn:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #plmn:Ljava/lang/String;
    move-object/from16 v17, v16

    .local v17, plmnSource:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "gsm.operator.alpha"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->forceSpnUpdate:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriBannerStyle()I

    move-result v20

    .local v20, showPlmnStyle:I
    const/4 v14, 0x0

    .local v14, flashPlmn:Z
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    const/4 v14, 0x1

    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const-string v8, "PLMN"

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .end local v14           #flashPlmn:Z
    .end local v20           #showPlmnStyle:I
    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .end local v16           #numeric:Ljava/lang/String;
    .end local v17           #plmnSource:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .restart local v16       #numeric:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v17, "RIL"

    .restart local v17       #plmnSource:Ljava/lang/String;
    goto :goto_0

    :cond_5
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No change plmn("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v16           #numeric:Ljava/lang/String;
    .end local v17           #plmnSource:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "NOSRV"

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpnRule:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curSpn:Ljava/lang/String;

    goto :goto_2
.end method

.method protected updateOtaspState()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v1

    .local v1, otaspMode:I
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .local v0, oldOtaspMode:I
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    const-string v2, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    :cond_1
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .local v1, plmn:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->forceSpnUpdate:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v8, ""

    .local v8, spn:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, showSpn:Z
    const/4 v13, 0x0

    .local v13, rule:I
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .local v12, numeric:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    if-eqz v0, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x40700ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v3, 0x0

    const-string v6, "CT"

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .end local v12           #numeric:Ljava/lang/String;
    :goto_0
    return-void

    .restart local v12       #numeric:Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .end local v12           #numeric:Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->forceSpnUpdate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    move v14, v2

    .local v14, showPlmn:Z
    :goto_1
    const-string v0, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const-string v11, "SPN"

    move-object v6, v1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .end local v14           #showPlmn:Z
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->forceSpnUpdate:Z

    goto :goto_0

    :cond_4
    move v14, v4

    goto :goto_1
.end method
