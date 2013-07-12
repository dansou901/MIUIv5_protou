.class public Landroid/net/MobileDataStateTracker;
.super Ljava/lang/Object;
.source "MobileDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final VDBG:Z = true


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mCdmaCarrierId:Ljava/lang/String;

.field private mCdmaSid:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mEntitleError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 88
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 89
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 93
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 94
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 100
    const-string v0, "0"

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;Landroid/net/HtcMobileDataStateReceiver;)V
    .locals 0
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"
    .parameter "receiver"

    .prologue
    .line 123
    invoke-direct {p0, p3, p4}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 124
    iput-object p5, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    .line 125
    return-void
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 391
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 392
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 394
    :cond_1
    return-void
.end method

.method private isFixedDnsNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 832
    const/4 v2, 0x4

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v3

    if-eq v2, v3, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 835
    :cond_1
    const/4 v0, 0x1

    .line 836
    .local v0, isSidRoaming:Z
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace DNSs based on sid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x87f

    if-lt v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x900

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1dff

    if-lt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x543f

    if-le v2, v3, :cond_5

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x547e

    if-ge v2, v3, :cond_5

    .line 840
    :cond_4
    const/4 v0, 0x0

    .line 843
    :cond_5
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 791
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 795
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .parameter "netType"

    .prologue
    .line 729
    packed-switch p0, :pswitch_data_0

    .line 771
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 772
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 731
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 733
    :pswitch_2
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 735
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 737
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 739
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 741
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 743
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 745
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 748
    :pswitch_9
    const-string v0, "internet"

    goto :goto_0

    .line 750
    :pswitch_a
    const-string v0, "entitle"

    goto :goto_0

    .line 752
    :pswitch_b
    const-string v0, "admin"

    goto :goto_0

    .line 755
    :pswitch_c
    const-string v0, "cmail"

    goto :goto_0

    .line 757
    :pswitch_d
    const-string/jumbo v0, "otasp"

    goto :goto_0

    .line 760
    :pswitch_e
    const-string v0, "httpproxy"

    goto :goto_0

    .line 764
    :pswitch_f
    const-string v0, "cmmail"

    goto :goto_0

    .line 768
    :pswitch_10
    const-string v0, "bip"

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and new state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " extra="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mEntitleError="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 534
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_3

    move v8, v9

    .line 535
    .local v8, wasConnecting:Z
    :goto_0
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, lastReason:Ljava/lang/String;
    const/4 v2, 0x0

    .line 538
    .local v2, isIpv4Connected:Z
    const/4 v3, 0x0

    .line 540
    .local v3, isIpv6Connected:Z
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move v2, v9

    .line 543
    :goto_1
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move v3, v9

    .line 552
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    if-eqz v6, :cond_1

    .line 554
    move-object p2, v6

    .line 557
    :cond_1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 560
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_3
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 576
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 578
    .end local v2           #isIpv4Connected:Z
    .end local v3           #isIpv6Connected:Z
    .end local v6           #lastReason:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #wasConnecting:Z
    :cond_2
    return-void

    :cond_3
    move v8, v0

    .line 534
    goto :goto_0

    .restart local v2       #isIpv4Connected:Z
    .restart local v3       #isIpv6Connected:Z
    .restart local v6       #lastReason:Ljava/lang/String;
    .restart local v8       #wasConnecting:Z
    :cond_4
    move v2, v0

    .line 542
    goto :goto_1

    :cond_5
    move v3, v0

    .line 543
    goto :goto_2

    .line 563
    :cond_6
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 568
    :cond_7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_8

    .line 569
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 572
    :cond_8
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 4
    .parameter "apnType"
    .parameter "enable"

    .prologue
    .line 702
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 707
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 708
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 709
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 724
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 714
    :cond_1
    if-eqz p2, :cond_2

    .line 715
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 717
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 707
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 799
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void
.end method


# virtual methods
.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 210
    return-void
.end method

