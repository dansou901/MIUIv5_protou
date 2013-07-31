.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field public static final CDMA_NUMBER_HYPHENATION_KEY:Ljava/lang/String; = "cdma_number_hyphenation_key"

.field public static final CDMA_PLUS_CODE_DIALING_KEY:Ljava/lang/String; = "cdma_plus_code_dialing_key"

.field public static final CDMA_PLUS_CODE_DIALING_NUMBER_KEY:Ljava/lang/String; = "cdma_plus_code_dialing_number_key"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_ACDB_TABLE_CHANGED:I = 0x6f

.field protected static final EVENT_AUTO_WIFI_ON_LOC:I = 0x74

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field protected static final EVENT_CUSTOMIZE_SIM_INFO_NOTIFY:I = 0xc9

.field protected static final EVENT_DEACTIVATE_APPLICATION_DONE:I = 0x80

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BAND_CAPABILITY:I = 0x36

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_BARRED_DONE:I = 0x32

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_CDMA_LTE_STATE_REGISTRATION:I = 0x6e

.field protected static final EVENT_GET_CDMA_NV_PROGRAMMED_CARRIER_ID:I = 0x66

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_NETWORKS_DONE:I = 0x82

.field protected static final EVENT_GET_OTA_MSG_PROVISION_STATUS:I = 0x65

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_ICC_EXPIRED_FROM_RADIO:I = 0x37

.field protected static final EVENT_ICC_RECORDS_EONS_UPDATED:I = 0x81

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1e

.field protected static final EVENT_KDDI_GET_SMS_DELIVER_REPORT:I = 0x73

.field protected static final EVENT_KDDI_OTASP:I = 0x71

.field protected static final EVENT_KDDI_SET_OTASP_STATUS_DONE:I = 0x72

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_MODEM_RESTART_NOTIFY:I = 0x76

.field protected static final EVENT_NETWORK_SELECTION_STATE:I = 0x70

.field protected static final EVENT_NEW_ICC_SMS:I = 0x1d

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_REGISTER_RRCORDSLOADED:I = 0xc8

.field protected static final EVENT_REQUEST_HTC_DM_COMMAND_STRING:I = 0x64

.field protected static final EVENT_RESET_NETWORK_AUTOMATIC:I = 0xca

.field protected static final EVENT_RESTORE_MANUAL_SELECT_NETWORK_DONE:I = 0x35

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SELECT_APPLICATION_DONE:I = 0x7f

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_HOT_SWAP_COUNT:I = 0xcb

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SMART_NETWORK_NOTIFY:I = 0x75

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_STOP_INCOMING_USSD_NOTIFICATION:I = 0x34

.field protected static final EVENT_UNSOL_MM_LU_FAILED_CAUSE:I = 0x33

.field protected static final EVENT_USSD:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final GLOBAL_DATA_NETWORK_TYPE:Z = false

.field public static final LAST_SIM_IMSI_KEY:Ljava/lang/String; = "sim_imsi_key"

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MWI_STATUS_KEY:Ljava/lang/String; = "mwi_status_key"

.field public static final NETWORK_SELECTION_ACT_KEY:Ljava/lang/String; = "network_selection_act_key"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_REJECT_KEY:Ljava/lang/String; = "network_selection_reject_key"

