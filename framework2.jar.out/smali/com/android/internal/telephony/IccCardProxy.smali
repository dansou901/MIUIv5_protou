.class public Lcom/android/internal/telephony/IccCardProxy;
.super Lcom/android/internal/telephony/IccCard;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final AID_ENTRY_INDEX_CSIM:I = 0x0

.field private static final AID_ENTRY_INDEX_USIM:I = 0x1

.field private static final CHECK_AID_NUM:I = 0x2

.field private static final CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

.field private static final ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"

.field private static final RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final TEST_ICC:Ljava/util/ArrayList;

.field private static final UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;


# instance fields
.field AID_CSIM:Ljava/lang/String;

.field AID_USIM:Ljava/lang/String;

.field private mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

.field private mIccRecords:[Lcom/android/internal/telephony/IccRecords;

.field private mNvOperatorNumeric:Ljava/lang/String;

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field private mTestIcc:Z

.field private mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsUpdatedRegistrants:Landroid/os/RegistrantList;

.field private supportAID:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2d8

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x54

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x55

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x43

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1fe

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1fd

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v1

    const-string v4, "999"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    .line 805
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 810
    new-array v0, v2, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 814
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 818
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 824
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 828
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 834
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 838
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 845
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 852
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-void

    :cond_1
    move v0, v1

    .line 57
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "phone"
    .parameter "is3gpp"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x35

    const/4 v2, 0x2

    .line 110
    const-string v0, "Iccs"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 82
    const-string v0, "A0000003431002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    .line 83
    const-string v0, "A0000000871002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    .line 89
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 239
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 266
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/BaseCommands;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetIccDetailStatus()V

    .line 126
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 127
    return-void
.end method

.method private dispose_StkService()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 544
    :cond_0
    return-void
.end method

.method private getIccFileHandler([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 12
    .parameter "searchingTypes"

    .prologue
    const/4 v9, 0x0

    .line 894
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-nez v10, :cond_1

    move-object v4, v9

    .line 935
    :cond_0
    :goto_0
    return-object v4

    .line 899
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v8, v0, v3

    .line 900
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .local v1, arr$:[Lcom/android/internal/telephony/IccFileHandler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v4, v1, v2

    .line 901
    .local v4, iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 902
    .local v7, matchHandler:Z
    if-eqz v4, :cond_2

    .line 903
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 930
    :cond_2
    :goto_3
    if-nez v7, :cond_0

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 905
    :pswitch_0
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .line 906
    goto :goto_3

    .line 908
    :pswitch_1
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .line 909
    goto :goto_3

    .line 911
    :pswitch_2
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .line 912
    goto :goto_3

    .line 914
    :pswitch_3
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .line 915
    goto :goto_3

    .line 918
    :pswitch_4
    instance-of v7, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .line 919
    goto :goto_3

    .line 921
    :pswitch_5
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    if-nez v10, :cond_3

    const/4 v7, 0x1

    :goto_4
    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .line 899
    .end local v4           #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v7           #matchHandler:Z
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_5
    move-object v4, v9

    .line 935
    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIccRecords([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;
    .locals 12
    .parameter "searchingTypes"

    .prologue
    const/4 v9, 0x0

    .line 978
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-nez v10, :cond_1

    move-object v4, v9

    .line 1017
    :cond_0
    :goto_0
    return-object v4

    .line 983
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v8, v0, v3

    .line 984
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v1, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v4, v1, v2

    .line 985
    .local v4, iccRecord:Lcom/android/internal/telephony/IccRecords;
    const/4 v7, 0x0

    .line 986
    .local v7, matchRecord:Z
    if-eqz v4, :cond_2

    .line 987
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1012
    :cond_2
    :goto_3
    if-nez v7, :cond_0

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 989
    :pswitch_0
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 990
    goto :goto_3

    .line 992
    :pswitch_1
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 993
    goto :goto_3

    .line 995
    :pswitch_2
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 996
    goto :goto_3

    .line 998
    :pswitch_3
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 999
    goto :goto_3

    .line 1001
    :pswitch_4
    instance-of v7, v4, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .line 1002
    goto :goto_3

    .line 1004
    :pswitch_5
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_3

    instance-of v10, v4, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    if-nez v10, :cond_3

    const/4 v7, 0x1

    :goto_4
    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .line 983
    .end local v4           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #matchRecord:Z
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_5
    move-object v4, v9

    .line 1017
    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 571
    .local v1, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v2, v3, :cond_0

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v3, :cond_1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 577
    :cond_1
    if-nez v1, :cond_2

    .line 578
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v1

    .line 571
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_3
    return-object v1
.end method

.method private searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 605
    const/4 v2, 0x0

    .line 607
    .local v2, operatorSpn:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 608
    if-nez v2, :cond_0

    .line 609
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 610
    .local v1, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 607
    .end local v1           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    return-object v2
.end method

.method private setUICCStatus()V
    .locals 14

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, appIndex:I
    const/4 v2, 0x0

    .line 453
    .local v2, e_utran:Z
    const/4 v7, 0x0

    .line 459
    .local v7, provision:Z
    const/4 v3, 0x0

    .line 460
    .local v3, epsmmi:Z
    const/4 v4, 0x0

    .line 463
    .local v4, excpetion:Z
    const/4 v6, 0x0

    .line 464
    .local v6, operator:Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 465
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    if-eqz v9, :cond_0

    .line 468
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, AID:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v13, :cond_0

    .line 470
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 473
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_USIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v11

    .line 475
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 476
    .local v5, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 477
    instance-of v9, v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v9, :cond_0

    .line 478
    iget-boolean v2, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    .line 480
    iget-boolean v3, v5, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 481
    iget-boolean v4, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 483
    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 499
    .end local v0           #AID:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .restart local v0       #AID:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 488
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_CSIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v12

    .line 490
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 491
    .restart local v5       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 492
    instance-of v9, v5, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v9, :cond_0

    .line 493
    iget-boolean v7, v5, Lcom/android/internal/telephony/IccRecords;->mIMSI_M_Programmed:Z

    goto :goto_1

    .line 502
    .end local v0           #AID:Ljava/lang/String;
    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v8, 0x0

    .line 503
    .local v8, uicc_type:I
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_6

    if-ne v2, v11, :cond_6

    .line 504
    const/4 v8, 0x2

    .line 517
    :cond_3
    :goto_2
    const-string v9, "IccCardProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uicc_type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 520
    const-string v6, ""

    .line 524
    :cond_4
    invoke-virtual {p0, v7, v8, v6}, Lcom/android/internal/telephony/IccCardProxy;->broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V

    .line 528
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v9, :cond_5

    .line 530
    if-eqz v7, :cond_9

    .line 531
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v9, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setHtcCurrentOtaspMode(I)V

    .line 536
    :cond_5
    :goto_3
    return-void

    .line 505
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v12

    if-eq v9, v11, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_3

    .line 509
    :cond_7
    if-nez v2, :cond_8

    if-ne v4, v11, :cond_8

    if-ne v3, v11, :cond_8

    .line 510
    const/4 v8, 0x2

    goto :goto_2

    .line 512
    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    .line 533
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v9, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setHtcCurrentOtaspMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public checkTestIcc()Z
    .locals 3

    .prologue
    .line 227
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    return v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 136
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v1, :cond_3

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aput-object v3, v1, v0

    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 153
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_6

    .line 154
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aput-object v3, v1, v0

    .line 154
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_5
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 164
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v1, :cond_7

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 166
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 169
    :cond_7
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 171
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 173
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 174
    return-void
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 3

    .prologue
    .line 1066
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->is3gpp:Z

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 1068
    .local v1, searchType:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1069
    .local v0, iccfh:Lcom/android/internal/telephony/IccFileHandler;
    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 1072
    :cond_0
    return-object v0

    .line 1066
    .end local v0           #iccfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v1           #searchType:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 4
    .parameter "appType"

    .prologue
    .line 859
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v2, :cond_0

    .line 861
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 862
    .local v1, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 882
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 884
    .local v0, iccfh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 888
    .end local v0           #iccfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v1           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_1
    return-object v0

    .line 864
    .restart local v1       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 865
    goto :goto_0

    .line 867
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 868
    goto :goto_0

    .line 870
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 871
    goto :goto_0

    .line 873
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 874
    goto :goto_0

    .line 877
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 887
    .end local v1           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_0
    const-string v2, "IccCardProxy"

    const-string v3, "Default IccFileHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_1

    .line 862
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

.method public final getIccFileHandlers()[Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0
.end method

.method public getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 3
    .parameter "appType"

    .prologue
    .line 589
    const/4 v1, 0x0

    .line 591
    .local v1, operatorNumeric:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 592
    .local v0, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 593
    instance-of v2, v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_1

    .line 594
    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 600
    :cond_0
    :goto_0
    return-object v1

    .line 596
    .restart local v0       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    instance-of v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_0

    .line 597
    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 3

    .prologue
    .line 1055
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->is3gpp:Z

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 1057
    .local v1, searchType:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1058
    .local v0, iccrec:Lcom/android/internal/telephony/IccRecords;
    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1061
    :cond_0
    return-object v0

    .line 1055
    .end local v0           #iccrec:Lcom/android/internal/telephony/IccRecords;
    .end local v1           #searchType:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;
    .locals 4
    .parameter "appType"

    .prologue
    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_0

    .line 946
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 947
    .local v1, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 965
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 967
    .local v0, iccrec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 971
    .end local v0           #iccrec:Lcom/android/internal/telephony/IccRecords;
    .end local v1           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_1
    return-object v0

    .line 949
    .restart local v1       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 950
    goto :goto_0

    .line 952
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 953
    goto :goto_0

    .line 955
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 956
    goto :goto_0

    .line 958
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 959
    goto :goto_0

    .line 961
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 970
    .end local v1           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_0
    const-string v2, "IccCardProxy"

    const-string v3, "Default IccRecords"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    goto :goto_1

    .line 947
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

.method public getRecordsLoaded()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v0, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 292
    .local v2, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 300
    .end local v0           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v1           #i$:I
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #len$:I
    :cond_0
    :goto_1
    return v4

    .line 291
    .restart local v0       #arr$:[Lcom/android/internal/telephony/IccRecords;
    .restart local v1       #i$:I
    .restart local v2       #iccRec:Lcom/android/internal/telephony/IccRecords;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 198
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyIccCardReady()V
    .locals 6

    .prologue
    .line 1040
    const-string v4, "READY"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1044
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v4, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v0, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1046
    .local v2, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v2, :cond_0

    .line 1047
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->onReady()V

    .line 1045
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .end local v0           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v1           #i$:I
    .end local v2           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    .line 183
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 184
    .local v0, anyIccHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v1, "IccCardProxy"

    const-string v2, "No icc handler avaliable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 246
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 252
    :cond_0
    return-void
.end method

.method public registerForRecordsUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 273
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 275
    return-void
.end method

.method public setAllRecordsLoaded(Ljava/lang/String;)V
    .locals 11
    .parameter "appId"

    .prologue
    const/16 v9, 0xa8

    const/4 v10, 0x0

    .line 310
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v7, v7

    if-gtz v7, :cond_2

    .line 311
    :cond_0
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IccFileH empty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v7, v7

    if-gtz v7, :cond_4

    .line 317
    :cond_3
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIccRecords empty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v7, v7

    if-ge v2, v7, :cond_6

    .line 324
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v7, v7, v2

    if-eqz v7, :cond_5

    .line 325
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getRecordLoadedStatus()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 323
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_6
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v9, :cond_7

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->setUICCStatus()V

    .line 340
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, apnOperatorNumeric:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 344
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.apn.operator.numeric"

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x49

    if-eq v7, v8, :cond_a

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x54

    if-eq v7, v8, :cond_a

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x1fd

    if-eq v7, v8, :cond_a

    .line 355
    const-string v4, ""

    .line 356
    .local v4, operatorNumeric:Ljava/lang/String;
    const/4 v5, 0x0

    .line 357
    .local v5, operatorSpn:Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 438
    :cond_9
    :goto_2
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Icc Operator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", APN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v4           #operatorNumeric:Ljava/lang/String;
    .end local v5           #operatorSpn:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v10, v10, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 444
    const-string v7, "LOADED"

    invoke-virtual {p0, v7, v10}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .restart local v4       #operatorNumeric:Ljava/lang/String;
    .restart local v5       #operatorSpn:Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 362
    .local v6, searchTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 407
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferred icc type unknown for type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 409
    if-nez v5, :cond_c

    .line 410
    const-string v5, ""

    .line 415
    :cond_c
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.numeric"

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v3, ""

    .line 418
    .local v3, iso:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 420
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 430
    :cond_d
    :goto_4
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x51

    if-eq v7, v8, :cond_9

    .line 431
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.iso-country"

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v5, :cond_9

    .line 433
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.alpha"

    invoke-virtual {v7, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 364
    .end local v3           #iso:Ljava/lang/String;
    :pswitch_0
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 365
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 366
    if-nez v4, :cond_e

    .line 367
    const-string v4, ""

    .line 369
    :cond_e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 370
    if-nez v5, :cond_c

    .line 371
    const-string v5, ""

    goto :goto_3

    .line 378
    :pswitch_1
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v9, :cond_10

    .line 379
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 383
    :goto_5
    const/4 v4, 0x0

    .line 384
    const/4 v2, 0x0

    :goto_6
    array-length v7, v6

    if-ge v2, v7, :cond_11

    if-nez v4, :cond_11

    .line 385
    if-nez v4, :cond_f

    .line 386
    aget-object v7, v6, v2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 384
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 381
    :cond_10
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_5

    .line 389
    :cond_11
    if-nez v4, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_12

    .line 391
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 393
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    if-ne v7, v4, :cond_14

    .line 403
    :cond_13
    :goto_7
    sget-object v7, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 405
    goto :goto_3

    .line 399
    :cond_14
    if-nez v4, :cond_13

    .line 400
    const-string v4, ""

    goto :goto_7

    .line 422
    .restart local v3       #iso:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 423
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 424
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 425
    .local v1, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 4
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_2

    .line 215
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 219
    :goto_0
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 217
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    goto :goto_0
.end method

.method public setupIccOperatorNumericFromNV(Ljava/lang/String;)V
    .locals 1
    .parameter "nvOperatorNumeric"

    .prologue
    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 260
    return-void
.end method

.method public unregisterForRecordsUpdated(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 20
    .parameter "ics"

    .prologue
    .line 639
    const/16 v16, 0x0

    .line 640
    .local v16, numApps:I
    const/4 v13, 0x0

    .line 641
    .local v13, identifiedApps:I
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v16

    .line 644
    :cond_0
    if-gez v16, :cond_1

    .line 645
    const/16 v16, 0x0

    .line 648
    :cond_1
    move/from16 v0, v16

    new-array v14, v0, [Lcom/android/internal/telephony/IccFileHandler;

    .line 649
    .local v14, newIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    move/from16 v0, v16

    new-array v15, v0, [Lcom/android/internal/telephony/IccRecords;

    .line 651
    .local v15, newIccRecords:[Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v0, v3

    move/from16 v17, v0

    .line 652
    .local v17, oldnumApps:I
    :goto_0
    move/from16 v0, v17

    new-array v9, v0, [Z

    .line 654
    .local v9, disposeExistingIccFileHandler:[Z
    const/4 v12, 0x0

    .line 656
    .local v12, iccFileHandlerChange:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v10, v3, :cond_9

    .line 657
    const/4 v8, 0x0

    .line 658
    .local v8, createNewIccFileHandler:Z
    const/4 v11, 0x0

    .line 659
    .local v11, icapp:Lcom/android/internal/telephony/IccCardApplication;
    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    .line 660
    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v11

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v3, v3, v10

    if-nez v3, :cond_5

    .line 663
    const/4 v8, 0x1

    .line 664
    iget-object v3, v11, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_2

    .line 665
    const/4 v12, 0x1

    .line 689
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 690
    const-string v3, "IccCardProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create SIM card ap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v6, 0x0

    .line 692
    .local v6, icfh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v2, 0x0

    .line 693
    .local v2, icr:Lcom/android/internal/telephony/IccRecords;
    sget-object v3, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 719
    const/4 v6, 0x0

    .line 720
    const/4 v2, 0x0

    .line 723
    :goto_3
    aput-object v6, v14, v10

    .line 724
    aput-object v2, v15, v10

    .line 725
    if-eqz v6, :cond_3

    .line 726
    add-int/lit8 v13, v13, 0x1

    .line 656
    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 651
    .end local v8           #createNewIccFileHandler:Z
    .end local v9           #disposeExistingIccFileHandler:[Z
    .end local v10           #i:I
    .end local v11           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v12           #iccFileHandlerChange:Z
    .end local v17           #oldnumApps:I
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 667
    .restart local v8       #createNewIccFileHandler:Z
    .restart local v9       #disposeExistingIccFileHandler:[Z
    .restart local v10       #i:I
    .restart local v11       #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v12       #iccFileHandlerChange:Z
    .restart local v17       #oldnumApps:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 668
    const-string v3, "IccCardProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIccFileHandler["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] has same application id."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v3, v3, v10

    aput-object v3, v14, v10

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v3, v3, v10

    aput-object v3, v15, v10

    .line 671
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 673
    :cond_6
    const/4 v12, 0x1

    .line 674
    const/4 v3, 0x1

    aput-boolean v3, v9, v10

    .line 675
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 678
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v3, v3, v10

    if-eqz v3, :cond_2

    .line 679
    const/4 v12, 0x1

    .line 680
    const/4 v3, 0x1

    aput-boolean v3, v9, v10

    goto/16 :goto_2

    .line 684
    :cond_8
    const/4 v12, 0x1

    .line 685
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v11

    .line 686
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 695
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    :pswitch_0
    new-instance v6, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 696
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V

    .line 697
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_3

    .line 699
    :pswitch_1
    new-instance v6, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/telephony/gsm/UsimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 700
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V

    .line 701
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_3

    .line 703
    :pswitch_2
    new-instance v6, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 704
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V

    .line 705
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_3

    .line 707
    :pswitch_3
    new-instance v6, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CsimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 708
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V

    .line 709
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_3

    .line 712
    :pswitch_4
    new-instance v6, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/telephony/ims/ISIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 713
    .restart local v6       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v2, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3, v6}, Lcom/android/internal/telephony/ims/HtcIsimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 714
    .restart local v2       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_3

    .line 732
    .end local v2           #icr:Lcom/android/internal/telephony/IccRecords;
    .end local v6           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v8           #createNewIccFileHandler:Z
    .end local v11           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    :cond_9
    if-eqz v12, :cond_f

    .line 733
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_a

    if-eqz v17, :cond_a

    .line 734
    const-string v3, "IccCardProxy"

    const-string/jumbo v4, "unregister for sim record events"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 738
    :cond_a
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v10, v0, :cond_d

    .line 739
    aget-boolean v3, v9, v10

    if-eqz v3, :cond_c

    .line 740
    const-string v3, "IccCardProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disposeExistingIccFileHandler["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v4, v4, v10

    if-ne v3, v4, :cond_b

    .line 743
    const-string v3, "IccCardProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispose CAT service because mIccFileHanler["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is no longer used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 745
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 747
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x0

    aput-object v4, v3, v10

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    const/4 v4, 0x0

    aput-object v4, v3, v10

    .line 738
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 755
    :cond_d
    if-nez v13, :cond_10

    .line 756
    const-string v3, "IccCardProxy"

    const-string v4, "no identified application"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 758
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 759
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 794
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v3, :cond_f

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 799
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v7, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 801
    return-void

    .line 762
    :cond_10
    const-string v3, "IccCardProxy"

    const-string v4, "iccfilehandler changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    move/from16 v0, v16

    new-array v3, v0, [Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 765
    move/from16 v0, v16

    new-array v3, v0, [Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 767
    const/4 v10, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v10, v0, :cond_11

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v4, v14, v10

    aput-object v4, v3, v10

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v4, v15, v10

    aput-object v4, v3, v10

    .line 767
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 772
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    sget-object v18, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 775
    .local v18, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler([Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_12

    .line 779
    const-string v3, "IccCardProxy"

    const-string v4, "create new CAT service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    invoke-static {v3, v4, v5, v7, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 787
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_e

    .line 788
    const-string v3, "IccCardProxy"

    const-string v4, "register for sim record events"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    goto/16 :goto_5

    .line 772
    .end local v18           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_13
    sget-object v18, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_7

    .line 693
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
