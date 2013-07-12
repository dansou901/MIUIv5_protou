.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I = null

.field public static final HTC_NETWORK_TEMPLATE_BASE:I = 0x5d

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2

.field public static final MATCH_MOBILE_4G:I = 0x3

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_CDMA:I = 0x66

.field public static final MATCH_MOBILE_GSM:I = 0x67

.field public static final MATCH_MOBILE_SUB_GSM:I = 0x68

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field public static final MATCH_WIMAX:I = 0x65

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mMatchRule:I

.field private final mNetworkId:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 511
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "matchRule"
    .parameter "subscriberId"
    .parameter "networkId"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 197
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"

    .prologue
    .line 97
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileCdma(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"

    .prologue
    .line 171
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"

    .prologue
    .line 179
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileSubGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "subscriberId"

    .prologue
    .line 187
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "networkId"

    .prologue
    .line 144
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWimax()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x65

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ensureSubtypeAvailable()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to enforce 3G_LOWER template on combined data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 90
    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .parameter "matchRule"

    .prologue
    .line 472
    sparse-switch p0, :sswitch_data_0

    .line 500
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 474
    :sswitch_0
    const-string v0, "MOBILE_3G_LOWER"

    goto :goto_0

    .line 476
    :sswitch_1
    const-string v0, "MOBILE_4G"

    goto :goto_0

    .line 478
    :sswitch_2
    const-string v0, "MOBILE_ALL"

    goto :goto_0

    .line 480
    :sswitch_3
    const-string v0, "WIFI"

    goto :goto_0

    .line 482
    :sswitch_4
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 484
    :sswitch_5
    const-string v0, "MOBILE_WILDCARD"

    goto :goto_0

    .line 486
    :sswitch_6
    const-string v0, "WIFI_WILDCARD"

    goto :goto_0

    .line 489
    :sswitch_7
    const-string v0, "WIMAX"

    goto :goto_0

    .line 493
    :sswitch_8
    const-string v0, "MOBILE_CDMA"

    goto :goto_0

    .line 495
    :sswitch_9
    const-string v0, "MOBILE_GSM"

    goto :goto_0

    .line 497
    :sswitch_a
    const-string v0, "MOBILE_SUB_GSM"

    goto :goto_0

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
        0x68 -> :sswitch_a
    .end sparse-switch
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 384
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 309
    sget-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .parameter "ident"

    .prologue
    .line 323
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 332
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 338
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .parameter "ident"

    .prologue
    .line 348
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 358
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileCdma(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 426
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 432
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 430
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileGsm(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 442
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 448
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 446
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileSubGsm(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 458
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 464
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 467
    :goto_0
    return v0

    .line 462
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .parameter "ident"

    .prologue
    const/4 v0, 0x1

    .line 391
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v1, :cond_0

    sget-object v1, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 372
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 374
    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .parameter "ident"

    .prologue
    .line 399
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 402
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private matchesWimax(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 413
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 239
    instance-of v2, p1, Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 241
    .local v0, other:Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 245
    .end local v0           #other:Landroid/net/NetworkTemplate;
    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 264
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown network template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 268
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 272
    :sswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 274
    :sswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 276
    :sswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 278
    :sswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 281
    :sswitch_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWimax(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 285
    :sswitch_8
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileCdma(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 287
    :sswitch_9
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileGsm(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 289
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileSubGsm(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
        0x68 -> :sswitch_a
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 227
    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 209
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return-void
.end method
