.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$3;,
        Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final CALL_STATE_POLL_SLEEP_MS:I = 0xc8

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field static final INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String; = "com.android.internal.telephony.entitlement_check_fail"

.field static final INTENT_ICC_30DAYS_EXPIRED:Ljava/lang/String; = "com.android.internal.telephony.icc_30days_expired"

.field static final INTENT_PERIODIC_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.android.internal.telephony.periodic_entitlement_check"

.field public static final LAST_SIM_IMSI_KEY:Ljava/lang/String; = "sim_imsi_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_NUM_CALL_STATE_READS:I = 0xf

.field public static final MWI_STATUS_KEY:Ljava/lang/String; = "mwi_status_key"

.field private static final PROP_KEY_USSD_EXCLUDE:Ljava/lang/String; = "ro.ussd_exclude"

.field static final TEST_ICC:Ljava/util/ArrayList; = null

.field private static final USSD_DIGITS_DEFAULT:Ljava/lang/String; = "897023415618307564290729486153"

.field private static final USSD_HEX_DEFAULT:Ljava/lang/String; = "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

.field private static final USSD_STATUS_DEFAULT:Ljava/lang/String; = "OFF"

.field private static final USSD_VERIFICATION_DEFAULT:Ljava/lang/String; = "#119#"

.field public static final USSD_VERIFICATION_DIGITS_KEY:Ljava/lang/String; = "ussd_verification_digits_key"

.field public static final USSD_VERIFICATION_HEX_KEY:Ljava/lang/String; = "ussd_verification_hex_key"

.field public static final USSD_VERIFICATION_KEY:Ljava/lang/String; = "ussd_verification_key"

.field public static final USSD_VERIFICATION_STATUS_KEY:Ljava/lang/String; = "ussd_verification_status_key"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field public static mDropEvent:Z

.field public static mEccUSSDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field hasDoneEntitlementCheck:Z

.field icfh:Lcom/android/internal/telephony/ims/ISIMFileHandler;

.field lastEntitlementCheckTime:I

.field private mBandCapability:I

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mEntitlementCheckIntent:Landroid/app/PendingIntent;

.field private mEsn:Ljava/lang/String;

.field public mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

.field mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

.field mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

.field private mISimSessionId:I

.field private mIcc30DaysExpiredReceiver:Landroid/content/BroadcastReceiver;

.field private mIccExpiredFromRadio:Z

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private final mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

.field private mMeid:Ljava/lang/String;

.field private mNotifyDataConnectionDisconnect:Z

