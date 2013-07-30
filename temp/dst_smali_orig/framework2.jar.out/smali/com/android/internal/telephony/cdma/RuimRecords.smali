.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x69

.field private static final EVENT_GET_KDDI_USER_AGENT_DONE:I = 0x6b

.field private static final EVENT_GET_MDN_DONE:I = 0x67

.field private static final EVENT_GET_MIPUPP_DONE:I = 0x6e

.field private static final EVENT_GET_SF_EUIMID:I = 0x71

.field private static final EVENT_GET_SIPUPP_DONE:I = 0x6d

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPN_DONE:I = 0x65

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_HTC_BASE:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0x6f

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x68

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RIL_CDMA_RS_INFO:I = 0x6a

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x6c

.field private static final EVENT_SIM_SWAP_STATUS:I = 0x70

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final IMSI_M_PROGRAMMED_BYTE:I = 0x8

.field private static final IMSI_M_RECORD_SIZE:I = 0xa

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private htcAdditionalRecordsFetch:Z

.field private mImsi:Ljava/lang/String;

.field private mImsi_M:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mKddiUserAgent:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMobileIP_NAIs:[Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private mRuimExisted:Z

.field public mSfEuimid:Ljava/lang/String;

.field private mSimpleIP_NAIs:[Ljava/lang/String;

.field private m_ota_commited:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;->RuimRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V
    .locals 1
    .parameter "card"
    .parameter "c"
    .parameter "ci"
    .parameter "icchandler"
    .parameter "usedByIccCardProxy"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;->RuimRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/RuimRecords;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method private cdmaSpn7bitAsciiStringFieldToString([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    mul-int/lit8 v3, p3, 0x8

    div-int/lit8 v3, v3, 0x7

    invoke-static {p1, p2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .local v0, specSpn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    .local v1, spn2:Ljava/lang/String;
    if-eqz v1, :cond_1

    const/16 v3, 0xff

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .local v2, spns:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->selectSpnFromMultiple(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private clearInformationWhenRuimAbsent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, isInfoFromRuim:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .local v0, accCapas:[Z
    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    :cond_1
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mKddiUserAgent:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    return-void
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    :try_start_0
    div-int/lit8 v1, p2, 0x2

    .local v1, ucslen:I
    new-instance v2, Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    const-string v4, "utf-16be"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ucslen:I
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dropSimPbkEntries()V
    .locals 5

    .prologue
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .local v1, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    const-string v2, "dropSimPbkEntries"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private fetchRuimRecords()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->htcAdditionalRecordsFetch:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsRecordsLoad:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f32

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f44

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v0, v3, :cond_1

    const-string v0, "CDMA"

    const-string v1, "query kddi user agent string..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fe3

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->isDualPhoneWithCdmaSupport()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isGetMccMncSpnFromCSIMSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f41

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f74

    const/16 v2, 0x71

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    :cond_5
    return-void
.end method

.method private getKddiUserAgentString([B)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_3

    :cond_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKddiUserAgentString - value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, ""

    :goto_1
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_0

    :cond_3
    array-length v1, p1

    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_4

    aget-byte v3, p1, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    move v1, v0

    :cond_4
    new-array v2, v1, [B

    .local v2, str:[B
    invoke-static {p1, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .end local v2           #str:[B
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getPhoneBase()Lcom/android/internal/telephony/PhoneBase;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 3
    .parameter "refreshResponse"

    .prologue
    if-nez p1, :cond_1

    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    const/16 v1, 0x6f3a

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->dropSimPbkEntries()V

    goto :goto_0

    :sswitch_1
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->dropSimPbkEntries()V

    goto :goto_0

    :sswitch_2
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private htcConvertOctetToString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .local v0, convertedStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p1

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #convertedStr:Ljava/lang/String;
    .local v1, convertedStr:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #convertedStr:Ljava/lang/String;
    .restart local v0       #convertedStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private htcReadAdditionRecords()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->htcAdditionalRecordsFetch:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->htcAdditionalRecordsFetch:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->isOmhPossibleRuim(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    if-nez v1, :cond_2

    const/16 v1, 0x6f41

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    :cond_2
    const/16 v1, 0x6f4c

    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    const/16 v1, 0x6f4d

    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    move v1, v2

    goto :goto_0
.end method

.method private isDualPhoneWithCdmaSupport()Z
    .locals 2

    .prologue
    const v0, 0x40000002

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x20000002

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listenToBroadcastReceiver()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/cdma/RuimRecords$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/RuimRecords$1;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.RESTORE_APN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private parsingIMSI([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    const-string v6, ""

    .local v6, parsed_Mcc:Ljava/lang/String;
    const-string v1, ""

    .local v1, parsed_IMSI_11_12:Ljava/lang/String;
    const-string v5, ""

    .local v5, parsed_M_S2:Ljava/lang/String;
    const-string v2, ""

    .local v2, parsed_M_S1p1:Ljava/lang/String;
    const/16 v3, 0x20

    .local v3, parsed_M_S1p2:C
    const-string v4, ""

    .local v4, parsed_M_S1p3:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, value:I
    const/16 v8, 0x9

    :try_start_0
    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/16 v9, 0x8

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit8 v7, v8, 0x7f

    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v8, v8, 0x3fc

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int v7, v8, v9

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    aget-byte v8, p1, v8

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v7, v8, 0xf

    const/16 v8, 0xa

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, 0x30

    int-to-char v3, v8

    :goto_0
    const/4 v8, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/4 v9, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, parsed_IMSI:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local v0           #parsed_IMSI:Ljava/lang/String;
    :cond_1
    return-object v0

    :cond_2
    const/16 v3, 0x30

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private parsingImsiDigits(II)Ljava/lang/String;
    .locals 10
    .parameter "digits"
    .parameter "combinedValue"

    .prologue
    new-array v5, p1, [B

    .local v5, octDigits:[B
    move v7, p2

    .local v7, restValue:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v6, v7, 0xa

    .local v6, remainder:I
    const/16 v9, 0x9

    if-ge v6, v9, :cond_0

    add-int/lit8 v9, v6, 0x1

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    :cond_0
    sub-int/2addr v7, v6

    if-lez v7, :cond_1

    div-int/lit8 v7, v7, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v6           #remainder:I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, strBuf:Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v4, v0, v2

    .local v4, octByte:B
    add-int/lit8 v9, v4, 0x30

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #octByte:B
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private setUimOperatorAlpha(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    const-string v0, "gsm.cdma.uim.operator.alpha"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopListeningBroadcastReceiver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private static trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "ch"

    .prologue
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, len:I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v0           #len:I
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public RuimRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    iput v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsRecordsLoad:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6c

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x70

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->listenToBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    return-void
.end method

.method public cdmaSpnStringFieldToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0xff

    const/16 v5, 0x20

    const/4 v8, 0x0

    const/4 v3, 0x0

    .local v3, ret:Ljava/lang/String;
    const/4 v6, 0x2

    if-lt p3, v6, :cond_4

    aget-byte v6, p1, p2

    and-int/lit16 v0, v6, 0xff

    .local v0, encodingType:I
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v1, v6, 0xff

    .local v1, languageIndicator:I
    new-array v4, v5, [B

    .local v4, spnData:[B
    const/4 v6, 0x3

    array-length v7, p1

    if-ge v7, v5, :cond_0

    array-length v5, p1

    :cond_0
    invoke-static {p1, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    .local v2, numBytes:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v9, :cond_2

    :cond_1
    if-nez v2, :cond_3

    const-string v5, ""

    .end local v0           #encodingType:I
    .end local v1           #languageIndicator:I
    .end local v2           #numBytes:I
    .end local v4           #spnData:[B
    :goto_1
    return-object v5

    .restart local v0       #encodingType:I
    .restart local v1       #languageIndicator:I
    .restart local v2       #numBytes:I
    .restart local v4       #spnData:[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_0

    .end local v0           #encodingType:I
    .end local v1           #languageIndicator:I
    .end local v2           #numBytes:I
    .end local v4           #spnData:[B
    :cond_4
    :goto_2
    :pswitch_0
    move-object v5, v3

    goto :goto_1

    .restart local v0       #encodingType:I
    .restart local v1       #languageIndicator:I
    .restart local v2       #numBytes:I
    .restart local v4       #spnData:[B
    :pswitch_1
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v4, v8, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->cdmaSpn7bitAsciiStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_3
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const v5, 0xffff

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_4
    mul-int/lit8 v5, v2, 0x8

    div-int/lit8 v5, v5, 0x7

    invoke-static {v4, v8, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_5
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMSWAPStatus(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->stopListeningBroadcastReceiver()V

    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "CDMA"

    const-string v2, "RuimRecords:getRUIMOperatorNumeric:mImsi is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    if-ne v1, v5, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuimRecords: mncLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, mcc:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v0       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getVoiceMessageCount()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .parameter "msg"

    .prologue
    const/16 v26, 0x0

    .local v26, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Received message "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] while being destroyed. Ignoring."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v37, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v26, :cond_0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    :sswitch_0
    const/16 v37, 0x0

    :try_start_1
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mRuimExisted:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v18

    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v37, "CDMA"

    const-string v38, "Exception parsing RUIM record"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v26, :cond_0

    goto :goto_2

    .end local v18           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v37, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v37

    if-eqz v26, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    :cond_3
    throw v37

    :sswitch_2
    const/16 v26, 0x1

    :try_start_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .local v10, ar:Landroid/os/AsyncResult;
    const-string v37, "gsm.sim.state"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, prop:Ljava/lang/String;
    const-string v37, "READY"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_4

    const-string v37, "CDMA"

    const-string v38, "Querying IMSI done, but SIM state is not ready."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Exception querying IMSI, Exception:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xf

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_8

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "IMSI: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x6

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "xxxxxxxxx"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v32

    .local v32, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v32, :cond_7

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v37, v0

    if-eqz v37, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    .local v30, operatorNumeric:Ljava/lang/String;
    if-eqz v30, :cond_6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    move/from16 v37, v0

    if-eqz v37, :cond_7

    check-cast v32, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v32           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v37

    sget-object v38, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v21

    .local v21, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v21, :cond_7

    sget-object v37, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v22

    .local v22, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v22, :cond_7

    const-string v37, "IMSI"

    const/16 v38, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .end local v21           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v22           #iccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v30           #operatorNumeric:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/HtcIsimData;->SetCDMA_IMSI(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, " get imsi value may be wrong: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    goto/16 :goto_3

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v33           #prop:Ljava/lang/String;
    :sswitch_3
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [Ljava/lang/String;

    move-object/from16 v0, v37

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .local v29, localTemp:[Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    const/16 v37, 0x0

    aget-object v37, v29, v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    const/16 v37, 0x3

    aget-object v37, v29, v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_b

    const/16 v37, 0x4

    aget-object v37, v29, v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_a

    :cond_9
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No PRL version in RIL_CDMA_SUBSCRIPTION : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    :cond_a
    :goto_4
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "MDN: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " MIN: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v32

    .restart local v32       #phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v37, v0

    if-nez v37, :cond_d

    :cond_c
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v37, v0

    const/16 v38, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    goto :goto_4

    :cond_d
    const-string v38, "CDMA"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No PRL version required in RIL_CDMA_SUBSCRIPTION : "

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    if-eqz v32, :cond_e

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v37

    :goto_5
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    const-string v37, "null"

    goto :goto_5

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v29           #localTemp:[Ljava/lang/String;
    .end local v32           #phone:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_4
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_f

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    if-nez v37, :cond_10

    :cond_f
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_RIL_CDMA_RS_INFO ex="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .local v12, data:[B
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    const/16 v37, 0x0

    array-length v0, v12

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v12, v0, v1}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "iccid: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/HtcBuildUtils;->displayIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_6
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    if-eqz v10, :cond_11

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_11

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    const/16 v37, 0x0

    aget-byte v37, v12, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->spnDisplayCondition:I

    const/16 v37, 0x1

    array-length v0, v12

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->cdmaSpnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->isDualPhoneWithCdmaSupport()Z

    move-result v37

    if-eqz v37, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setUimOperatorAlpha(Ljava/lang/String;)V

    .end local v12           #data:[B
    :cond_11
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "spn: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    sget-boolean v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    const-string v37, "CDMA"

    const-string v38, "receive EVENT_GET_KDDI_USER_AGENT_DONE"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    if-nez v10, :cond_13

    const-string v37, "CDMA"

    const-string v38, "EVENT_GET_KDDI_USER_AGENT_DONE error, null result"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_14

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_GET_KDDI_USER_AGENT_DONE exception: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v35, Ljava/io/StringWriter;

    invoke-direct/range {v35 .. v35}, Ljava/io/StringWriter;-><init>()V

    .local v35, sw:Ljava/io/StringWriter;
    new-instance v16, Ljava/io/PrintWriter;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v16, errWriter:Ljava/io/PrintWriter;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_GET_KDDI_USER_AGENT_DONE exception: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v16           #errWriter:Ljava/io/PrintWriter;
    .end local v35           #sw:Ljava/io/StringWriter;
    :cond_14
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    check-cast v37, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getKddiUserAgentString([B)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mKddiUserAgent:Ljava/lang/String;

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    const-string v37, "CDMA"

    const-string v38, "RuimRecords update failed"

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-static/range {v37 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Event not supported: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_a
    const-string v37, "Event EVENT_GET_SST_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_15

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Exception querying CST, Exception:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v11, v0

    .local v11, cst:[B
    if-eqz v11, :cond_2

    array-length v0, v11

    move/from16 v37, v0

    if-lez v37, :cond_2

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EF_CST[0]: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x0

    aget-byte v39, v11, v39

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    aget-byte v37, v11, v37

    and-int/lit8 v37, v37, 0x2

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_16

    const/16 v37, 0x1

    :goto_6
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFdnEnabled:Z

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mIsFdnEnabled:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFdnEnabled:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    const/16 v37, 0x0

    goto :goto_6

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v11           #cst:[B
    :sswitch_b
    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mRuimExisted:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [I

    move-object/from16 v0, v37

    check-cast v0, [I

    move-object/from16 v25, v0

    .local v25, ints:[I
    const/16 v37, 0x0

    aget v31, v25, v37

    .local v31, otaStatus:I
    const/16 v37, 0x8

    move/from16 v0, v31

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x61

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0xad

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x2a

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x2b

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x52

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x49

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x64

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x1d

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x54

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x1e

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x43

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x55

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x1fe

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v38, 0x1fd

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    :cond_17
    const/16 v37, 0xf

    move/from16 v0, v31

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    :cond_18
    const/16 v37, 0xa

    move/from16 v0, v31

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    const/16 v37, 0x12

    move/from16 v0, v31

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    :cond_19
    const-string v37, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v25           #ints:[I
    .end local v31           #otaStatus:I
    :sswitch_d
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1a

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get MDN fail:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    array-length v0, v12

    move/from16 v37, v0

    const/16 v38, 0xb

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    const/16 v37, 0x0

    aget-byte v37, v12, v37

    and-int/lit8 v28, v37, 0xf

    .local v28, length:I
    const/16 v37, 0x9

    aget-byte v37, v12, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    const/16 v38, 0x91

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1c

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "+"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    move/from16 v1, v28

    invoke-static {v12, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mdn:Ljava/lang/String;

    .end local v28           #length:I
    :cond_1b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mdn:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mdn:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/HtcIsimData;->SetCDMA_MDN(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v28       #length:I
    :cond_1c
    const/16 v37, 0x1

    move/from16 v0, v37

    move/from16 v1, v28

    invoke-static {v12, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mdn:Ljava/lang/String;

    goto :goto_7

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v28           #length:I
    :sswitch_e
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_21

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    array-length v0, v12

    move/from16 v37, v0

    const/16 v38, 0xa

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_20

    const/16 v37, 0x7

    aget-byte v37, v12, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x80

    move/from16 v37, v0

    const/16 v38, 0x80

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1f

    const-string v37, "CDMA"

    const-string v38, "IMSI_M has been programmed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mIMSI_M_Programmed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/RuimRecords;->parsingIMSI([B)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xf

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_1e

    const-string v38, "CDMA"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "IMSI_M: "

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x6

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v39, "xxxxxxxxx("

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v39, ") replace="

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_1d

    const/16 v37, 0x1

    :goto_8
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1d
    const/16 v37, 0x0

    goto :goto_8

    :cond_1e
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "get imsi_m value may be wrong: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_M:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1f
    const-string v37, "CDMA"

    const-string v38, "IMSI_M has not been programmed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mIMSI_M_Programmed:Z

    goto/16 :goto_1

    :cond_20
    const-string v37, "CDMA"

    const-string v38, "length of EVENT_GET_IMSI_M_DONE is incorrect"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v12           #data:[B
    :cond_21
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "GET EVENT_GET_IMSI_M_DONE, Exception:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [I

    move-object/from16 v0, v37

    check-cast v0, [I

    move-object/from16 v27, v0

    .local v27, isSIMRemoved:[I
    const/16 v19, 0x0

    .local v19, hotSwapTakeEffect:Z
    if-eqz v27, :cond_22

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v37, v0

    if-lez v37, :cond_22

    const/16 v37, 0x0

    aget v37, v27, v37

    if-nez v37, :cond_22

    const/16 v19, 0x1

    :cond_22
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Event SIM_HOT_SWAP_STATUS "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " Received - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    if-eqz v27, :cond_23

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v37, v0

    :goto_9
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    goto/16 :goto_1

    :cond_23
    const/16 v37, -0x1

    goto :goto_9

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v19           #hotSwapTakeEffect:Z
    .end local v27           #isSIMRemoved:[I
    :sswitch_10
    const-string v37, "EVENT_SIM_SWAP_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    new-instance v24, Landroid/content/Intent;

    const-string v37, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v24, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v24           #intent:Landroid/content/Intent;
    :sswitch_11
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_24

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get SIPUPP fail:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_24
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    const/16 v37, 0x0

    aget-byte v37, v12, v37

    move/from16 v0, v37

    and-int/lit16 v13, v0, 0xff

    .local v13, datalen:I
    array-length v0, v12

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    if-le v13, v0, :cond_25

    array-length v0, v12

    move/from16 v37, v0

    add-int/lit8 v13, v37, -0x1

    :cond_25
    new-array v0, v13, [B

    move-object/from16 v36, v0

    .local v36, uppb:[B
    const/16 v37, 0x1

    const/16 v38, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-static {v12, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v23, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v23, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    const/16 v37, 0x4

    :try_start_5
    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .local v8, NUM_NAI:I
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    const/16 v20, 0x0

    .local v20, i:I
    :goto_a
    move/from16 v0, v20

    if-ge v0, v8, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    const/16 v38, 0x10

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_27

    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .local v6, NAI_ENTRY_INDEX:I
    const/16 v37, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .local v7, NAI_LENGTH:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    mul-int/lit8 v38, v7, 0x8

    add-int/lit8 v38, v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    move-object/from16 v37, v0

    mul-int/lit8 v38, v7, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->htcConvertOctetToString([B)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v37, v20

    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .local v3, AUTH_ALGORITHM:I
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SIP ICC"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3           #AUTH_ALGORITHM:I
    .end local v6           #NAI_ENTRY_INDEX:I
    .end local v7           #NAI_LENGTH:I
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .restart local v6       #NAI_ENTRY_INDEX:I
    .restart local v7       #NAI_LENGTH:I
    :cond_26
    move/from16 v20, v8

    goto :goto_b

    .end local v6           #NAI_ENTRY_INDEX:I
    .end local v7           #NAI_LENGTH:I
    :cond_27
    move/from16 v20, v8

    goto :goto_b

    .end local v8           #NUM_NAI:I
    .end local v20           #i:I
    :catch_1
    move-exception v17

    .local v17, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get SIPUPP error:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v13           #datalen:I
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v23           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v36           #uppb:[B
    :sswitch_12
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_28

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get MIPUPP fail:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_28
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    const/16 v37, 0x0

    aget-byte v37, v12, v37

    move/from16 v0, v37

    and-int/lit16 v13, v0, 0xff

    .restart local v13       #datalen:I
    array-length v0, v12

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    if-le v13, v0, :cond_29

    array-length v0, v12

    move/from16 v37, v0

    add-int/lit8 v13, v37, -0x1

    :cond_29
    new-array v0, v13, [B

    move-object/from16 v36, v0

    .restart local v36       #uppb:[B
    const/16 v37, 0x1

    const/16 v38, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-static {v12, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v23, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .restart local v23       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v37

    const/16 v38, 0x10

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    const/16 v37, 0x1

    :try_start_7
    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .local v9, RETRY_INFO_INCLUDED:I
    if-eqz v9, :cond_2a

    const/16 v37, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_2a
    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .restart local v8       #NUM_NAI:I
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_c
    move/from16 v0, v20

    if-ge v0, v8, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    const/16 v38, 0x77

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2f

    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .restart local v6       #NAI_ENTRY_INDEX:I
    const/16 v37, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .restart local v7       #NAI_LENGTH:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    mul-int/lit8 v38, v7, 0x8

    add-int/lit8 v38, v38, 0x6b

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    move-object/from16 v37, v0

    mul-int/lit8 v38, v7, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->htcConvertOctetToString([B)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v37, v20

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "MIP ICC"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    const/16 v37, 0x65

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .local v4, MN_AAA_SPI_INDICATOR:I
    if-eqz v4, :cond_2b

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    const/16 v38, 0x25

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2d

    const/16 v37, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_2b
    :goto_d
    move/from16 v0, v20

    if-ge v0, v8, :cond_2c

    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .local v5, MN_HA_SPI_INDICATOR:I
    if-eqz v5, :cond_2c

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v37

    const/16 v38, 0x20

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2c

    const/16 v37, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .end local v4           #MN_AAA_SPI_INDICATOR:I
    .end local v5           #MN_HA_SPI_INDICATOR:I
    .end local v6           #NAI_ENTRY_INDEX:I
    .end local v7           #NAI_LENGTH:I
    :cond_2c
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .restart local v4       #MN_AAA_SPI_INDICATOR:I
    .restart local v6       #NAI_ENTRY_INDEX:I
    .restart local v7       #NAI_LENGTH:I
    :cond_2d
    move/from16 v20, v8

    goto :goto_d

    .end local v4           #MN_AAA_SPI_INDICATOR:I
    :cond_2e
    move/from16 v20, v8

    goto :goto_e

    .end local v6           #NAI_ENTRY_INDEX:I
    .end local v7           #NAI_LENGTH:I
    :cond_2f
    move/from16 v20, v8

    goto :goto_e

    .end local v8           #NUM_NAI:I
    .end local v9           #RETRY_INFO_INCLUDED:I
    .end local v20           #i:I
    :catch_2
    move-exception v17

    .restart local v17       #ex:Ljava/lang/Exception;
    :try_start_8
    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get MIPUPP error:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v13           #datalen:I
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v23           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v36           #uppb:[B
    :sswitch_13
    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_30

    const-string v37, "CDMA"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get SF_EUIMID fail:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_30
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v0, v37

    check-cast v0, [B

    move-object v12, v0

    .restart local v12       #data:[B
    if-eqz v12, :cond_34

    array-length v0, v12

    move/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_34

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .local v34, strBuf:Ljava/lang/StringBuilder;
    array-length v0, v12

    move/from16 v37, v0

    add-int/lit8 v20, v37, -0x1

    .restart local v20       #i:I
    :goto_f
    if-ltz v20, :cond_33

    aget-byte v37, v12, v20

    shr-int/lit8 v37, v37, 0x4

    and-int/lit8 v14, v37, 0xf

    .local v14, digit1:I
    const/16 v37, 0xa

    move/from16 v0, v37

    if-ge v14, v0, :cond_31

    add-int/lit8 v37, v14, 0x30

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_10
    aget-byte v37, v12, v20

    and-int/lit8 v15, v37, 0xf

    .local v15, digit2:I
    const/16 v37, 0xa

    move/from16 v0, v37

    if-ge v15, v0, :cond_32

    add-int/lit8 v37, v15, 0x30

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11
    add-int/lit8 v20, v20, -0x1

    goto :goto_f

    .end local v15           #digit2:I
    :cond_31
    add-int/lit8 v37, v14, -0xa

    add-int/lit8 v37, v37, 0x61

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .restart local v15       #digit2:I
    :cond_32
    add-int/lit8 v37, v15, -0xa

    add-int/lit8 v37, v37, 0x61

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .end local v14           #digit1:I
    .end local v15           #digit2:I
    :cond_33
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SF_EUIMID: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x6

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "xxxxxxxxx"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v20           #i:I
    .end local v34           #strBuf:Ljava/lang/StringBuilder;
    :cond_34
    const-string v38, "CDMA"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Empty SF_EUIMID len:"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    if-eqz v12, :cond_35

    array-length v0, v12

    move/from16 v37, v0

    :goto_12
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :cond_35
    const/16 v37, -0x1

    goto :goto_12

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_5
        0xa -> :sswitch_3
        0xe -> :sswitch_8
        0x11 -> :sswitch_a
        0x12 -> :sswitch_9
        0x13 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x1f -> :sswitch_b
        0x65 -> :sswitch_6
        0x67 -> :sswitch_d
        0x68 -> :sswitch_c
        0x69 -> :sswitch_e
        0x6a -> :sswitch_4
        0x6b -> :sswitch_7
        0x6c -> :sswitch_f
        0x6d -> :sswitch_11
        0x6e -> :sswitch_12
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x71 -> :sswitch_13
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

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

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->htcReadAdditionRecords()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->dynamicUpdateApn(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, prop:Ljava/lang/String;
    const-string v4, "READY"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CDMA"

    const-string v5, "RuimRecords: record load complete, but SIM is not ready state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsRecordsLoad:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .local v2, operator:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuimRecords: onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v5, "LOADED"

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #operator:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .local v0, appId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuimRecords "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": record load complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->countVoiceMessages:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->clearInformationWhenRuimAbsent()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsRecordsLoad:Z

    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->dropSimPbkEntries()V

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords:onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    const-string v0, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 1
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/IccException;

    const-string v3, "setVoiceMailNumber not implemented"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 3
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
