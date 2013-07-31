.class public Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfIccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$4;,
        Lcom/android/internal/telephony/IccCard$State;,
        Lcom/android/internal/telephony/IccCard$IccCardState;,
        Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;
    }
.end annotation


# static fields
.field public static final CARD_IS_3GPP:Z = true

.field public static final CARD_IS_NOT_3GPP:Z = false

.field private static final EVENT_AUTO_SELECT_NETWORK_DONE:I = 0x40

.field private static final EVENT_AUTO_VERIFY_MSG:I = 0x3c

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xf

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field private static final EVENT_CHECKPIN2_DONE:I = 0x3e

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x3f6

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x3f4

.field protected static final EVENT_GET_ICC_DETAIL_STATUS_DONE:I = 0x32

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_TYPE_DONE:I = 0x38

.field protected static final EVENT_GET_SUBSCRIPTION_SOURCE:I = 0x36

.field protected static final EVENT_GET_SUBSIDY_LOCK_TYPES_DONE:I = 0x33

.field protected static final EVENT_ICC_LOCKED:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field private static final EVENT_MANUAL_SELECT_NETWORK_DONE:I = 0x3f

.field protected static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0x3fa

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x3f5

.field private static final EVENT_PIN1PUK1_DONE:I = 0x3a

.field private static final EVENT_PIN2PUK2_DONE:I = 0x3b

.field private static final EVENT_PIN2PUK2_DONE_VIA_ATD:I = 0x3d

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_ON:I = 0x10

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3f9

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field protected static final EVENT_SET_SUBSIDY_LOCK_TYPE_DONE:I = 0x34

.field protected static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x3f8

.field private static final EVENT_SIM_IO_DONE:I = 0x3f7

.field protected static final EVENT_SUBSCRIPTION_SOURCE_CHANGED:I = 0x35

.field public static final INTENT_KEY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "ICC_OPERATOR_NUMERIC"

.field public static final INTENT_KEY_ICC_PROVISIONED:Ljava/lang/String; = "POVISIONED"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_ICC_TYPE:Ljava/lang/String; = "ICC_TYPE"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_KEY_LOCKED_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final INTENT_KEY_PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_DETAIL_STATUS:Ljava/lang/String; = "IccStatusInfo"

.field public static final INTENT_VALUE_ICC_EXPIRED:Ljava/lang/String; = "ICC_EXPIRED"

.field public static final INTENT_VALUE_ICC_FAIL:Ljava/lang/String; = "ICC_FAIL"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_ABSENT:Ljava/lang/String; = "ICC_HOT_SWAP_ABSENT"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED_ERROR:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_INVALID:Ljava/lang/String; = "SIM INVALID"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK:Ljava/lang/String; = "LOADED_UNDER_NETWORK_LOCK"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_IMEI_LOCKED:Ljava/lang/String; = "IMEI_LOCK"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field public static final INTENT_VALUE_PERM_BLOCKED:Ljava/lang/String; = "PERM_BLOCKED"

.field protected static SELECT_NETWORK_DONE_STATE:I = 0x0

.field public static final UICC_TYPE_2G:I = 0x0

.field public static final UICC_TYPE_3G:I = 0x1

.field public static final UICC_TYPE_4G:I = 0x2

.field public static mHotSwap:I


# instance fields
.field private final INVALID_INDEX:I

.field protected is3gpp:Z

.field private isHotSwapInserted:Z

.field protected isSubscriptionFromIccCard:Z

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field protected mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field protected mCdmaSubscriptionSource:I

.field mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccExpired:Z

.field private mIccExpiredRegistrants:Landroid/os/RegistrantList;

.field private mIccFailRegistrants:Landroid/os/RegistrantList;

.field private mIccFdnEnabled:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

.field private mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

.field private mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field protected mIccHotSwapHandler:Landroid/os/Handler;