.field private mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOperation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRadioOnDueToECC:Z

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field private mSpecificDialNumbers:Ljava/lang/String;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mTestIcc:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mUSSDExcludeNumbers:[Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVmNumber:Ljava/lang/String;

.field private readSpecialDialNumber:Z

.field serviceClassX:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    const-class v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->$assertionsDisabled:Z

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccUSSDMap:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v2

    const-string v4, "999"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->TEST_ICC:Ljava/util/ArrayList;

    .line 279
    sput-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 9
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 303
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 216
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .line 217
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->icfh:Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .line 223
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 233
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    .line 234
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingOperation:Ljava/util/List;

    .line 243
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTestIcc:Z

    .line 248
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    .line 253
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccExpiredFromRadio:Z

    .line 259
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 260
    iput v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->lastEntitlementCheckTime:I

    .line 261
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->hasDoneEntitlementCheck:Z

    .line 265
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    .line 268
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->serviceClassX:I

    .line 277
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifyDataConnectionDisconnect:Z

    .line 290
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUSSDExcludeNumbers:[Ljava/lang/String;

    .line 3394
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$2;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIcc30DaysExpiredReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    instance-of v1, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 306
    check-cast v1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 312
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 321
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->enablePendingVoiceCallAbility()V

    .line 325
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 326
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 329
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/ims/ISIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->icfh:Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .line 331
    new-instance v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->icfh:Lcom/android/internal/telephony/ims/ISIMFileHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .line 335
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_b

    .line 336
    const-string v1, "GSM"

    const-string v2, "New (GSM)MMDataConnectionTracker"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v1, Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/DataConnectionTracker;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 344
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSimAuthentication()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    :cond_2
    if-nez p4, :cond_4

    .line 351
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    new-instance v1, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 355
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 356
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 359
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    .line 362
    new-instance v1, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 374
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x7

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v2, 0x13

    invoke-virtual {v1, p0, v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x60

    if-ne v1, v2, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v8, :cond_5

    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x33

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerMMLUFailNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_6

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x37

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMExpiredStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v0, filterP:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.icc_30days_expired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIcc30DaysExpiredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    .end local v0           #filterP:Landroid/content/IntentFilter;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6f

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAcdbTableChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc9

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCustomizeSimInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    const-string v1, "gsm.current.phone-type"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v1, :cond_8

    .line 441
    :cond_7
    sput-boolean v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    .line 446
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initUSSDExcludeNumbers()V

    .line 450
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initUSSDVerificationStrings()V

    .line 455
    :cond_9
    return-void

    .line 316
    :cond_a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->createIccCardProxy(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 341
    :cond_b
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    goto/16 :goto_1

    .line 370
    :cond_c
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccExpiredFromRadio:Z

    return v0
.end method

.method private checkUsed(Lcom/android/internal/telephony/DataConnectionTracker$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 3219
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v0, :cond_0

    .line 3220
    const/4 v0, 0x1

    .line 3222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enablePendingVoiceCallAbility()V
    .locals 2

    .prologue
    .line 4069
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 4070
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

    .line 4073
    :cond_0
    return-void
.end method

.method private ensureISimSession(Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;)V
    .locals 6
    .parameter "operation"

    .prologue
    const/4 v5, 0x0

    .line 3891
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3893
    :cond_0
    const-string v2, "GSM"

    const-string v3, "ensureISimSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3906
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 3908
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    .line 3909
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingOperation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3910
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    :goto_0
    const/16 v4, 0x7f

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccSelectApplication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3921
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_1
    return-void

    .line 3897
    :catch_0
    move-exception v1

    .line 3898
    .local v1, ie:Ljava/lang/InterruptedException;
    invoke-virtual {p1, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3910
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 3913
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "ISIM application not found or ready"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3914
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 3918
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    aput v4, v2, v3

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3919
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1
.end method

.method private getCallForwardingOptionOfServiceClass(IILandroid/os/Message;)V
    .locals 3
    .parameter "serviceClass"
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1754
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    const-string v1, "GSM"

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    if-nez p2, :cond_1

    .line 1758
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1762
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p2, p1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1764
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1760
    :cond_1
    move-object v0, p3

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method private getValidCommandInterfaceCBFacility(I)Ljava/lang/String;
    .locals 1
    .parameter "commandInterfaceCBFacility"

    .prologue
    .line 1703
    const-string v0, ""

    .line 1704
    .local v0, str:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1736
    :goto_0
    return-object v0

    .line 1706
    :pswitch_0
    const-string v0, "AO"

    .line 1707
    goto :goto_0

    .line 1709
    :pswitch_1
    const-string v0, "OI"

    .line 1710
    goto :goto_0

    .line 1712
    :pswitch_2
    const-string v0, "OX"

    .line 1713
    goto :goto_0

    .line 1715
    :pswitch_3
    const-string v0, "AI"

    .line 1716
    goto :goto_0

    .line 1718
    :pswitch_4
    const-string v0, "IR"

    .line 1719
    goto :goto_0

    .line 1721
    :pswitch_5
    const-string v0, "AB"

    .line 1722
    goto :goto_0

    .line 1724
    :pswitch_6
    const-string v0, "AG"

    .line 1725
    goto :goto_0

    .line 1727
    :pswitch_7
    const-string v0, "AC"

    .line 1728
    goto :goto_0

    .line 1730
    :pswitch_8
    const-string v0, "SC"

    .line 1731
    goto :goto_0

    .line 1733
    :pswitch_9
    const-string v0, "FD"

    goto :goto_0

    .line 1704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1468
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleBandCapability(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/16 v4, 0x10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3266
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 3267
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 3269
    .local v0, bandCapability:[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v8, :cond_0

    .line 3270
    aget-object v3, v0, v6

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 3271
    .local v1, gsmBand:I
    aget-object v3, v0, v7

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3273
    .local v2, umtsBand:I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsmBand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tumtsBand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 3276
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    .line 3284
    .end local v0           #bandCapability:[Ljava/lang/String;
    .end local v1           #gsmBand:I
    .end local v2           #umtsBand:I
    :cond_0
    :goto_0
    return-void

    .line 3277
    .restart local v0       #bandCapability:[Ljava/lang/String;
    .restart local v1       #gsmBand:I
    .restart local v2       #umtsBand:I
    :cond_1
    if-lez v2, :cond_2

    if-nez v1, :cond_2

    .line 3278
    iput v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    goto :goto_0

    .line 3279
    :cond_2
    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 3280
    iput v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    goto :goto_0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1016
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 1017
    const/4 v1, 0x0

    .line 1035
    :cond_0
    :goto_0
    return v1

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 1021
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1029
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 1030
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1082
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1084
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 1085
    const/4 v6, 0x0

    .line 1129
    :goto_0
    return v6

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 1090
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 1092
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1093
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 1094
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 1097
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 1098
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 1107
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1102
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1113
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 1114
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1122
    :catch_1
    move-exception v4

    .line 1123
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 1118
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1040
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1042
    .local v4, len:I
    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 1043
    const/4 v5, 0x0

    .line 1077
    :cond_0
    :goto_0
    return v5

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 1049
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_2

    .line 1050
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1051
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 1053
    .local v1, callIndex:I
    if-lt v1, v5, :cond_0

    const/4 v6, 0x7

    if-gt v1, v6, :cond_0

    .line 1054
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :catch_0
    move-exception v3

    .line 1072
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1060
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 1061
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 1066
    :cond_3
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1172
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return v0

    .line 1175
    :cond_0
    const-string v1, "GSM"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 8
    .parameter "infos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2792
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 2797
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2798
    .local v2, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_1

    .line 2799
    const-string v3, ""

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 2827
    .end local v2           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_1
    return-void

    .line 2803
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2804
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 2807
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2808
    .restart local v2       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_3

    .line 2809
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    aget-object v6, p1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 2803
    .end local v2           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v2       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_4
    move v3, v5

    .line 2809
    goto :goto_1

    .line 2815
    .end local v2           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_5
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 2816
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2818
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2819
    .restart local v2       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_3

    .line 2820
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_3
    aget-object v6, p1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDataCallForwardingFlag(IZILjava/lang/String;)V

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1154
    .local v1, len:I
    if-eq v1, v2, :cond_0

    .line 1155
    const/4 v2, 0x0

    .line 1166
    :goto_0
    return v2

    .line 1158
    :cond_0
    const-string v3, "GSM"

    const-string v4, "MmiCode 4: explicit call transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "GSM"

    const-string v4, "transfer failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleIccExpiredFromRadio(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 3295
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 3296
    const-string v1, "GSM"

    const-string v2, "Error on getting ICC Expired Status."

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3312
    :cond_0
    :goto_0
    return-void

    .line 3299
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 3305
    .local v0, data:[I
    if-eqz v0, :cond_0

    .line 3306
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM card expired information from radio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    aget v1, v0, v4

    if-eqz v1, :cond_0

    .line 3308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccExpiredFromRadio:Z

    .line 3309
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->calcuateIccExpiredInformation()V

    goto :goto_0
.end method

.method private handleIdenticalNumericCase()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4058
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "identical"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4059
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4060
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 4062
    :cond_0
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 1135
    const/4 v1, 0x0

    .line 1146
    :goto_0
    return v1

    .line 1138
    :cond_0
    const-string v2, "GSM"

    const-string v3, "MmiCode 3: merge calls"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string v3, "conference failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/16 v7, 0x31

    .line 2710
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v4, :cond_1

    .line 2711
    const-string v4, "GSM"

    const-string v5, "unexpected result from user object."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_0
    :goto_0
    return-void

    .line 2715
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 2719
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 2720
    const-string v4, "GSM"

    const-string v5, "sending original message to recipient"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2722
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2735
    :cond_2
    const/4 v2, 0x0

    .line 2738
    .local v2, restoreToAutoMode:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2739
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2740
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v7, :cond_4

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2742
    const/4 v2, 0x1

    .line 2743
    const-string v4, "network_selection_key"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2744
    const-string v4, "network_selection_name_key"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2745
    const-string v4, "network_selection_act_key"

    const-string v5, "-1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2756
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2757
    const-string v4, "GSM"

    const-string v5, "failed to commit network selection preference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v7, :cond_0

    .line 2762
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2764
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x26

    if-eq v4, v5, :cond_5

    .line 2765
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto :goto_0

    .line 2747
    :cond_4
    const-string v4, "network_selection_key"

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2748
    const-string v4, "network_selection_name_key"

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2750
    const-string v4, "network_selection_act_key"

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->AcT:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 2767
    :cond_5
    const/16 v4, 0xca

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private hangupAllCalls()V
    .locals 6

    .prologue
    .line 1641
    const/4 v2, 0x0

    .line 1643
    .local v2, isInCall:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1644
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1645
    const/4 v2, 0x1

    .line 1647
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1648
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1649
    const/4 v2, 0x1

    .line 1651
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1652
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1653
    const/4 v2, 0x1

    .line 1655
    :cond_2
    const-string v3, "GSM"

    const-string v4, "hangupAllCalls()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    const/4 v2, 0x1

    if-eqz v2, :cond_3

    .line 1663
    const-string v3, "GSM"

    const-string v4, "start call(s) disconnect procedure."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0xf

    if-ge v1, v3, :cond_3

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1666
    const-string v3, "GSM"

    const-string v4, "call(s) disconnect complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v1           #i:I
    :cond_3
    return-void

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupAllCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1669
    .end local v0           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #i:I
    :cond_4
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1664
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initUSSDVerificationStrings()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 4119
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4120
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v5, "ussd_verification_key"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4121
    .local v4, ussd:Ljava/lang/String;
    const-string v5, "ussd_verification_hex_key"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4122
    .local v1, hex:Ljava/lang/String;
    const-string v5, "ussd_verification_digits_key"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4123
    .local v0, digits:Ljava/lang/String;
    const-string v5, "ussd_verification_status_key"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4125
    .local v3, status:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4126
    :cond_0
    const-string v5, "#119#"

    const-string v6, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    const-string v7, "897023415618307564290729486153"

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    :cond_1
    if-nez v3, :cond_2

    .line 4130
    const-string v5, "OFF"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 4133
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->processUSSDVerificationStrings()V

    .line 4134
    return-void
.end method

.method private isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 2883
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 1690
    packed-switch p1, :pswitch_data_0

    .line 1697
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1695
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 1676
    packed-switch p1, :pswitch_data_0

    .line 1685
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1683
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 9
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2088
    if-ne p1, v4, :cond_2

    move v3, v4

    .line 2091
    .local v3, isUssdRequest:Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    move v2, v4

    .line 2096
    .local v2, isUssdError:Z
    :goto_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_4

    .line 2103
    .local v4, isUssdTerminated:Z
    :goto_2
    const/4 v0, 0x0

    .line 2104
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, s:I
    :goto_3
    if-ge v1, v6, :cond_0

    .line 2105
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2106
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2111
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz v0, :cond_7

    .line 2114
    if-eqz v2, :cond_6

    .line 2115
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2143
    :cond_1
    :goto_4
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v4           #isUssdTerminated:Z
    .end local v6           #s:I
    :cond_2
    move v3, v7

    .line 2088
    goto :goto_0

    .restart local v3       #isUssdRequest:Z
    :cond_3
    move v2, v7

    .line 2091
    goto :goto_1

    .restart local v2       #isUssdError:Z
    :cond_4
    move v4, v7

    .line 2096
    goto :goto_2

    .line 2104
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v4       #isUssdTerminated:Z
    .restart local v6       #s:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2117
    :cond_6
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2123
    :cond_7
    if-eqz v4, :cond_8

    .line 2125
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 2126
    .local v5, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 2127
    iput-object p2, v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 2128
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_4

    .line 2135
    .end local v5           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_8
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 2137
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v5

    .line 2140
    .restart local v5       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 2072
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->startIncomingUssdNotification()V

    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2076
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .parameter "eventCode"

    .prologue
    .line 2663
    packed-switch p1, :pswitch_data_0

    .line 2671
    :goto_0
    return-void

    .line 2665
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 2668
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 2663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processUSSDVerificationStrings()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 4138
    sget-object v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccUSSDMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 4140
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4141
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v10, "ussd_verification_key"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4142
    .local v9, ussd:Ljava/lang/String;
    const-string v10, "ussd_verification_hex_key"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4143
    .local v3, hex:Ljava/lang/String;
    const-string v10, "ussd_verification_digits_key"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4145
    .local v0, digits:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 4146
    .local v4, hexCodeLen:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4147
    .local v1, digitsLen:I
    mul-int/lit8 v10, v1, 0x2

    if-ne v4, v10, :cond_0

    .line 4148
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 4149
    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4150
    .local v5, hexIndex:Ljava/lang/String;
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4151
    .local v2, disits:Ljava/lang/String;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HexCode["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\tdigits[ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    sget-object v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccUSSDMap:Ljava/util/HashMap;

    const/16 v11, 0x10

    invoke-static {v5, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 4155
    .end local v2           #disits:Ljava/lang/String;
    .end local v5           #hexIndex:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_0
    return-void
.end method

.method private reQueryNecessaryInfoAfterRadioOn()V
    .locals 3

    .prologue
    .line 4288
    const-string v1, "gsm.version.baseband"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4289
    .local v0, baseBandVer:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 4294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4295
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 4298
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4299
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 4301
    :cond_2
    return-void
.end method

.method private scheduleIccExpiredAlarm(J)V
    .locals 6
    .parameter "timeToTrigger"

    .prologue
    const/4 v5, 0x0

    .line 3385
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v2, v3, :cond_0

    .line 3386
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3387
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.icc_30days_expired"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3390
    .local v1, sender:Landroid/app/PendingIntent;
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3392
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 3
    .parameter "imsi"

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1473
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1474
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1476
    return-void
.end method

.method private startIncomingUssdNotification()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/16 v7, 0x34

    .line 2958
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->stopIncomingUssdNotification()V

    .line 2961
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2964
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 2966
    .local v2, ringerMode:I
    if-nez v2, :cond_1

    .line 3001
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeMessages(I)V

    .line 3002
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3005
    return-void

    .line 2970
    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 2972
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    .line 2974
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_0

    .line 2975
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 2980
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    .line 2981
    const/16 v3, 0x19

    .line 2983
    .local v3, toneType:I
    :try_start_0
    new-instance v4, Landroid/media/ToneGenerator;

    const/4 v5, 0x2

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2989
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_3

    .line 2990
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2994
    .end local v3           #toneType:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    .line 2996
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_0

    .line 2997
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 2984
    .restart local v3       #toneType:I
    :catch_0
    move-exception v1

    .line 2985
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1
.end method

.method private stopIncomingUssdNotification()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3010
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3011
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 3014
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 3015
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVibrator:Landroid/os/Vibrator;

    .line 3017
    :cond_1
    return-void
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->HtcisDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 929
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 3090
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    return-void
.end method

.method public addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3941
    return-void
.end method

.method public calcuateIccExpiredInformation()V
    .locals 4

    .prologue
    .line 3316
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v2, v3, :cond_1

    .line 3319
    const/4 v0, 0x0

    .line 3320
    .local v0, imsi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3321
    .local v1, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v1, :cond_0

    .line 3322
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 3325
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccExpiredFromRadio:Z

    if-eqz v2, :cond_1

    .line 3328
    const-string v2, "GSM"

    const-string v3, "wait for SSD ready first, SBM only, should be low risk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    .end local v0           #imsi:Ljava/lang/String;
    .end local v1           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_1
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canDialVT()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDialVT()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getValidCommandInterfaceCBFacility(I)Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, CBFacility:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1872
    :cond_0
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 2

    .prologue
    .line 3590
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3591
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3592
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFdnEnabledStatus()Z

    move-result v1

    .line 3594
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkImsiChangedForVoiceMail()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1441
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, imsi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, simImsi:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    :goto_0
    return v2

    .line 1447
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1448
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1449
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 2843
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTestIcc:Z

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 961
    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 3

    .prologue
    .line 2921
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2922
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 2923
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 2925
    :cond_0
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 957
    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setRoamingConfirmed(Z)V

    .line 2034
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1245
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1289
    :goto_0
    return-object v3

    .line 1255
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    .local v1, networkPortion:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1258
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    if-nez v0, :cond_1

    .line 1263
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->removeNonFirstPlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1266
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1268
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1270
    const-string v3, "GSM"

    const-string v4, "not support *31#, #31# CLIR for Lexikon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v1, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1274
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1278
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1280
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLIR for Lexikon; mmi.dialingNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRModeForLexikon()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto/16 :goto_0

    .line 1284
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1286
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto/16 :goto_0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1297
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1323
    :goto_0
    return-object v3

    .line 1307
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1308
    .local v1, networkPortion:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1310
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    if-nez v0, :cond_1

    .line 1314
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1316
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialVT(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1318
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1320
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 2013
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 459
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 460
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 462
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v1, :cond_1

    .line 465
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 485
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 487
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 493
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterMMLUFailNotify(Landroid/os/Handler;)V

    .line 500
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->dispose()V

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->dispose()V

    .line 508
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v1, v3, :cond_3

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMExpiredStatus(Landroid/os/Handler;)V

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIcc30DaysExpiredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAcdbTableChange(Landroid/os/Handler;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCustomizeSimInfoNotify(Landroid/os/Handler;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v1, :cond_4

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 532
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 533
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->disposeIccCardProxy()V

    .line 550
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    if-eqz v1, :cond_6

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 554
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V

    .line 557
    monitor-exit v2

    .line 558
    return-void

    .line 535
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 539
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_9

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 543
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_5

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->dispose()V

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3167
    const-string v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimSmsIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 2009
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-nez v0, :cond_1

    .line 4086
    if-eqz p1, :cond_0

    .line 4087
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending voice call ability - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingEnableVoiceCallAbility:Ljava/lang/Boolean;

    .line 4090
    :cond_0
    const/4 v0, 0x0

    .line 4092
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0
.end method

.method public ensureISimSession(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 3924
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->ensureISimSession(Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;)V

    .line 3925
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 969
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "GSM"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4277
    const-string v0, "GSM"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    const-string v0, ""

    .line 4281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isActEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    .line 1915
    :goto_0
    return-void

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    .line 3603
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 990
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBandCapability()I
    .locals 3

    .prologue
    .line 3289
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBandCapability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBandCapability:I

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3555
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3556
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3557
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCallForwardingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3558
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCFUNumber:Ljava/lang/String;

    .line 3561
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCFUQueryStatus()Z
    .locals 2

    .prologue
    .line 3534
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3535
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3536
    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 3538
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCBFacility"
    .parameter "onComplete"

    .prologue
    .line 1846
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getValidCommandInterfaceCBFacility(I)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, CBFacility:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1848
    const-string v1, "GSM"

    const-string v2, "requesting call arring query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1851
    :cond_0
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1770
    const-string v1, "GSM"

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-nez p1, :cond_1

    .line 1773
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1777
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1779
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1775
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->callType:Lcom/android/internal/telephony/Phone$CallType;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1889
    return-void
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3100
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3102
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 777
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_2

    .line 779
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 815
    :cond_1
    :goto_0
    return-object v0

    .line 783
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 785
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->isModemLinkOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->getDataActivityState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 789
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 792
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 797
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 799
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 800
    goto :goto_0

    .line 803
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 804
    goto :goto_0

    .line 807
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3576
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3577
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3578
    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-eqz v1, :cond_0

    .line 3579
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    .line 3582
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1747
    const/16 v0, 0x10

    .line 1748
    .local v0, serviceClass:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOptionOfServiceClass(IILandroid/os/Message;)V

    .line 1750
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 708
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDataCallForwardingStatus()Z

    move-result v1

    .line 711
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2001
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 723
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 729
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 731
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_2

    .line 735
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 746
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 748
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 751
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 752
    goto :goto_0

    .line 756
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 758
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 760
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 762
    goto :goto_0

    .line 767
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2046
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 4308
    if-eqz p1, :cond_0

    const-string v0, "GSM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 4310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getECCUssdStatus()Z
    .locals 4

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1533
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "ussd_verification_status_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, status:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEccUssdMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1538
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccUSSDMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEccUssdString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1527
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "ussd_verification_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1509
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 978
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 2

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 3987
    const-string v0, "GSM"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    const/4 v0, -0x1

    .line 3991
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v0

    return v0
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4215
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4216
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 4230
    :cond_0
    :goto_0
    return-object v1

    .line 4218
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 4219
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_4

    .line 4220
    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 4221
    .local v1, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-nez v1, :cond_2

    .line 4222
    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 4224
    :cond_2
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v3, :cond_0

    :cond_3
    move-object v1, v2

    .line 4227
    goto :goto_0

    .end local v1           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    :cond_4
    move-object v1, v2

    .line 4230
    goto :goto_0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1897
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1900
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 3056
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 3059
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 4
    .parameter "appType"

    .prologue
    const/4 v2, 0x0

    .line 3066
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3067
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 3068
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 3069
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 3070
    .local v1, iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_0

    .line 3080
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v1           #iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-object v1

    .restart local v0       #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    .restart local v1       #iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    move-object v1, v2

    .line 3073
    goto :goto_0

    .end local v1           #iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    move-object v1, v2

    .line 3076
    goto :goto_0

    .line 3080
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 3039
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3040
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 3046
    :goto_0
    return-object v1

    .line 3042
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 3043
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 3044
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    goto :goto_0

    .line 3046
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1558
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 1559
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1561
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1592
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1595
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1569
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 1572
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1515
    const-string v0, "00000000000000"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1516
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEID value--> 000000(6 digitals) + ESN(8 digitals) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1521
    :goto_0
    return-object v0

    .line 1520
    :cond_1
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const-string v0, "0"

    goto :goto_0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 2

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 675
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMessageCount()I

    move-result v1

    .line 678
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1581
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 1584
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1985
    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1877
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 4100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1458
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    const-string v1, "vm_number_key_cdma"

    const-string v2, "*86"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1462
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "vm_number_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPreferredOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredOperatorList(Landroid/os/Message;)V

    .line 3947
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2880
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3960
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3961
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3962
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3964
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 593
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method final getSpecificDialNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpecificDialNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1546
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1549
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 3467
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock(ILandroid/os/Message;)V

    .line 3469
    return-void
.end method

.method public getUSSDExcludeNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4045
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUSSDExcludeNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4168
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4169
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "ussd_verification_status_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4170
    .local v0, result:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USSD Verification Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 4158
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 4159
    .local v0, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4160
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "ussd_verification_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 4161
    const-string v2, "ussd_verification_hex_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 4162
    const-string v2, "ussd_verification_digits_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 4163
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USSD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tHexCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tdigits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    return-object v0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 696
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingStatus()Z

    move-result v1

    .line 699
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, ret:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1484
    .local v1, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v1, :cond_0

    .line 1485
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1488
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1489
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    .end local v0           #ret:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1413
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1416
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "vm_number_key_cdma"

    const-string v5, "*86"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1433
    .end local v0           #number:Ljava/lang/String;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .local v1, number:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1423
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1424
    .restart local v0       #number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1425
    .local v2, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_1

    .line 1426
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1429
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1431
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    const-string v4, "vm_number_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move-object v1, v0

    .line 1433
    .end local v0           #number:Ljava/lang/String;
    .restart local v1       #number:Ljava/lang/String;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 604
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1218
    :goto_0
    return v1

    .line 1187
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1188
    goto :goto_0

    .line 1191
    :cond_1
    const/4 v1, 0x0

    .line 1192
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1193
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1195
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1197
    goto :goto_0

    .line 1199
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1201
    goto :goto_0

    .line 1203
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1204
    goto :goto_0

    .line 1206
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1207
    goto :goto_0

    .line 1209
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1210
    goto :goto_0

    .line 1212
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1213
    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    .line 2174
    sget-boolean v30, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v30, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v30

    if-eqz v30, :cond_2

    :cond_0
    sget-boolean v30, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v30, :cond_2

    .line 2176
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " GSMPhone drop event "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_1
    :goto_0
    return-void

    .line 2184
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 2658
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2186
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v14

    .line 2187
    .local v14, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v14, :cond_1

    .line 2188
    const/16 v30, 0x3

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2193
    .end local v14           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x36

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getBandCapability(ILandroid/os/Message;)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2208
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->reQueryNecessaryInfoAfterRadioOn()V

    .line 2211
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2212
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyRadioOnP()V

    goto/16 :goto_0

    .line 2219
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto/16 :goto_0

    .line 2224
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleIdenticalNumericCase()V

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->readSpecialDialNumber:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 2242
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->readSpecialDialNumber:Z

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initSpecificDialNumbers()V

    goto/16 :goto_0

    .line 2249
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2251
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2255
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Baseband version: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const-string v31, "gsm.version.baseband"

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2262
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2264
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2267
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Ljava/lang/String;

    move-object/from16 v23, v30

    check-cast v23, [Ljava/lang/String;

    .line 2268
    .local v23, respId:[Ljava/lang/String;
    const/16 v30, 0x2

    aget-object v30, v23, v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 2269
    const/16 v30, 0x3

    aget-object v30, v23, v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    goto/16 :goto_0

    .line 2275
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v23           #respId:[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2277
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2281
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    goto/16 :goto_0

    .line 2285
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2287
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2291
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 2295
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2297
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Ljava/lang/String;

    move-object/from16 v28, v30

    check-cast v28, [Ljava/lang/String;

    .line 2299
    .local v28, ussdResult:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 2301
    const/16 v30, 0x0

    :try_start_0
    aget-object v30, v28, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x1

    aget-object v31, v28, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2302
    :catch_0
    move-exception v11

    .line 2303
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v30, "GSM"

    const-string v31, "error parsing USSD"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2312
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v28           #ussdResult:[Ljava/lang/String;
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/IccCard;->setIccCardExpired(Z)V

    .line 2322
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v30

    if-nez v30, :cond_1

    .line 2326
    const/4 v12, 0x0

    .local v12, i:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v24

    .local v24, s:I
    :goto_1
    move/from16 v0, v24

    if-ge v12, v0, :cond_1

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2326
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2332
    .end local v24           #s:I
    :catch_1
    move-exception v11

    .line 2334
    .local v11, e:Ljava/lang/Exception;
    const-string v30, "GSM"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2342
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #i:I
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2343
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2344
    .local v19, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2348
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v19           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2349
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_6

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    .line 2352
    .local v7, b:Landroid/os/Bundle;
    const-string v10, ""

    .line 2353
    .local v10, dialNumber:Ljava/lang/String;
    const/16 v25, 0x0

    .line 2354
    .local v25, serviceClass:I
    if-eqz v7, :cond_4

    .line 2355
    const-string v30, "dialingNumber"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2356
    const-string v30, "serviceClass"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2360
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2361
    .local v26, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v26, :cond_6

    .line 2362
    and-int/lit8 v30, v25, 0x10

    if-eqz v30, :cond_5

    .line 2364
    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    const/16 v30, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDataCallForwardingFlag(IZILjava/lang/String;)V

    .line 2367
    :cond_5
    and-int/lit8 v30, v25, 0x1

    if-eqz v30, :cond_6

    .line 2369
    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 2375
    .end local v7           #b:Landroid/os/Bundle;
    .end local v10           #dialNumber:Ljava/lang/String;
    .end local v25           #serviceClass:I
    .end local v26           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_6
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    .line 2376
    .local v20, onComplete:Landroid/os/Message;
    if-eqz v20, :cond_1

    .line 2377
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2378
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2364
    .end local v20           #onComplete:Landroid/os/Message;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v10       #dialNumber:Ljava/lang/String;
    .restart local v25       #serviceClass:I
    .restart local v26       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_7
    const/16 v30, 0x0

    goto :goto_2

    .line 2369
    :cond_8
    const/16 v30, 0x0

    goto :goto_3

    .line 2383
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v10           #dialNumber:Ljava/lang/String;
    .end local v25           #serviceClass:I
    .end local v26           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2384
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-class v30, Lcom/android/internal/telephony/IccVmNotSupportedException;

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2386
    const/16 v30, 0x0

    move-object/from16 v0, v30

    iput-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2393
    :cond_9
    :goto_4
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    .line 2394
    .restart local v20       #onComplete:Landroid/os/Message;
    if-eqz v20, :cond_a

    .line 2395
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2396
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 2400
    :cond_a
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.htc.intent.action.VMNumChanged"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2401
    .local v29, vm_intent:Landroid/content/Intent;
    const-string v30, "phone_type"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2389
    .end local v20           #onComplete:Landroid/os/Message;
    .end local v29           #vm_intent:Landroid/content/Intent;
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_4

    .line 2408
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2409
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    .line 2410
    .restart local v20       #onComplete:Landroid/os/Message;
    if-eqz v20, :cond_1

    .line 2411
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_c

    .line 2412
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2416
    :goto_5
    if-eqz v20, :cond_1

    .line 2417
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2414
    :cond_c
    const/16 v30, 0x0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_5

    .line 2423
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v20           #onComplete:Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2424
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_d

    .line 2425
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v30, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2427
    :cond_d
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    .line 2428
    .restart local v20       #onComplete:Landroid/os/Message;
    if-eqz v20, :cond_1

    .line 2429
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2430
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2435
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v20           #onComplete:Landroid/os/Message;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2436
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v31, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 2440
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2441
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2445
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2446
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 2452
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2457
    :sswitch_14
    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v31, 0x60

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 2459
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2460
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 2461
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    check-cast v30, [I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMMLocationUpdateInfoP([I)V

    goto/16 :goto_0

    .line 2469
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleBandCapability(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2474
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2475
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleIccExpiredFromRadio(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2481
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2482
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_e

    .line 2483
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2485
    :cond_e
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    .line 2486
    .restart local v20       #onComplete:Landroid/os/Message;
    if-eqz v20, :cond_1

    .line 2487
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2488
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2494
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v20           #onComplete:Landroid/os/Message;
    :sswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->stopIncomingUssdNotification()V

    goto/16 :goto_0

    .line 2500
    :sswitch_19
    const-string v30, "GSM"

    const-string v31, "EVENT_RESTORE_MANUAL_SELECT_NETWORK_DONE"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2502
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10

    .line 2503
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 2504
    const-string v30, "GSM"

    const-string v31, "SELECT_INCORRECT_OPERATOR"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    new-instance v9, Landroid/content/Intent;

    const-string v30, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2506
    .local v9, broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2508
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionRejectStatus(Z)V

    goto/16 :goto_0

    .line 2512
    .end local v9           #broadcast:Landroid/content/Intent;
    :cond_f
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionRejectStatus(Z)V

    goto/16 :goto_0

    .line 2517
    :cond_10
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionRejectStatus(Z)V

    goto/16 :goto_0

    .line 2526
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_1a
    const-string v30, "GSM"

    const-string v31, "EVENT_NETWORK_SELECTION_STATE"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 2528
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2529
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    move-object/from16 v22, v30

    check-cast v22, [I

    .line 2536
    .local v22, registration:[I
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mManualSelection:Z

    .line 2539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2540
    .restart local v26       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v26, :cond_11

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspPlmnEnabled()Z

    move-result v30

    if-nez v30, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_11

    .line 2543
    const-string v30, "GSM"

    const-string v31, "Reset the network selection mode to Automatic"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearNetworkSelection()V

    .line 2545
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2546
    :cond_11
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_1

    .line 2547
    const/16 v30, 0x0

    aget v30, v22, v30

    if-eqz v30, :cond_12

    .line 2548
    const-string v30, "GSM"

    const-string v31, "SELECT_INCORRECT_OPERATOR"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    new-instance v9, Landroid/content/Intent;

    const-string v30, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2551
    .restart local v9       #broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2553
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionRejectStatus(Z)V

    goto/16 :goto_0

    .line 2556
    .end local v9           #broadcast:Landroid/content/Intent;
    :cond_12
    const-string v30, "GSM"

    const-string v31, "Registration succeeded"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionRejectStatus(Z)V

    goto/16 :goto_0

    .line 2569
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v22           #registration:[I
    .end local v26           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :sswitch_1b
    const-string v4, "update_nel_table=on"

    .line 2570
    .local v4, acdbTableChangedParameter:Ljava/lang/String;
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EVENT_ACDB_TABLE_CHANGED: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "audio"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 2573
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2579
    .end local v4           #acdbTableChangedParameter:Ljava/lang/String;
    .end local v6           #audioManager:Landroid/media/AudioManager;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2581
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-nez v30, :cond_13

    .line 2582
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    check-cast v30, [I

    const/16 v31, 0x0

    aget v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    .line 2583
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ISIM session started with Id = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingOperation:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;

    .line 2590
    .local v21, op:Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2585
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v21           #op:Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
    :cond_13
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    .line 2586
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to select ISIM app: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2592
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingOperation:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 2597
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v13           #i$:Ljava/util/Iterator;
    :sswitch_1d
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mISimSessionId:I

    .line 2598
    const-string v30, "GSM"

    const-string v31, "ISIM session stopped"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLogicalChannelSetupLock:Ljava/util/concurrent/Semaphore;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 2604
    :sswitch_1e
    const-string v30, "GSM"

    const-string v31, "EVENT_CUSTOMIZE_SIM_INFO_NOTIFY"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2606
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 2607
    .local v27, siminfo:Ljava/lang/String;
    if-eqz v27, :cond_1a

    .line 2611
    const-string v30, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2612
    .local v15, info:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 2613
    const/16 v30, 0x0

    aget-object v30, v15, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2614
    .local v18, mncLen:I
    const/16 v30, 0x3

    move/from16 v0, v18

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    .line 2615
    const/16 v18, 0x0

    .line 2621
    :cond_15
    const/16 v30, 0x1

    aget-object v30, v15, v30

    if-eqz v30, :cond_18

    .line 2622
    const/16 v17, 0x0

    .line 2623
    .local v17, mccmnc:Ljava/lang/String;
    const/16 v30, 0x1

    aget-object v30, v15, v30

    move/from16 v0, v18

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v18

    .line 2624
    if-eqz v18, :cond_16

    const/16 v30, 0x3

    move/from16 v0, v18

    move/from16 v1, v30

    if-gt v0, v1, :cond_16

    .line 2625
    const/16 v30, 0x1

    aget-object v30, v15, v30

    const/16 v31, 0x0

    add-int/lit8 v32, v18, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2631
    :goto_8
    if-eqz v17, :cond_17

    .line 2635
    new-instance v8, Landroid/content/Intent;

    const-string v30, "android.htc.intent.action.SIM_INFO"

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2636
    .local v8, bc:Landroid/content/Intent;
    const-string v30, "mccmnc"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2627
    .end local v8           #bc:Landroid/content/Intent;
    :cond_16
    const/16 v30, 0x1

    aget-object v30, v15, v30

    const/16 v31, 0x0

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2628
    .local v16, mcc:I
    const/16 v30, 0x1

    aget-object v30, v15, v30

    const/16 v31, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v32

    add-int/lit8 v32, v32, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    .line 2639
    .end local v16           #mcc:I
    :cond_17
    const-string v30, "GSM"

    const-string v31, "mccmnc is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2642
    .end local v17           #mccmnc:Ljava/lang/String;
    :cond_18
    const-string v30, "GSM"

    const-string v31, "info[1] is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2645
    .end local v18           #mncLen:I
    :cond_19
    const-string v30, "GSM"

    const-string v31, "Wrong format of siminfo "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2648
    .end local v15           #info:[Ljava/lang/String;
    :cond_1a
    const-string v30, "GSM"

    const-string v31, "siminfo is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2654
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #siminfo:Ljava/lang/String;
    :sswitch_1f
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2184
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_b
        0x3 -> :sswitch_4
        0x5 -> :sswitch_2
        0x6 -> :sswitch_5
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xc -> :sswitch_c
        0xd -> :sswitch_f
        0x10 -> :sswitch_13
        0x11 -> :sswitch_13
        0x12 -> :sswitch_17
        0x13 -> :sswitch_3
        0x14 -> :sswitch_d
        0x15 -> :sswitch_6
        0x1c -> :sswitch_11
        0x1d -> :sswitch_10
        0x1e -> :sswitch_12
        0x33 -> :sswitch_14
        0x34 -> :sswitch_18
        0x35 -> :sswitch_19
        0x36 -> :sswitch_15
        0x37 -> :sswitch_16
        0x64 -> :sswitch_e
        0x6f -> :sswitch_1b
        0x70 -> :sswitch_1a
        0x7f -> :sswitch_1c
        0x80 -> :sswitch_1d
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1e
        0xca -> :sswitch_1f
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 1329
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1331
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    const-string v1, "04"

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1338
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1339
    const/4 v1, 0x1

    .line 1342
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 2

    .prologue
    .line 3676
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcGsmModemLink;->isModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 3500
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifyDataConnectionDisconnect:Z

    .line 3501
    const/4 v0, 0x1

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 3417
    const-string v0, "content://customization_settings/SettingTable/application_HtcPhone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3418
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3420
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 3421
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3422
    .local v12, valueIndx:I
    const/4 v0, -0x1

    if-eq v0, v12, :cond_0

    .line 3423
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3424
    const/4 v8, 0x0

    .line 3426
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3431
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3434
    if-eqz v8, :cond_0

    .line 3435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 3436
    .local v10, parcel:Landroid/os/Parcel;
    array-length v0, v8

    invoke-virtual {v10, v8, v13, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3437
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3439
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3440
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 3442
    const-string v0, "specificDialNumbers"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 3443
    .local v11, specificDialNumbers:Landroid/os/Bundle;
    if-eqz v11, :cond_2

    .line 3444
    const-string v0, "numbers"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpecificDialNumbers:Ljava/lang/String;

    .line 3445
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpecificDialNumbers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3447
    const-string v0, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cust_Htcphone : specificDialNumbers> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpecificDialNumbers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v10           #parcel:Landroid/os/Parcel;
    .end local v11           #specificDialNumbers:Landroid/os/Bundle;
    .end local v12           #valueIndx:I
    :cond_0
    :goto_1
    return-void

    .line 3427
    .restart local v8       #data:[B
    .restart local v12       #valueIndx:I
    :catch_0
    move-exception v9

    .line 3428
    .local v9, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 3429
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpecificDialNumbers:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3431
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3450
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #parcel:Landroid/os/Parcel;
    .restart local v11       #specificDialNumbers:Landroid/os/Bundle;
    :cond_1
    const-string v0, "GSM"

    const-string v2, "Empty customer specifc dial numbers!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3453
    :cond_2
    const-string v0, "GSM"

    const-string v2, "Empty bundle - specificDialNumbers!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initUSSDExcludeNumbers()V
    .locals 8

    .prologue
    .line 4011
    const-string v0, "ro.ussd_exclude"

    .line 4012
    .local v0, key_default:Ljava/lang/String;
    const/4 v1, 0x0

    .line 4013
    .local v1, key_mcc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4015
    .local v2, key_mccmnc:Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUSSDExcludeNumbers:[Ljava/lang/String;

    .line 4017
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 4018
    .local v4, operator:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4019
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4020
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4023
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4026
    :cond_0
    const/4 v3, 0x0

    .line 4027
    .local v3, numbers:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4028
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4031
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4032
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4035
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4036
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4039
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4040
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUSSDExcludeNumbers:[Ljava/lang/String;

    .line 4042
    :cond_4
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1741
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 3116
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3117
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3118
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspPlmnEnabled()Z

    move-result v1

    .line 3120
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 3670
    const/4 v0, 0x0

    return v0
.end method

.method isInCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1223
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-nez v4, :cond_1

    .line 1224
    const-string v4, "GSM"

    const-string v5, "isInCall(): GsmCallTracker has been disposed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_0
    :goto_0
    return v3

    .line 1228
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1229
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1230
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1232
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 2

    .prologue
    .line 2904
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2905
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 2906
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspPlmnEnabled()Z

    move-result v1

    .line 2908
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyATDMmiComplete(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 899
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 887
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallDisconnected(Lcom/android/internal/telephony/Connection;)V

    .line 853
    return-void
.end method

.method public notifyIccCardReady()V
    .locals 1

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-eqz v0, :cond_0

    .line 4253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onReady()V

    .line 4254
    :cond_0
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 877
    return-void
.end method

.method public notifyMMLocationUpdateInfo([I)V
    .locals 0
    .parameter "causeCode"

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMMLocationUpdateInfoP([I)V

    .line 893
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 842
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 843
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 823
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 1

    .prologue
    .line 831
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPrecisePhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 837
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 865
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 866
    return-void
.end method

.method notifyServiceStateChangedSeparately()V
    .locals 0

    .prologue
    .line 870
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedSeparatelyP()V

    .line 871
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 882
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method public notifyUnblockPin2Done()V
    .locals 0

    .prologue
    .line 903
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 857
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2066
    :cond_1
    return-void
.end method

.method processRestartManualNetworkSelection()V
    .locals 3

    .prologue
    .line 2891
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v1

    .line 2894
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2895
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2898
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public queryNFCpdp()I
    .locals 1

    .prologue
    .line 3226
    const/4 v0, -0x1

    .line 3260
    .local v0, cid:I
    return v0
.end method

.method public reReadISimRecords()Z
    .locals 1

    .prologue
    .line 4243
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-eqz v0, :cond_0

    .line 4244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 4245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcIsimRecords:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 4246
    const/4 v0, 0x1

    .line 4248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3864
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3664
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3485
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3768
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3801
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3721
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3818
    const-string v0, "GSM"

    const-string v1, "OoO This registerForNetworkbusy is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3492
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3655
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3647
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3788
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    return-void
.end method

.method public registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3132
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_1

    .line 3133
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3134
    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3136
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3137
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3144
    :cond_0
    :goto_0
    return-void

    .line 3141
    :cond_1
    const-string v1, "GSM"

    const-string v2, "SIMRecords is null and do not register EVENT_NEW_ICC_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 919
    :cond_0
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3747
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3638
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3631
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 934
    return-void
.end method

.method public removePreferredOperatorList(ILandroid/os/Message;)V
    .locals 1
    .parameter "index"
    .parameter "response"

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->removePreferredOperatorList(ILandroid/os/Message;)V

    .line 3936
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    const-string v0, "GSM"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 564
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 565
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 566
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 567
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 568
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 569
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIcc30DaysExpiredReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmModemLink:Lcom/android/internal/telephony/gsm/HtcGsmModemLink;

    .line 574
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    .line 576
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 577
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 4001
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 4002
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getGID1()Ljava/lang/String;

    move-result-object v1

    .line 4004
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3710
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    return-void
.end method

.method public requestGetSIMType()I
    .locals 2

    .prologue
    .line 4108
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 4109
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 4110
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getO2SIMCardType()I

    move-result v1

    .line 4112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "response"

    .prologue
    .line 3833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3834
    const-string v0, "GSM"

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

    .line 3835
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3840
    return-void

    .line 3838
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input - command with String type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3185
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 3191
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3694
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 3480
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 3858
    const-string v0, "GSM"

    const-string v1, "requestSetLBSNTFY, not support in GSM mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 0
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 3852
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 2781
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2782
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2783
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2786
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2787
    const-string v2, "GSM"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 6
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1957
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isActEnabled()Z

    move-result v0

    .line 1961
    .local v0, isActEnabled:Z
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1962
    .local v2, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1963
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1964
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1966
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->AcT:Ljava/lang/String;

    .line 1970
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1974
    .local v1, msg:Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 1975
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->AcT:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualAppendAcT(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1980
    :goto_1
    return-void

    .line 1966
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const-string v3, "-1"

    goto :goto_0

    .line 1977
    .restart local v1       #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 1381
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1354
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1355
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 1346
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1347
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1349
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method public setCBLanguageEFlp([B)V
    .locals 2
    .parameter "lp"

    .prologue
    .line 2944
    const-string v0, "GSM"

    const-string v1, "setCBLanguageEFlp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 0
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 2939
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 4
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3610
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3611
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3612
    if-eqz p1, :cond_2

    .line 3613
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3615
    invoke-virtual {v0, v2, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 3626
    :cond_0
    :goto_0
    return v2

    .line 3618
    :cond_1
    invoke-virtual {v0, v2, v2, v3, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    goto :goto_0

    .line 3622
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1857
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getValidCommandInterfaceCBFacility(I)Ljava/lang/String;

    move-result-object v1

    .line 1858
    .local v1, CBFacility:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1862
    :cond_0
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1786
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    if-nez p2, :cond_2

    .line 1791
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1794
    .local v6, resp:Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1795
    .local v7, b:Landroid/os/Bundle;
    const-string v0, "dialingNumber"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string v0, "serviceClass"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1797
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1802
    .end local v7           #b:Landroid/os/Bundle;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1809
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1791
    goto :goto_0

    .line 1800
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1893
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 3110
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3112
    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 1817
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    if-nez p2, :cond_2

    .line 1822
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1825
    .local v6, resp:Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1826
    .local v7, b:Landroid/os/Bundle;
    const-string v0, "dialingNumber"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v0, "serviceClass"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1828
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1833
    .end local v7           #b:Landroid/os/Bundle;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1840
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1822
    goto :goto_0

    .line 1831
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnNationalRoamingMode(I)V

    .line 2025
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 2021
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 2
    .parameter "roamingOption"

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 3975
    const-string v0, "GSM"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    :goto_0
    return-void

    .line 3980
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setGlobalDataRoamingOption(I)V

    goto :goto_0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1603
    .local v1, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v1, :cond_1

    .line 1604
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    if-eqz p3, :cond_0

    .line 1607
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1609
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1610
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1993
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1937
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1938
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1939
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1940
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1942
    const-string v2, "-1"

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->AcT:Ljava/lang/String;

    .line 1946
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1948
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSM"

    const-string v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1951
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1988
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1989
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1883
    return-void
.end method

.method public setPreferredOperatorList([Ljava/lang/String;[ILandroid/os/Message;)V
    .locals 1
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredOperatorList([Ljava/lang/String;[ILandroid/os/Message;)V

    .line 3953
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 1387
    if-nez p1, :cond_0

    .line 1388
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->hangupAllCalls()V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 1392
    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPowerExt(Z)V

    .line 4053
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 3474
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3476
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 912
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetTTYMode(ILandroid/os/Message;)V

    .line 3510
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 4
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2830
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->TEST_ICC:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_2

    .line 2831
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTestIcc:Z

    .line 2835
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    return-void

    .line 2833
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTestIcc:Z

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 4175
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4177
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4178
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4179
    :cond_0
    const-string v2, "ussd_verification_status_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4181
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4182
    const-string v2, "GSM"

    const-string v3, "failed to commit TMO ussd verification preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    :cond_2
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 4189
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ussd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hexCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "digits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4193
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4194
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4195
    const-string v2, "ussd_verification_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4198
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4199
    const-string v2, "ussd_verification_hex_key"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4202
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4203
    const-string v2, "ussd_verification_digits_key"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4206
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4207
    const-string v2, "GSM"

    const-string v3, "failed to commit TMO ussd verification preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->processUSSDVerificationStrings()V

    .line 4210
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 1621
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1622
    const/16 v3, 0x14

    invoke-virtual {p0, v3, v4, v4, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1625
    .local v1, resp:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1626
    .local v2, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_1

    .line 1627
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    if-eqz p3, :cond_0

    .line 1630
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1632
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1633
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 3
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 4324
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 4325
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 4326
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 4330
    :goto_0
    return-void

    .line 4328
    :cond_0
    const-string v1, "GSM"

    const-string v2, "Can\'t get IccRecord to setVoiceMessageWaiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1366
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1377
    return-void
.end method

.method storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1399
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1402
    const-string v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1407
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1408
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1409
    return-void

    .line 1405
    :cond_0
    const-string v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 939
    return-void
.end method

.method protected syncClirSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2150
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2151
    .local v0, clirSetting:I
    if-ltz v0, :cond_0

    .line 2156
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2158
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2160
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public turnOnRadioDueToECC()V
    .locals 1

    .prologue
    .line 2952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    .line 2953
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHtcGsmDataRoamGuard:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->unregisterForNotification(Landroid/os/Handler;)V

    .line 3868
    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 3665
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3488
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3777
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3810
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3730
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3822
    const-string v0, "GSM"

    const-string v1, "OoO This unregisterForNetworkbusy is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3496
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 3659
    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 3651
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3797
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    return-void
.end method

.method public unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 3154
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3155
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3156
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 3157
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3158
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3159
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3162
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 924
    :cond_0
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 3756
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 3642
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 3635
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2683
    .local v2, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v2, :cond_0

    .line 2685
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2686
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2688
    .local v1, map:Landroid/content/ContentValues;
    const-string v4, "numeric"

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    const/4 v4, 0x1

    .line 2696
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "GSM"

    const-string v5, "Can\'t store current operator"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2696
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 1
    .parameter "operatorNumeric"

    .prologue
    .line 2701
    const/4 v0, 0x1

    return v0
.end method

.method public updateMessageWaitingIndicator(ZI)V
    .locals 2
    .parameter "mwi"
    .parameter "count"

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3208
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 3209
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 3212
    :cond_0
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 2005
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 4266
    const-string v0, "GSM"

    const-string v1, "GSM: wifi2GRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 4269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->wifi2GRetry()V

    .line 4271
    :cond_0
    return-void
.end method