.method fillInFixedDns()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 847
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_0

    .line 911
    :goto_0
    return v10

    .line 851
    :cond_0
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 853
    :try_start_0
    const-string/jumbo v12, "ro.ril.carrier"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_1
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 862
    .local v6, id:I
    const/4 v3, 0x0

    .line 864
    .local v3, dnsList:[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 875
    const-string/jumbo v10, "ro.ril.carrier not in ACG list"

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 878
    :goto_1
    if-eqz v3, :cond_5

    .line 880
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 882
    .local v8, newLp:Landroid/net/LinkProperties;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 883
    .local v0, addr:Landroid/net/LinkAddress;
    invoke-virtual {v8, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_2

    .line 854
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v3           #dnsList:[Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:I
    .end local v8           #newLp:Landroid/net/LinkProperties;
    :catch_0
    move-exception v4

    .line 855
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "exception occurs when trying to get ro.ril.carrier"

    invoke-direct {p0, v11}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 865
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #dnsList:[Ljava/lang/String;
    .restart local v6       #id:I
    :sswitch_0
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "66.38.0.240"

    aput-object v12, v3, v10

    const-string v10, "66.38.1.240"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 866
    :sswitch_1
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "66.175.131.21"

    aput-object v12, v3, v10

    const-string v10, "66.175.144.92"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 867
    :sswitch_2
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "209.244.0.3"

    aput-object v12, v3, v10

    const-string v10, "209.244.0.4"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 868
    :sswitch_3
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "206.40.99.2"

    aput-object v12, v3, v10

    const-string v10, "206.40.99.3"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 870
    :sswitch_4
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "209.165.131.12"

    aput-object v12, v3, v10

    const-string v10, "209.165.131.13"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 872
    :sswitch_5
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "216.129.224.1"

    aput-object v12, v3, v10

    const-string v10, "216.220.0.1"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 873
    :sswitch_6
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "65.79.193.8"

    aput-object v12, v3, v10

    const-string v10, "65.79.197.97"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 886
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #newLp:Landroid/net/LinkProperties;
    :cond_2
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 887
    .local v9, route:Landroid/net/RouteInfo;
    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_3

    .line 890
    .end local v9           #route:Landroid/net/RouteInfo;
    :cond_3
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 891
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setHttpProxyV6(Landroid/net/ProxyProperties;)V

    .line 893
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 894
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V

    .line 896
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_4

    aget-object v2, v1, v5

    .line 898
    .local v2, dns:Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 896
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 899
    :catch_1
    move-exception v4

    .line 900
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception occurs when convert "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " to INetAddress"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 906
    .end local v2           #dns:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 908
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillInFixedDns: new mLinkProperties = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #newLp:Landroid/net/LinkProperties;
    :cond_5
    move v10, v11

    .line 911
    goto/16 :goto_0

    .line 864
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x1a -> :sswitch_0
        0x66 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_4
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method public getKDDITcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 472
    const-string/jumbo v0, "unknown"

    .line 473
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 475
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 505
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 483
    :pswitch_0
    const-string v0, "gsm"

    .line 484
    goto :goto_0

    .line 493
    :pswitch_1
    const-string/jumbo v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const-string v0, "cdma"

    goto :goto_0

    .line 499
    :cond_0
    const-string v0, "jcdma"

    .line 501
    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 787
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 780
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 409
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI Valente case , getKDDITcpBufferSizesPropName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getKDDITcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getKDDITcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v2

    .line 467
    :goto_0
    return-object v2

    .line 415
    :cond_0
    const-string/jumbo v0, "unknown"

    .line 416
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 418
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 467
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 420
    :pswitch_0
    const-string v0, "gprs"

    .line 421
    goto :goto_1

    .line 423
    :pswitch_1
    const-string v0, "edge"

    .line 424
    goto :goto_1

    .line 426
    :pswitch_2
    const-string/jumbo v0, "umts"

    .line 427
    goto :goto_1

    .line 429
    :pswitch_3
    const-string v0, "hsdpa"

    .line 430
    goto :goto_1

    .line 432
    :pswitch_4
    const-string v0, "hsupa"

    .line 433
    goto :goto_1

    .line 435
    :pswitch_5
    const-string v0, "hspa"

    .line 436
    goto :goto_1

    .line 438
    :pswitch_6
    const-string v0, "cdma"

    .line 439
    goto :goto_1

    .line 441
    :pswitch_7
    const-string v0, "1xrtt"

    .line 442
    goto :goto_1

    .line 444
    :pswitch_8
    const-string v0, "evdo"

    .line 445
    goto :goto_1

    .line 447
    :pswitch_9
    const-string v0, "evdo"

    .line 448
    goto :goto_1

    .line 450
    :pswitch_a
    const-string v0, "evdo"

    .line 451
    goto :goto_1

    .line 453
    :pswitch_b
    const-string v0, "iden"

    .line 454
    goto :goto_1

    .line 456
    :pswitch_c
    const-string v0, "lte"

    .line 457
    goto :goto_1

    .line 459
    :pswitch_d
    const-string v0, "ehrpd"

    .line 460
    goto :goto_1

    .line 462
    :pswitch_e
    const-string v0, "hspap"

    .line 463
    goto :goto_1

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public htcSetDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method protected internalBroadcast_onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 227
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 231
    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, apnType:Ljava/lang/String;
    const-string/jumbo v12, "networkUnvailable"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v4, 0x1

    .line 234
    .local v4, available:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v12

    if-eq v12, v4, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/net/MobileDataStateTracker;->notifyAvailableStatusChange()V

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 240
    monitor-exit p0

    .line 388
    .end local v3           #apnType:Ljava/lang/String;
    .end local v4           #available:Z
    :goto_1
    return-void

    .line 233
    .restart local v3       #apnType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 244
    .restart local v4       #available:Z
    :cond_2
    const-string v13, "Broadcast received: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED mApnType=%s %s received apnType=%s"

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    aput-object v15, v14, v12

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "=="

    :goto_2
    aput-object v12, v14, v15

    const/4 v12, 0x2

    aput-object v3, v14, v12

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 253
    .local v7, oldSubtype:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    .line 254
    .local v6, newSubType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, subTypeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v6, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 256
    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v7, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 259
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 262
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    const-class v12, Lcom/android/internal/telephony/Phone$DataState;

    const-string/jumbo v13, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Phone$DataState;

    .line 264
    .local v10, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, reason:Ljava/lang/String;
    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, apnName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo v13, "networkRoaming"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 280
    const-string v12, "entitleError"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received state="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v8, :cond_6

    const-string v12, "(unspecified)"

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mMobileDataState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mTeardownRequested="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " got [AnyDataCSC] :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " state="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " roaming="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "networkRoaming"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " unavailable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "networkUnvailable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " NetworkType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " NetworkTypeName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " entitleError="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v12, v10, :cond_b

    .line 296
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 297
    sget-object v12, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 387
    .end local v2           #apnName:Ljava/lang/String;
    .end local v3           #apnType:Ljava/lang/String;
    .end local v4           #available:Z
    .end local v6           #newSubType:I
    .end local v7           #oldSubtype:I
    .end local v8           #reason:Ljava/lang/String;
    .end local v10           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v11           #subTypeName:Ljava/lang/String;
    :cond_4
    :goto_4
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 244
    .restart local v3       #apnType:Ljava/lang/String;
    .restart local v4       #available:Z
    :cond_5
    :try_start_1
    const-string v12, "!="

    goto/16 :goto_2

    .restart local v2       #apnName:Ljava/lang/String;
    .restart local v6       #newSubType:I
    .restart local v7       #oldSubtype:I
    .restart local v8       #reason:Ljava/lang/String;
    .restart local v10       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v11       #subTypeName:Ljava/lang/String;
    :cond_6
    move-object v12, v8

    .line 283
    goto/16 :goto_3

    .line 299
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 300
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 303
    :cond_7
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 312
    :pswitch_1
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 315
    :pswitch_2
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 318
    :pswitch_3
    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_a

    .line 321
    const-string v12, "CONNECTED event did not supply link properties."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 322
    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 328
    :cond_8
    :goto_5
    const-string v12, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v12, :cond_9

    .line 331
    const-string v12, "CONNECTED event did not supply link capabilities."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 332
    new-instance v12, Landroid/net/LinkCapabilities;

    invoke-direct {v12}, Landroid/net/LinkCapabilities;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 334
    :cond_9
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v12, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/net/MobileDataStateTracker;->isFixedDnsNeeded()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/net/MobileDataStateTracker;->fillInFixedDns()Z

    goto :goto_5

    .line 339
    :cond_b
    const-string v12, "linkPropertiesChanged"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 340
    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_c

    .line 342
    const-string v12, "No link property in LINK_PROPERTIES change event."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 343
    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 346
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v8, v14}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 350
    .restart local v5       #msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 353
    .end local v2           #apnName:Ljava/lang/String;
    .end local v3           #apnType:Ljava/lang/String;
    .end local v4           #available:Z
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #newSubType:I
    .end local v7           #oldSubtype:I
    .end local v8           #reason:Ljava/lang/String;
    .end local v10           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v11           #subTypeName:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 355
    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3       #apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 358
    const-string v12, "Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 362
    monitor-exit p0

    goto/16 :goto_1

    .line 364
    :cond_e
    const-string/jumbo v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .restart local v8       #reason:Ljava/lang/String;
    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .restart local v2       #apnName:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " broadcast"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_f

    const-string v12, ""

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 370
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 367
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 371
    .end local v2           #apnName:Ljava/lang/String;
    .end local v3           #apnType:Ljava/lang/String;
    .end local v8           #reason:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 373
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " got ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 374
    sget-object v12, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    .line 375
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 376
    .local v1, ac:Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_4

    .line 378
    .end local v1           #ac:Lcom/android/internal/util/AsyncChannel;
    :cond_11
    const/4 v12, 0x4

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v13

    if-ne v12, v13, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v9

    .line 381
    .local v9, serviceState:Landroid/telephony/ServiceState;
    new-instance v12, Ljava/lang/Integer;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    .line 382
    monitor-exit p0

    goto/16 :goto_1

    .line 385
    .end local v9           #serviceState:Landroid/telephony/ServiceState;
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Broadcast received: ignore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public notifyAvailableStatusChange()V
    .locals 4

    .prologue
    .line 820
    const-string v1, "MobileDST sending EVENT_HTC_NETWORK_AVALIBILITY_CHANGE"

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/16 v2, 0x12e

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 198
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, retValue:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 596
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 610
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 613
    :goto_0
    :pswitch_0
    return v0

    .line 599
    :pswitch_1
    const/4 v0, 0x1

    .line 600
    goto :goto_0

    .line 603
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x1

    .line 605
    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public requestRouteToHost(I)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .parameter "met"

    .prologue
    .line 670
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 672
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 674
    .local v2, msg:Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 675
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 676
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 677
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 675
    .restart local v2       #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 679
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 680
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 659
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 660
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 661
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 663
    :cond_0
    return-void

    .line 660
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 5
    .parameter "turnOn"

    .prologue
    const/4 v3, 0x0

    .line 622
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 627
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 628
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 629
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 640
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set radio power to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 641
    :goto_2
    return v2

    .line 634
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 2
    .parameter "isRequested"

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTeardownRequested("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 582
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 583
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 648
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 649
    const v2, 0x4201d

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 650
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 652
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 653
    return-void

    .line 649
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserDataEnableDualGsm(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 828
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "target"

    .prologue
    .line 135
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 139
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v2, "startMonitoring: use HtcMobileDataStateTracker"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    invoke-virtual {v2, p0}, Landroid/net/HtcMobileDataStateReceiver;->startMonitoring(Landroid/net/MobileDataStateTracker;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 155
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 515
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 516
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 686
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 687
    .local v1, writer:Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 689
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 690
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 691
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