.field private mIccPinLocked:Z

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected mIccStatusInfo:[I

.field private mImeiLockedRegistrants:Landroid/os/RegistrantList;

.field protected mLogTag:Ljava/lang/String;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mReadyRegistrants:Landroid/os/RegistrantList;

.field protected mRuimReadyRegistrants:Landroid/os/RegistrantList;

.field protected mState:Lcom/android/internal/telephony/IccCard$State;

.field private final mStateMonitor:Ljava/lang/Object;

.field protected mSubsidyLockTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "phone"
    .parameter "logTag"
    .parameter "is3gpp"
    .parameter "dbg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    iput v1, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    sget-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    iput v1, p0, Lcom/android/internal/telephony/IccCard;->INVALID_INDEX:I

    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/telephony/IccCard$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$3;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Creating card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f8

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3fa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "3gpp2"

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/IccCardStatus;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccDetailStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method private checkAllAppsState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 6
    .parameter "csimState"
    .parameter "usimState"

    .prologue
    const/4 v5, -0x1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v3, :cond_4

    :cond_0
    const/4 v2, 0x1

    .local v2, isReady:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .local v1, iccapp:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v4, :cond_3

    const/4 v2, 0x0

    .end local v1           #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    if-nez v2, :cond_4

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .end local v0           #i:I
    .end local v2           #isReady:Z
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .restart local v0       #i:I
    .restart local v1       #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v2       #isReady:Z
    .restart local p1
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #isReady:Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    if-ne v5, v3, :cond_2

    move-object p1, p2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    if-eq v5, v3, :cond_2

    move-object p1, p2

    goto :goto_1
.end method

.method private checkCardState(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 5
    .parameter "cardStatus"

    .prologue
    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    .local v1, newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFail()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCardState() OldState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    if-eq v2, v1, :cond_4

    sget-object v2, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    if-ne v1, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.htc.intent.action.SIMDetectedNotify"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, bc:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v0           #bc:Landroid/content/Intent;
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .end local v1           #newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    :cond_4
    return-void

    .restart local v1       #newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardNotInit()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_ABSENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    goto :goto_0
.end method

.method private convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I
    .locals 2
    .parameter "perso_substate"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAppState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 4
    .parameter "appIndex"

    .prologue
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present, return unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isIMEILocked()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "preferredState"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_3

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_6

    :cond_5
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_7

    move-object p1, p2

    goto :goto_0

    :cond_7
    move-object p1, p3

    goto :goto_0
.end method

.method private getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    .locals 3

    .prologue
    new-instance v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .local v1, status:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .local v0, dummyIccCardApp:Lcom/android/internal/telephony/IccCardApplication;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    return-object v1
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .local v0, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->update(Lcom/android/internal/telephony/IccCardStatus;)V

    .end local v0           #iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    .local v1, newIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "mIccCardStatus is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getIccDetailStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on getting SIM Detail status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .local v0, data:[B
    if-eqz v0, :cond_2

    array-length v2, v0

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error on getting incorrect length of data."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->resetIccDetailStatus()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x12

    .local v1, i:I
    :goto_1
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    add-int/lit8 v3, v1, -0x12

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error on getting subsidy lock types."

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subsidy Lock type(s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .local v1, newSubscriptionSource:I
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Cdma subscription source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .local v0, isNewSubFromRuim:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "not handleIccCardStatus in handleCdmaSubscriptionSource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #isNewSubFromRuim:Z
    .end local v1           #newSubscriptionSource:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #newSubscriptionSource:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #isNewSubFromRuim:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_1
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 20
    .parameter "newCardStatus"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    .local v6, oldRuimState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .local v7, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .local v5, newState:Lcom/android/internal/telephony/IccCard$State;
    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v16, 0x55

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MPCS SIM iccCardStatus.getCardState():"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",newState:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",SELECT_NETWORK_DONE_STATE:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_e

    sget v15, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MPCS SIM setNetworkSelectionModeAutomatic (SELECT_NETWORK_DONE_STATE:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to 1)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    const/4 v15, 0x1

    sput v15, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccCard;->checkCardState(Lcom/android/internal/telephony/IccCardStatus;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->handleIfGsmUmtsAppStateChanged()V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eqz v15, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    instance-of v15, v15, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/IccFileHandler;->setAid(Ljava/lang/String;)V

    :cond_4
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_5

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v5, v15, :cond_6

    :cond_5
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_10

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_10

    :cond_6
    const/4 v14, 0x1

    .local v14, transitionedIntoPinLocked:Z
    :goto_1
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_11

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_11

    const/4 v10, 0x1

    .local v10, transitionedIntoIccFail:Z
    :goto_2
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_12

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_12

    const/4 v11, 0x1

    .local v11, transitionedIntoImeiLocked:Z
    :goto_3
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_13

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_13

    const/4 v9, 0x1

    .local v9, transitionedIntoAbsent:Z
    :goto_4
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_14

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_14

    const/4 v12, 0x1

    .local v12, transitionedIntoNetworkLocked:Z
    :goto_5
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_15

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_15

    const/4 v13, 0x1

    .local v13, transitionedIntoPermBlocked:Z
    :goto_6
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v15

    if-eqz v15, :cond_16

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_16

    const/4 v4, 0x1

    .local v4, isIccCardRemoved:Z
    :goto_7
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v15, :cond_17

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v15

    if-eqz v15, :cond_17

    const/4 v3, 0x1

    .local v3, isIccCardAdded:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_18

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_7
    :goto_9
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v15

    sget-object v17, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_8
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v15

    if-eqz v15, :cond_a

    if-nez v14, :cond_9

    if-nez v10, :cond_9

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    const-string v15, "Notifying: NV ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v15, Lcom/android/internal/telephony/BaseCommands;

    iget-object v15, v15, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_a
    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_b

    const-string v15, "Notify SIM pin or puk locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    .local v2, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x32

    const/16 v17, 0x32

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .end local v2           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_c
    :goto_a
    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v15, :cond_d

    sget-object v15, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v15, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->notifyIccCardReady()V

    :cond_d
    :goto_b
    return-void

    .end local v3           #isIccCardAdded:Z
    .end local v4           #isIccCardRemoved:Z
    .end local v9           #transitionedIntoAbsent:Z
    .end local v10           #transitionedIntoIccFail:Z
    .end local v11           #transitionedIntoImeiLocked:Z
    .end local v12           #transitionedIntoNetworkLocked:Z
    .end local v13           #transitionedIntoPermBlocked:Z
    .end local v14           #transitionedIntoPinLocked:Z
    :cond_e
    sget v15, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    if-eqz v15, :cond_2

    const-string v15, "gsm.sim.operator.numeric"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MPCS SIM  setNetworkSelectionModeManual (SELECT_NETWORK_DONE_STATE:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x3f

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v8, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/IccCard;->SELECT_NETWORK_DONE_STATE:I

    goto/16 :goto_0

    .end local v8           #operatorNumeric:Ljava/lang/String;
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_1

    .restart local v14       #transitionedIntoPinLocked:Z
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v10       #transitionedIntoIccFail:Z
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_3

    .restart local v11       #transitionedIntoImeiLocked:Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_4

    .restart local v9       #transitionedIntoAbsent:Z
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_5

    .restart local v12       #transitionedIntoNetworkLocked:Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_6

    .restart local v13       #transitionedIntoPermBlocked:Z
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_7

    .restart local v4       #isIccCardRemoved:Z
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_8

    .restart local v3       #isIccCardAdded:Z
    :cond_18
    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    :cond_19
    if-eqz v10, :cond_1c

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v16, 0x50

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x38

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_1b

    const-string v15, "Notify SIM failure."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v15, "ICC_FAIL"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1c
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_1d

    const-string v15, "Notify SIM missing."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v15, "ABSENT"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v16, 0x23f

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v16, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    const-string v15, "ICC_HOT_SWAP_INSERTED_ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    if-eqz v12, :cond_1f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x33

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_a

    :cond_1f
    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_20

    const-string v15, "Notify SIM permanently disabled."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_20
    const-string v15, "ABSENT"

    const-string v16, "PERM_DISABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v15, :cond_22

    const-string v15, "Notify IMEI locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v15}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v15, "IMEI_LOCK"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eqz v15, :cond_d

    :cond_24
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v15

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v15, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyIccCardReady()V

    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v15}, Lcom/android/internal/telephony/IccRecords;->onReady()V

    goto/16 :goto_b
.end method

.method private handleIfGsmUmtsAppStateChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .local v2, idx:I
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .end local v2           #idx:I
    :cond_0
    :goto_0
    return-void

    .restart local v2       #idx:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .local v1, appState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-nez v3, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v1, :cond_0

    iput-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIfGsmUmtsAppStateChanged mIccGsmUmtsAppState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-direct {v4, v6, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    goto :goto_1

    :cond_4
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    const/4 v2, 0x0

    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x1040422

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x1040423

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x1040424

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x104041f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x1040420

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "uicc_type"
    .parameter "operator"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "POVISIONED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ICC_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_EXTRA_SIM_STATE_CHANGED provisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uicc_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "value"
    .parameter "reason"

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .local v2, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->hideSimLockFromUpperLayer()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "NOT_READY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "READY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IMSI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LOADED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PERM_DISABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SIM INVALID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_FAIL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_EXPIRED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PERM_BLOCKED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .local v1, operator:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ss"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "reason"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "IccStatusInfo"

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v3, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_1
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #operator:Ljava/lang/String;
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block SIM lock notify - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public checkPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "onComplete"

    .prologue
    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Disposing card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_4

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    :cond_3
    return-void

    :cond_4
    const-string v0, "3gpp2"

    goto :goto_0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f7

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Finalized card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_1

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "3gpp2"

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v0, ""

    .local v0, aid:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v4, :cond_0

    move-object v1, v0

    .end local v0           #aid:Ljava/lang/String;
    .local v1, aid:Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1           #aid:Ljava/lang/String;
    .restart local v0       #aid:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getCurrentApplicationIndex()I

    move-result v3

    .local v3, appIndex:I
    if-ltz v3, :cond_2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v2

    .local v2, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .end local v2           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_1
    move-object v1, v0

    .end local v0           #aid:Ljava/lang/String;
    .restart local v1       #aid:Ljava/lang/String;
    goto :goto_0

    .end local v1           #aid:Ljava/lang/String;
    .restart local v0       #aid:Ljava/lang/String;
    .restart local v2       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] getAid: no current application index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] getAid: Invalid Subscription Application index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, p1, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method protected getCurrentApplicationIndex()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "continue to IccCardProxy in Jewel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null in CDMA, return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] getIccCardState:READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFail()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardNotInit()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] !mIccCardStatus.getCardState().isCardPresent(), return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_b

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_c
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_e

    :cond_d
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_e
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .local v0, csimState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .local v2, usimState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_10

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_10

    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/IccCard;->getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_11

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCard;->checkAllAppsState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    goto/16 :goto_0

    .end local v0           #csimState:Lcom/android/internal/telephony/IccCard$State;
    .end local v2           #usimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] return default state-> UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "mIccCardStatus.getNumApplications() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getIccPhoneType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRuimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "ignore in Jewel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSubsidyLock()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    return v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 5
    .parameter "querySetting"
    .parameter "onComplete"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .local v2, index:I
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v1           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v2           #index:I
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSubsidyLock] querySetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isSim()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyIccCardReady()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->onReady()V

    :cond_0
    return-void
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForIccExpired(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForIccFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccFail()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->handleIfGsmUmtsAppStateChanged()V

    return-void
.end method

.method public registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRuimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestISIMRead(IIIIILandroid/os/Message;)V
    .locals 7
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->requestISIMRead(IIIIILandroid/os/Message;)V

    return-void
.end method

.method public requestQueryISIMSupported(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryISIMSupported(Landroid/os/Message;)V

    return-void
.end method

.method public requestResetWSIMState(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestResetWSIMState(Landroid/os/Message;)V

    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected resetIccDetailStatus()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIccCardExpired(Z)V
    .locals 2
    .parameter "expired"

    .prologue
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "Notify SIM Expired."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v0, "ICC_EXPIRED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    goto :goto_0
.end method

.method public setIccCardRemovedOrInsertedError(Ljava/lang/String;)V
    .locals 5
    .parameter "status"

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIccCardRemovedOrInsertedError() - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    const-string v2, "ICC_HOT_SWAP_ABSENT"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ICC_HOT_SWAP_INSERTED_ERROR"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.SIMRemovedDialogActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "ss"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #newIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, activityNotFound:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0xb

    const/16 v4, 0xf

    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    const/4 v0, 0x2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x7

    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    const/4 v0, 0x2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setInvalidICCCard()V
    .locals 0

    .prologue
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "onComplete"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubsidyLock] subsidyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2ViaATD()V
    .locals 0

    .prologue
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccExpired(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImeiLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRuimReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "iccState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