.field protected static applyServiceStateMatrix:[[I


# instance fields
.field public MAX_DATA_POOL_SIZE:I

.field private dataNetworkType:Ljava/lang/Integer;

.field public m3GPreferred:Z

.field protected final mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field public mCM:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mCallConnectedRegistrants:Landroid/os/RegistrantList;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field protected final mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mContext:Landroid/content/Context;

.field public mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field protected final mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

.field private mFirstBoot:Z

.field protected mIccCard:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/IccCard;",
            ">;"
        }
    .end annotation
.end field

.field protected mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field public mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsTheCurrentActivePhone:Z

.field mIsVoiceCapable:Z

.field protected mLooper:Landroid/os/Looper;

.field protected final mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

.field protected mManualSelection:Z

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field public mPdpSupportNum:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mRadioOnRegistrants:Landroid/os/RegistrantList;

.field protected mRoamingFirstConfirmed:Z

.field public mSMS:Lcom/android/internal/telephony/SMSDispatcher;

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected mStorageAreaAvaliable:Ljava/lang/Boolean;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field mTempCLIR:I

.field protected final mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private voiceNetworkType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 4406
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x43

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1fe

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    .line 4576
    new-array v0, v4, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    return-void

    :cond_1
    move v0, v1

    .line 4406
    goto :goto_0

    .line 4576
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;)V
    .locals 3
    .parameter "notifier"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 383
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 270
    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 274
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/PhoneBase;->MAX_DATA_POOL_SIZE:I

    .line 275
    iput v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPdpSupportNum:I

    .line 289
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 293
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 296
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 299
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 302
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 305
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 308
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 311
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 314
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 317
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 321
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    .line 324
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    .line 328
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 333
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    .line 338
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 340
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

    .line 358
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mRoamingFirstConfirmed:Z

    .line 371
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 384
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 385
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 388
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "notifier"
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 400
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .parameter "notifier"
    .parameter "context"
    .parameter "ci"
    .parameter "unitTestMode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 412
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 255
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 257
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    .line 262
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 266
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 270
    iput v6, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 274
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->MAX_DATA_POOL_SIZE:I

    .line 275
    iput v4, p0, Lcom/android/internal/telephony/PhoneBase;->mPdpSupportNum:I

    .line 289
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 293
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 296
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 299
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 302
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 305
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 308
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 311
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 314
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 317
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 321
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    .line 324
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    .line 328
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 333
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    .line 338
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 340
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

    .line 358
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mRoamingFirstConfirmed:Z

    .line 371
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 413
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 414
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 415
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 416
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->setPropertiesByCarrier()V

    .line 420
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    .line 422
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    .local v1, sp:Landroid/content/SharedPreferences;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    .line 426
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 427
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 428
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 455
    const-string v2, "ro.telephony.call_ring.multiple"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    .line 457
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDoesRilSendMultipleCallRing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v2, "ro.telephony.call_ring.delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    .line 461
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallRingDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 465
    new-instance v2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x74

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAutoWifiOnLocNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 469
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x75

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmartNetworkNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x76

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemResetNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xcb

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwapCount(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    return-void

    .line 432
    :cond_0
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    goto/16 :goto_0
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1143
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_0
    return-void
.end method

.method private getSavedNetworkAct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 860
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_act_key"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSavedNetworkRejectStatus()Z
    .locals 3

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 867
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_reject_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static htcRadioOnWhenStorageAreaNotAvaliable()Z
    .locals 2

    .prologue
    .line 4486
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 4489
    const/4 v0, 0x1

    .line 4492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initUSSDVerificationStrings()V
    .locals 2

    .prologue
    .line 2448
    const-string v0, "PHONE"

    const-string v1, "initUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    return-void
.end method

.method public static isStorageAreaAvaliable(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 8
    .parameter "context"

    .prologue
    .line 4507
    const/4 v0, 0x1

    .line 4508
    .local v0, areaAvaliable:Z
    const/4 v3, 0x0

    .line 4509
    .local v3, encryptState:I
    const/4 v1, 0x0

    .line 4512
    .local v1, cryptState:Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v5}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 4513
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_3

    .line 4514
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 4515
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 4516
    const/4 v0, 0x0

    .line 4526
    :cond_0
    :goto_0
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone storage encryption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4535
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_1
    return-object v5

    .line 4518
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 4519
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4520
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4521
    const/4 v0, 0x0

    goto :goto_0

    .line 4522
    :cond_2
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4523
    const/4 v0, 0x0

    goto :goto_0

    .line 4530
    :cond_3
    const-string v5, "PHONE"

    const-string v6, "phone storage encryption : not avaliable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4535
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 4532
    :catch_0
    move-exception v4

    .line 4533
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private logCallError()V
    .locals 0

    .prologue
    .line 4174
    return-void
.end method

.method private static logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2008
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, CDMAPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    return-void
.end method

.method private static logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2033
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, GSMPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return-void
.end method

.method private notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1886
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1888
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1889
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private processUSSDVerificationStrings()V
    .locals 2

    .prologue
    .line 2452
    const-string v0, "PHONE"

    const-string v1, "processUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    return-void
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 3
    .parameter "token"

    .prologue
    .line 1923
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    .line 1925
    const-string v0, "PHONE"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    .line 1927
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1936
    :goto_0
    return-void

    .line 1930
    :cond_0
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPropertiesByCarrier()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 1154
    const-string v9, "ro.carrier"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, carrier:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "unknown"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1163
    .local v2, carrierLocales:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_0

    .line 1164
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1166
    add-int/lit8 v9, v5, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1168
    .local v6, l:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, language:Ljava/lang/String;
    const-string v3, ""

    .line 1170
    .local v3, country:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    .line 1171
    const/4 v9, 0x3

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1173
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v3}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1177
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_country_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v4

    .line 1181
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1183
    .local v8, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8, v3, v11}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1163
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v6           #l:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    .end local v8           #wM:Landroid/net/wifi/WifiManager;
    :cond_3
    add-int/lit8 v5, v5, 0x3

    goto :goto_1
.end method

.method private typesIncludeStar([Ljava/lang/String;)Z
    .locals 6
    .parameter "types"

    .prologue
    .line 1502
    const/4 v3, 0x0

    .line 1503
    .local v3, ret:Z
    if-eqz p1, :cond_0

    .line 1504
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1505
    .local v4, type:Ljava/lang/String;
    const-string v5, "*"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1506
    const/4 v3, 0x1

    .line 1511
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    return v3

    .line 1504
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4388
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acceptCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3096
    return-void
.end method

.method public activateCellBroadcastSmsExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "activate"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3955
    return-void
.end method

.method public canConferenceExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3131
    const/4 v0, 0x0

    return v0
.end method

.method public canTransferExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3153
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnectedExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3177
    return-void
.end method

.method public clearNetworkSelection()V
    .locals 4

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2621
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2622
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2623
    const-string v2, "network_selection_name_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2624
    const-string v2, "network_selection_act_key"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2626
    const-string v2, "network_selection_reject_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2629
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2630
    const-string v2, "PHONE"

    const-string v3, "failed to commit network selection preference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    return-void
.end method

.method public combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 7
    .parameter "vss"
    .parameter "dss"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 4589
    if-nez p1, :cond_3

    .line 4590
    if-nez p2, :cond_2

    .line 4592
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 4593
    .local v1, ss:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 4653
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 4654
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 4656
    :cond_1
    return-object v1

    .line 4596
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_2
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .restart local v1       #ss:Landroid/telephony/ServiceState;
    goto :goto_0

    .line 4600
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_3
    if-nez p2, :cond_4

    .line 4601
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .restart local v1       #ss:Landroid/telephony/ServiceState;
    goto :goto_0

    .line 4604
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_4
    new-array v2, v6, [Landroid/telephony/ServiceState;

    aput-object p1, v2, v5

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .line 4607
    .local v2, targetStates:[Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 4608
    .local v3, vsi:I
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_5

    if-gez v3, :cond_6

    .line 4609
    :cond_5
    const/4 v3, 0x1

    .line 4611
    :cond_6
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4612
    .local v0, dsi:I
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    aget-object v4, v4, v5

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_7

    if-gez v0, :cond_8

    .line 4613
    :cond_7
    const/4 v0, 0x1

    .line 4616
    :cond_8
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 4617
    .restart local v1       #ss:Landroid/telephony/ServiceState;
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    aget-object v4, v4, v3

    aget v4, v4, v0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 4618
    if-nez v0, :cond_0

    .line 4619
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 4620
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    .line 4621
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v4

    if-nez v4, :cond_9

    .line 4622
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    .line 4625
    :cond_9
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 4628
    :cond_a
    if-eqz v3, :cond_b

    if-eq v3, v6, :cond_b

    .line 4630
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4636
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4645
    :pswitch_1
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    goto/16 :goto_0

    .line 4636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public conferenceExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3145
    return-void
.end method

.method public abstract confirmFirstDataRoaming()V
.end method

.method protected createIccCardProxy(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "is3gpp"

    .prologue
    .line 4702
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4703
    new-instance v0, Lcom/android/internal/telephony/IccCardProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 4704
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 4706
    :cond_0
    return-void
.end method

.method public dialExt(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3247
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialExt(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3262
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1846
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v0, 0x3

    .line 1850
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3853
    const/4 v0, -0x1

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 683
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 686
    return-void
.end method

.method public disableDnsCheckExt(ZI)V
    .locals 0
    .parameter "b"
    .parameter "phoneType"

    .prologue
    .line 2693
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3759
    return-void
.end method

.method public disablePdpForNetworkScanTemporarily(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 4720
    const/4 v0, 0x0

    .line 4721
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v1, :cond_0

    .line 4722
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePdpForNetworkScanTemporarily, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 4724
    const/4 v0, 0x1

    .line 4726
    :cond_0
    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 482
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 491
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAutoWifiOnLocNotify(Landroid/os/Handler;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSmartNetworkNotify(Landroid/os/Handler;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemResetNotify(Landroid/os/Handler;)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwapCount(Landroid/os/Handler;)V

    .line 531
    monitor-exit v1

    .line 532
    return-void

    .line 489
    :cond_0
    const-string v0, "PHONE"

    const-string v2, "mDataConnectionTracker is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected disposeIccCardProxy()V
    .locals 2

    .prologue
    .line 4709
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4710
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 4711
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 4712
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 4715
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2084
    const-string v0, "PhoneBase:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDnsCheckDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDoesRilSendMultipleCallRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingContinueToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsTheCurrentActivePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsStorageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsUsageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLooper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimulatedRadioControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUnitTestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDnsCheckDisabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getUnitTestMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccSerialNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccRecordsLoaded()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getMessageWaitingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCallForwardingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEmergencyCall()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEcm()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getVoiceMessageCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getActiveApnTypes()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDataConnectivityPossible()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " needsOtaServiceProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->needsOtaServiceProvisioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1835
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v0, 0x3

    .line 1839
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3834
    const/4 v0, -0x1

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1452
    const-string v0, "enableEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3752
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1961
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4187
    const/4 v0, 0x1

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1662
    const-string v0, "exitEmergencyCallbackMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method public explicitCallTransferExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3168
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 2302
    return-void
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4331
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    const-string v0, ""

    .line 4335
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1802
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const-string v0, ""

    .line 1806
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1791
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1795
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypesExt(I)[Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2732
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1967
    const-string v1, "PHONE"

    const-string v2, "getActivePDPList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/4 v0, 0x0

    .line 1995
    .local v0, result:[Ljava/lang/String;
    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 4170
    const/4 v0, -0x1

    return v0
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2281
    const-string v0, "PHONE"

    const-string v1, "getAvailableNetworksAppendAcT is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return-void
.end method

.method public getAvailableNetworksExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3534
    return-void
.end method

.method public getBackgroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1312
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v1

    .line 1315
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallForwardingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3349
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOptionExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3445
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 1252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallWaitingExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3507
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 2

    .prologue
    .line 1615
    const-string v0, "PHONE"

    const-string v1, "Error! getCdmaEriText should never be executed in GSM mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1589
    const-string v0, "getCdmaEriIconIndex"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1590
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1599
    const-string v0, "getCdmaEriIconMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1600
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1607
    const-string v0, "getCdmaEriText"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1608
    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1621
    const-string v0, "getCdmaMin"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1633
    const-string v0, "getCdmaPrlVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfigExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3965
    return-void
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2665
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 2

    .prologue
    .line 2363
    const-string v0, "PHONE"

    const-string v1, "phonebase getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 2367
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 2371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataActivityStateExt(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2683
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 2503
    const-string v0, "PHONE"

    const-string v1, "getDataCallForwardingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    return-void
.end method

.method public getDataCallListExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3727
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 2019
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 2021
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 2026
    :goto_0
    return-object v0

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0

    .line 2026
    :cond_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "type"

    .prologue
    .line 4272
    const-string v0, "PHONE"

    const-string v1, "phonebase getDataConnectionState(String type, IPVersion ipv)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4276
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 4280
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionStateExt(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2674
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 2257
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDataRoamingEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3801
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3875
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvnExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3883
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledApnTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1494
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1457
    const-string v0, "getEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 2

    .prologue
    .line 4351
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4353
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    const/4 v0, 0x0

    .line 4357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getEntitleErrorCause()I

    move-result v0

    goto :goto_0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 2296
    const/4 v0, 0x1

    return v0
.end method

.method public getForegroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 2

    .prologue
    .line 2552
    const-string v0, "PHONE"

    const-string v1, "not implement getGlobalDataRoamingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/4 v0, 0x0

    return v0
.end method

.method public getGprsStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4472
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4473
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .prologue
    .line 1238
    return-object p0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcSimTypes(Landroid/os/Message;)V

    .line 1426
    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 1321
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1328
    :goto_0
    return-object v1

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1325
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 1326
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    goto :goto_0

    .line 1328
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1259
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    goto :goto_0
.end method

.method public getIccCardExt(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3083
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    .line 1212
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1217
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    return-object v1

    .line 1213
    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    goto :goto_0

    .line 1217
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "overrideFileHandler"

    .prologue
    .line 1227
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object p1

    .line 1230
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object p1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManagerExt(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3918
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1282
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    .line 1289
    :goto_0
    return v1

    .line 1285
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1286
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    goto :goto_0

    .line 1289
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecordsLoadedExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3075
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1272
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1273
    iget-object v1, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1275
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3897
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerExt(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3911
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2286
    const-string v0, "PHONE"

    const-string v1, "getImei is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2290
    const-string v0, "PHONE"

    const-string v1, "getImeiSv is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCallPhoneType()I
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 2

    .prologue
    .line 1946
    const-string v0, "PHONE"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3359
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1824
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v0, 0x0

    .line 1828
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1813
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v0, 0x0

    .line 1817
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Landroid/net/LinkProperties;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4342
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    const/4 v0, 0x0

    .line 4346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 2

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1300
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getVoiceMessageWaiting()Z

    move-result v1

    .line 1303
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 2149
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageWaitingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3339
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1955
    const-string v0, "getMsisdn"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1956
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMuteExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3676
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCidsExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3614
    return-void
.end method

.method public getOutgoingCallerIdDisplayExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3481
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2313
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 0
    .parameter "profileSlot"
    .parameter "response"

    .prologue
    .line 2317
    return-void
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 2319
    return-void
.end method

.method public getPendingMmiCodesExt(I)Ljava/util/List;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2950
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInstance(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4157
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public getPhoneNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneSubInfoExt(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3904
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1410
    return-void
.end method

.method public getPreferredNetworkTypeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3580
    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 854
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServiceStateExt(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2658
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 1245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrengthExt(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 1421
    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1436
    return-void
.end method

.method public getSmscAddressExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3589
    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/Phone$State;
.end method

.method public getStateExt(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2714
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3890
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempCLIR()I
    .locals 4

    .prologue
    .line 4247
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempCLIR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and reset to CLIR_DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4249
    .local v0, returnCLIR:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4250
    return v0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2461
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStatus() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2456
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return v0
.end method

.method public getUnitTestModeExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3773
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1582
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3397
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2350
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommandsExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "command"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3286
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 554
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 664
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected event not handled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 556
    :sswitch_0
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 558
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 560
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_2

    .line 562
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    .line 563
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    goto :goto_0

    .line 571
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_0

    .line 573
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 586
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 587
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v3, v7

    check-cast v3, [I

    .line 588
    .local v3, info:[I
    if-eqz v3, :cond_0

    array-length v7, v3

    if-lt v7, v8, :cond_0

    .line 589
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.phone.AUTO_WIFI_ON_LOC"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, bc:Landroid/content/Intent;
    const-string v7, "matched_location_cell"

    aget v8, v3, v10

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v7, "location_index_in_db"

    aget v8, v3, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 605
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bc:Landroid/content/Intent;
    .end local v3           #info:[I
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 606
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v5, v7

    check-cast v5, [I

    .line 607
    .local v5, smartNetwork:[I
    if-eqz v5, :cond_0

    array-length v7, v5

    if-lt v7, v11, :cond_0

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.android.FlexNetStatusNotify"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v1       #bc:Landroid/content/Intent;
    const-string v7, "Status"

    aget v8, v5, v10

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 625
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bc:Landroid/content/Intent;
    .end local v5           #smartNetwork:[I
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 626
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v4, v7

    check-cast v4, [I

    .line 627
    .local v4, modemRestart:[I
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lt v7, v11, :cond_0

    .line 628
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.android.ModemLoggingNotify"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v1       #bc:Landroid/content/Intent;
    const-string v7, "Status"

    aget v8, v4, v10

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 643
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bc:Landroid/content/Intent;
    .end local v4           #modemRestart:[I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 644
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v2, v7

    check-cast v2, [I

    .line 645
    .local v2, hotswap:[I
    if-eqz v2, :cond_4

    array-length v7, v2

    if-lt v7, v8, :cond_4

    .line 646
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.htc.intent.action.SIMHotSwapCountNotify"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v1       #bc:Landroid/content/Intent;
    const-string v7, "GPIOCount"

    aget v8, v2, v10

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v7, "SwapEventCount"

    aget v8, v2, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_3

    .line 650
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIMHotSwapCountNotify, GPIOCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SwapEventCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 654
    .end local v1           #bc:Landroid/content/Intent;
    :cond_4
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    .line 655
    const-string v7, "PHONE"

    const-string v8, "SIMHotSwapCountNotify, invalid response"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x76 -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3273
    const/4 v0, 0x0

    return v0
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 2

    .prologue
    .line 2219
    const-string v0, "PHONE"

    const-string v1, "htcGetCdmaEriCallGuard is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const/4 v0, -0x1

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 2

    .prologue
    .line 2224
    const-string v0, "PHONE"

    const-string v1, "htcGetCdmaEriCallGuard is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const/4 v0, -0x1

    return v0
.end method

.method public htcNotifyFailEntitlementCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1914
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1915
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1916
    return-void
.end method

.method public htcNotifyNoDunDataPlan()V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1470
    return-void
.end method

.method public invokeOemRilRequestRawExt([BLandroid/os/Message;I)V
    .locals 0
    .parameter "data"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3694
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1474
    return-void
.end method

.method public invokeOemRilRequestStringsExt([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "strings"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3712
    return-void
.end method

.method public isActEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 4204
    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4205
    .local v0, cid:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4207
    .local v1, operator:Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v2, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    :cond_2
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    const-string v4, "ro.ril.oem.show.act"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3861
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1941
    const-string v0, "isCspPlmnEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1942
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3817
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1855
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1857
    const/4 v0, 0x0

    .line 1862
    :goto_0
    return v0

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectivityPossible()Z

    move-result v0

    goto :goto_0

    .line 1862
    :cond_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3868
    const/4 v0, 0x0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isDnsCheckDisabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2699
    const/4 v0, 0x0

    return v0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1573
    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1627
    const-string v0, "isMinInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1628
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1698
    const/4 v0, 0x0

    return v0
.end method

.method public isStorageAreaAvaliable()Z
    .locals 2

    .prologue
    .line 4496
    const/4 v0, 0x1

    .line 4497
    .local v0, areaAvaliable:Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 4498
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    .line 4500
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 4501
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4503
    :cond_1
    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method public notifyATDMmiComplete(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 4382
    return-void
.end method

.method protected notifyATDMmiCompleteP(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 1045
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 2040
    const-string v0, "PHONE"

    const-string v1, "Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return-void
.end method

.method public notifyCollidedDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 2342
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCollidedDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2344
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 1478
    return-void
.end method

.method public notifyDataActivityExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4004
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 7
    .parameter "reason"

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1542
    .local v4, types:[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneBase;->typesIncludeStar([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1546
    :cond_0
    if-nez v4, :cond_2

    .line 1548
    const-string v5, "PHONE"

    const-string v6, "notifyDataConnection:ApnTypes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_1
    return-void

    .line 1551
    :cond_2
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1552
    .local v0, apnType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v0, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1528
    const-string v5, "*"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1530
    .local v4, types:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1531
    .local v3, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v3, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1536
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #types:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, p2, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1537
    :cond_1
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 1518
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "PHONE"

    const-string v1, "notify(reason, type, state) should not use \'*\' as param, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :goto_0
    return-void

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    const/4 v1, 0x0

    .line 1069
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1070
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1071
    return-void
.end method

.method protected notifyMMLocationUpdateInfoP([I)V
    .locals 2
    .parameter "causeCode"

    .prologue
    const/4 v1, 0x0

    .line 996
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 998
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 999
    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    .line 1487
    :goto_0
    return-void

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method protected notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "cn"

    .prologue
    const/4 v2, 0x0

    .line 1876
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1880
    :goto_0
    return-void

    .line 1878
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1879
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .parameter "otaspMode"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 1558
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 728
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 729
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 730
    return-void
.end method

.method protected notifyRadioOnP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1014
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1016
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1017
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    .line 1116
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 1118
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1119
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1121
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 1122
    return-void
.end method

.method protected notifyServiceStateChangedSeparatelyP()V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V

    .line 1126
    return-void
.end method

.method public notifyUnblockPin2Done()V
    .locals 0

    .prologue
    .line 4383
    return-void
.end method

.method protected notifyUnblockPin2DoneP()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 707
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 708
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 709
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1466
    return-void
.end method

.method public queryAvailableBandModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3795
    return-void
.end method

.method public queryAvoidNetwork(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4674
    const-string v0, "PHONE"

    const-string v1, "queryAvoidNetwork is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    if-eqz p1, :cond_0

    .line 4677
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "queryAvoidNetwork is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4678
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4680
    :cond_0
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCAVE(Landroid/os/Message;)V

    .line 2518
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1339
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryMD5(Landroid/os/Message;)V

    .line 2539
    return-void
.end method

.method public queryManualselectionStatus()Z
    .locals 1

    .prologue
    .line 4197
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    return v0
.end method

.method public queryNFCpdp()I
    .locals 1

    .prologue
    .line 4363
    const/4 v0, 0x0

    return v0
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->querySSDUpdate(Landroid/os/Message;)V

    .line 2524
    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 4449
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 4450
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    .line 1448
    return-void
.end method

.method public queryTTYModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3943
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryUIMAUTH(Landroid/os/Message;)V

    .line 2542
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryVPM(Landroid/os/Message;)V

    .line 2533
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 2

    .prologue
    .line 2239
    const-string v0, "PHONE"

    const-string v1, "reEnableDataRoamingGuardDialog is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    return-void
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 4375
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1763
    return-void
.end method

.method public registerFoT53ClirlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4116
    return-void
.end method

.method public registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1029
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1703
    const-string v0, "registerForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1667
    const-string v0, "registerForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1668
    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2331
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2334
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2243
    const-string v0, "PHONE"

    const-string v1, "registerForDataRoamingGuardChanged is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2394
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    return-void
.end method

.method public registerForDisconnectExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2889
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1731
    return-void
.end method

.method public registerForDisplayInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4017
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1713
    const-string v0, "registerForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1904
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1907
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2439
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 770
    return-void
.end method

.method public registerForInCallVoicePrivacyOffExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3055
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 760
    return-void
.end method

.method public registerForInCallVoicePrivacyOnExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3035
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public registerForIncomingRingExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2831
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1755
    return-void
.end method

.method public registerForLineControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4091
    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 993
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2561
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 836
    return-void
.end method

.method public registerForMmiCompleteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2932
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 824
    return-void
.end method

.method public registerForMmiInitiateExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2912
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 750
    return-void
.end method

.method public registerForNewRingingConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2810
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1894
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1895
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1739
    return-void
.end method

.method public registerForNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4041
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2272
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public registerForPreciseCallStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2786
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2588
    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1011
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2266
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1747
    return-void
.end method

.method public registerForRedirectedNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4066
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1099
    return-void
.end method

.method public registerForResendIncallMuteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2868
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1089
    return-void
.end method

.method public registerForRingbackToneExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2853
    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2611
    const-string v0, "PHONE"

    const-string v1, "not implement registerForRoamingOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2603
    const-string v0, "PHONE"

    const-string v1, "not implement registerForRoamingOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1079
    return-void
.end method

.method public registerForServiceStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2971
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1723
    return-void
.end method

.method public registerForSignalInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3990
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2200
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1677
    const-string v0, "registerForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 812
    return-void
.end method

.method public registerForSuppServiceFailedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3014
    return-void
.end method

.method public registerForSuppServiceNotificationExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2992
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1771
    return-void
.end method

.method public registerForT53AudioControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4141
    return-void
.end method

.method public registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1037
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 737
    return-void
.end method

.method public registerForUnknownConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2766
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method public rejectCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3109
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 536
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 537
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 538
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 540
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 541
    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 2
    .parameter "phonetype"
    .parameter "response"

    .prologue
    .line 2262
    const-string v0, "PHONE"

    const-string v1, "requesetSetPhoneType is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    return-void
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    .line 2515
    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->CWUWDeRegistration(Landroid/os/Message;)V

    .line 2487
    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->CWUWRegistration(Landroid/os/Message;)V

    .line 2484
    return-void
.end method

.method public requestClearAvoidNetwork(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4683
    const-string v0, "PHONE"

    const-string v1, "requestClearAvoidNetwork is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    if-eqz p1, :cond_0

    .line 4686
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "requestClearAvoidNetwork is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4687
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4689
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2413
    const-string v0, "PHONE"

    const-string v1, "+requestEhrpdDomainNameChangeState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    .line 2415
    const-string v0, "PHONE"

    const-string v1, "-requestEhrpdDomainNameChangeState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2425
    const-string v0, "PHONE"

    const-string v1, "+requestGetEhrpdDeviceCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    .line 2427
    const-string v0, "PHONE"

    const-string v1, "-requestGetEhrpdDeviceCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2419
    const-string v0, "PHONE"

    const-string v1, "+requestGetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    .line 2421
    const-string v0, "PHONE"

    const-string v1, "-requestGetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2647
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    .line 2582
    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 4237
    const/4 v0, 0x0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 2196
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    .line 2578
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "modemId"
    .parameter "response"

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4222
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO DM String - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 4230
    :cond_0
    :goto_0
    return-void

    .line 4225
    :cond_1
    if-eqz p3, :cond_0

    .line 4226
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input - command with String type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4227
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2164
    const-string v0, "PHONE"

    const-string v1, "OoO This requestHtcGetDDTMMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 2160
    const-string v0, "PHONE"

    const-string v1, "OoO This requestHtcSetDDTMMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "nonce"
    .parameter "result"

    .prologue
    .line 1951
    const-string v0, "PHONE"

    const-string v1, "requestIsimAuthentication() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2536
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    .line 2521
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    .line 2527
    return-void
.end method

.method public requestSelectNextNetwork(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4664
    const-string v0, "PHONE"

    const-string v1, "requestSelectNextNetwork is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    if-eqz p1, :cond_0

    .line 4667
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "requestSelectNextNetwork is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4668
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4671
    :cond_0
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 3
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 2407
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+requestSetEhrpdDisableCapability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    .line 2409
    const-string v0, "PHONE"

    const-string v1, "-requestSetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLBSNTFY(ILandroid/os/Message;)V

    .line 1431
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 2434
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 2192
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 0
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 2498
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestVPM(Landroid/os/Message;)V

    .line 2530
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2181
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcGetHybridMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2171
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcGetSystemNAM is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 2185
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcSetHybridMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 2
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 2175
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcSetSystemNAM is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 0

    .prologue
    .line 2321
    return-void
.end method

.method public responseDataRoamingGuardDialog(ZZ)V
    .locals 2
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 2251
    const-string v0, "PHONE"

    const-string v1, "responseDataRoamingGuardDialog is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 11
    .parameter "response"

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, networkSelection:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkAct()Ljava/lang/String;

    move-result-object v4

    .line 885
    .local v4, networkAct:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 888
    .local v6, settingsNetworkMode:I
    const/4 v8, 0x7

    if-ne v6, v8, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 891
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 892
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "network_selection_key"

    const-string v9, ""

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 893
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-nez v8, :cond_0

    .line 894
    const-string v8, "PHONE"

    const-string v9, "failed to commit network selection preference !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSavedNetworkSelection() shall be empty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    .line 902
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_1
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xda

    if-eq v8, v9, :cond_2

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_3

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 905
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 917
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 925
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isActEnabled()Z

    move-result v2

    .line 930
    .local v2, isActEnabled:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    if-nez v8, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 933
    :cond_4
    const/4 v2, 0x0

    .line 934
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 939
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 940
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 986
    :cond_6
    :goto_0
    return-void

    .line 943
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkRejectStatus()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const-string v8, "00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 944
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 955
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v3, 0x0

    .line 960
    .local v3, msg:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_a

    .line 961
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v5, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualAppendAcT(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 970
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionRejectStatus(Z)V

    .line 974
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 980
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 982
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x70

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 955
    .end local v3           #msg:Landroid/os/Message;
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x35

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    goto :goto_1

    .line 963
    .restart local v3       #msg:Landroid/os/Message;
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public selectNetworkManuallyExt(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 0
    .parameter "network"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3561
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1657
    const-string v0, "sendBurstDtmf"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method protected sendDeviceIdReadyBroadcast()V
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "device_id"

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3296
    return-void
.end method

.method public sendEmergencyPlusCallBackModeStatus(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 4547
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4548
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EMERGENCY_AND_CALLBACK_STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4549
    const-string v2, "STORAGE_AREA_AVALIABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4550
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4552
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmergencyPlusCallBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->htcRadioOnWhenStorageAreaNotAvaliable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4555
    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->htcRadioOnWhenStorageAreaNotAvaliable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4557
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 4558
    .local v1, sst:Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 4559
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 4563
    .end local v1           #sst:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_0
    return-void
.end method

.method public sendTamCmd([ILandroid/os/Message;)V
    .locals 1
    .parameter "config"
    .parameter "response"

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendTamCmd([ILandroid/os/Message;)V

    .line 4370
    return-void
.end method

.method public sendUssdResponseExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "ussdMessge"
    .parameter "phoneType"

    .prologue
    .line 2962
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4164
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    .line 1462
    return-void
.end method

.method public setBandModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3784
    return-void
.end method

.method public setCallForwardingOptionExt(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3469
    return-void
.end method

.method public setCallWaitingExt(ZLandroid/os/Message;I)V
    .locals 0
    .parameter "enable"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3519
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1346
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 1353
    return-void
.end method

.method public setCellBroadcastSmsConfigExt([ILandroid/os/Message;I)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3977
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4258
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    const/4 v0, 0x0

    .line 4262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2388
    return-void
.end method

.method public setDataRoamingEnabledExt(ZI)V
    .locals 0
    .parameter "enable"
    .parameter "phoneType"

    .prologue
    .line 3809
    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 2
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 2235
    const-string v0, "PHONE"

    const-string v1, "setDataRoamingGuardResponse is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 2231
    const-string v0, "PHONE"

    const-string v1, "setDataRoamingGuardSetting is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 4454
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4455
    return-void
.end method

.method public setDataSubscriptionExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 4457
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4458
    return-void
.end method

.method protected setDeviceIdSystemProperty()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.ril.miui.imei"

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1108
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 2
    .parameter "roamingOption"

    .prologue
    .line 2548
    const-string v0, "PHONE"

    const-string v1, "not implement setGlobalDataRoamingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    return-void
.end method

.method public setLine1NumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3381
    return-void
.end method

.method public setMuteExt(ZI)V
    .locals 0
    .parameter "muted"
    .parameter "phoneType"

    .prologue
    .line 3664
    return-void
.end method

.method public setNetworkSelectionModeAutomaticExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3548
    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 4
    .parameter "reject"

    .prologue
    .line 2636
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2637
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2638
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "network_selection_reject_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2641
    const-string v2, "PHONE"

    const-string v3, "failed to commit network selection preference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_0
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1779
    const-string v0, "setOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1780
    return-void
.end method

.method public setOnPostDialCharacterExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3652
    return-void
.end method

.method public setOutgoingCallerIdDisplayExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3495
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profileSlot"
    .parameter "settings"
    .parameter "response"

    .prologue
    .line 2318
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 2320
    return-void
.end method

.method public setPdpLimit(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 1999
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4269
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1366
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1367
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1371
    const-string v3, "network_selection_act_key"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1373
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1374
    const-string v3, "PHONE"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    const/4 v0, 0x0

    .line 1382
    .local v0, autoSelectionMode:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    .line 1388
    :cond_1
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1389
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1390
    const-string v3, "PHONE"

    const-string v4, "failed to commit network selection preference when user select Global mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_2
    const-string v3, "PHONE"

    const-string v4, "reset the status to automatic selection when mode is switched to Global mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==>getSavedNetworkSelection():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1402
    if-eqz v0, :cond_4

    .line 1403
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1406
    :cond_4
    return-void
.end method

.method public setPreferredNetworkTypeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "networkType"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3571
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    .line 2600
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1
    .parameter "rxInterface"
    .parameter "enabledFlag"
    .parameter "response"

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setRX_Diversity(IILandroid/os/Message;)V

    .line 2596
    return-void
.end method

.method public setRadioPowerExt(ZI)V
    .locals 0
    .parameter "power"
    .parameter "phoneType"

    .prologue
    .line 3330
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1440
    return-void
.end method

.method public setSmscAddressExt(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "address"
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3599
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"

    .prologue
    .line 4460
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4461
    return-void
.end method

.method public setSubscriptionModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 4463
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4464
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    .line 1444
    return-void
.end method

.method public setTTYModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "ttyMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3933
    return-void
.end method

.method public setTempCLIR(I)V
    .locals 3
    .parameter "tempCLIR"

    .prologue
    .line 4242
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempCLIR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4244
    return-void
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2466
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStatus() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2472
    const-string v0, "PHONE"

    const-string v1, "setUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    return-void
.end method

.method public setUeSecurityCheck(ILandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setUeSecurityCheck(ILandroid/os/Message;)V

    .line 4733
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"

    .prologue
    .line 4466
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4467
    return-void
.end method

.method public setUiccSubscriptionExt(IIIILandroid/os/Message;I)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 4469
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4470
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1054
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    .line 1055
    return-void
.end method

.method public setUnitTestModeExt(ZI)V
    .locals 0
    .parameter "f"
    .parameter "phoneType"

    .prologue
    .line 3767
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setVTSimulatedMode(Z)V

    .line 2210
    return-void
.end method

.method public setVoiceMailNumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3429
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 2067
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 2068
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccRecords;->setVoiceMessageWaiting(II)V

    .line 2071
    :cond_0
    return-void
.end method

.method public startDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3306
    return-void
.end method

.method public stopDtmfExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3314
    return-void
.end method

.method public switchHoldingAndActiveExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3123
    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 2
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    .line 2308
    return-void
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 4379
    return-void
.end method

.method public unregisterForATDMmiComplete(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1033
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1708
    const-string/jumbo v0, "unregisterForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1709
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1672
    const-string/jumbo v0, "unregisterForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2339
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2247
    const-string v0, "PHONE"

    const-string/jumbo v1, "unregisterForDataRoamingGuardChanged is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2398
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 805
    return-void
.end method

.method public unregisterForDisconnectExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2897
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1735
    return-void
.end method

.method public unregisterForDisplayInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4027
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1718
    const-string/jumbo v0, "unregisterForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1911
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    .line 2444
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 775
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3064
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 765
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3044
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 788
    return-void
.end method

.method public unregisterForIncomingRingExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2840
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1759
    return-void
.end method

.method public unregisterForLineControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4101
    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1005
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForManualState(Landroid/os/Handler;)V

    .line 2566
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 843
    return-void
.end method

.method public unregisterForMmiCompleteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2940
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 829
    return-void
.end method

.method public unregisterForMmiInitiateExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2920
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 755
    return-void
.end method

.method public unregisterForNewRingingConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2818
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 2819
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1897
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1743
    return-void
.end method

.method public unregisterForNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4051
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 2276
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 721
    return-void
.end method

.method public unregisterForPreciseCallStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2794
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    .line 2592
    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1023
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1751
    return-void
.end method

.method public unregisterForRedirectedNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4076
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1104
    return-void
.end method

.method public unregisterForResendIncallMuteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2875
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1094
    return-void
.end method

.method public unregisterForRingbackToneExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2860
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2615
    const-string v0, "PHONE"

    const-string v1, "not implement unregisterForRoamingOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2607
    const-string v0, "PHONE"

    const-string v1, "not implement unregisterForRoamingOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1084
    return-void
.end method

.method public unregisterForServiceStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2979
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1727
    return-void
.end method

.method public unregisterForSignalInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4000
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    .line 2204
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1682
    const-string/jumbo v0, "unregisterForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 817
    return-void
.end method

.method public unregisterForSuppServiceFailedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3024
    return-void
.end method

.method public unregisterForSuppServiceNotificationExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3002
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1775
    return-void
.end method

.method public unregisterForT53AudioControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4151
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1767
    return-void
.end method

.method public unregisterForT53ClirInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4126
    return-void
.end method

.method public unregisterForUnblockPin2Done(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1041
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 742
    return-void
.end method

.method public unregisterForUnknownConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2772
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 2773
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 704
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1784
    const-string/jumbo v0, "unsetOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1785
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 4693
    const/4 v0, 0x0

    return v0
.end method

.method public updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 1
    .parameter "operatorNumeric"

    .prologue
    .line 4696
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageWaitingIndicator(ZI)V
    .locals 0
    .parameter "mwi"
    .parameter "count"

    .prologue
    .line 2316
    return-void
.end method

.method public updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z
    .locals 3
    .parameter "forData"
    .parameter "networkType"

    .prologue
    .line 4419
    sget-boolean v2, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    if-eqz v2, :cond_1

    .line 4420
    move-object v0, p2

    .line 4421
    .local v0, convertedNetworkType:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 4423
    const/4 v0, 0x0

    .line 4425
    :cond_0
    if-eqz p1, :cond_2

    .line 4426
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    .line 4432
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 4433
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 4441
    .local v1, strNetworkType:Ljava/lang/String;
    :goto_1
    const-string v2, "gsm.network.type"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    .end local v0           #convertedNetworkType:Ljava/lang/Integer;
    .end local v1           #strNetworkType:Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    return v2

    .line 4429
    .restart local v0       #convertedNetworkType:Ljava/lang/Integer;
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    goto :goto_0

    .line 4435
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 4436
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #strNetworkType:Ljava/lang/String;
    goto :goto_1

    .line 4439
    .end local v1           #strNetworkType:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #strNetworkType:Ljava/lang/String;
    goto :goto_1
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3745
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 4394
    const-string v0, "PHONE"

    const-string v1, "base: wifi2GRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    return-void
.end method

.method public wifi2GRetryExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4476
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    return-void
.end method
