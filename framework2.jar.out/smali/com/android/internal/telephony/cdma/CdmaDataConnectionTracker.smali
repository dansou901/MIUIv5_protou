.class public final Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x1

.field private static final DATA_STALL_NOT_SUSPECTED:Z = false

.field private static final DATA_STALL_SUSPECTED:Z = true

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-data-stall"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field static final PREFERAPN_URI:Landroid/net/Uri;

.field static final PREFERRED_DUN_URI:Landroid/net/Uri;

.field private static final RADIO_TESTS:Z

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I

.field private static final mDefaultApnId:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field private FirstInitRecover:Z

.field private HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

.field IgnoreRUIMCardReadyInTestVersion:Z

.field protected final LOG_TAG:Ljava/lang/String;

.field private apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

.field private canSetPreferApn:Z

.field private canSetPreferDunApn:Z

.field private mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

.field private mCallListReturned:Z

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataCallStateChecked:Z

.field private mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field private mDunApnTypes:[Ljava/lang/String;

.field private mEriIndicator:I

.field mFailNextConnect:Z

.field private mGlobalDataRoaming:Z

.field private mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field private mHtcCdmaDataLinkError:Z

.field private mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

.field protected mHtcRadioAvaliable:Z

.field private mHtcReportedActiveApns:[Z

.field private mHtcRequestedNewApn:Ljava/lang/String;

.field mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field private mIsRuimCardUsed:Z

.field private mPdpResetCount:I

.field private mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

.field private mPendingRestartRadio:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

.field private mReasonInPendingIntent:Ljava/lang/String;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

.field private pdpLimitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    const-string v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    .line 577
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "dun"

    aput-object v1, v0, v5

    const-string v1, "netshare"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "supl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "admin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hipri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cmail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "otasp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 597
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 611
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    .line 612
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 14
    .parameter "p"

    .prologue
    const v13, 0x4200b

    const/16 v12, 0xe0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 709
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 159
    const-string v6, "CDMA"

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 163
    const-string v6, "persist.radio.ignoreRuimReady"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    .line 165
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 168
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 216
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 518
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mFailNextConnect:Z

    .line 521
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->FirstInitRecover:Z

    .line 542
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 544
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 573
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 574
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 602
    new-array v6, v7, [Ljava/lang/String;

    const-string v9, "dun"

    aput-object v9, v6, v8

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 608
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 609
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 610
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 642
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    .line 647
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 656
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataCallStateChecked:Z

    .line 657
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    .line 688
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1110
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v6, v9, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    .line 2141
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 710
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 712
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42001

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 713
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42006

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 715
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v12, :cond_6

    .line 717
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x4202d

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 729
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v10, 0x42015

    invoke-static {v6, v9, p0, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 732
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42004

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v9, 0x42008

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 734
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v9, 0x42007

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    sget v6, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v6, v6, 0x2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    .line 737
    new-instance v6, Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, p0, v9, v11, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 738
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x42010

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x42014

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v6, p0, v13, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 741
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x4200c

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 743
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x4202e

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    :goto_2
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42019

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 757
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42023

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 761
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 762
    :cond_1
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42027

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 768
    .local v0, IccCardfilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v0, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 772
    iput-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 775
    new-instance v6, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {v6, p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionList()V

    .line 780
    const/16 v6, 0x12

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    .line 785
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v12, :cond_3

    .line 787
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isRuimCardSupported()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 791
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v6, :cond_8

    .line 793
    const-string v6, "RUIM CARD Project"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 794
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    .line 795
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 797
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 798
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->initApnContextsAndDataConnection()V

    .line 800
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-direct {v6, p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    .line 801
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    .line 809
    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataCallStateChecked:Z

    .line 810
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    .line 814
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.telephony.cdma-data-stall"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2, v11, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    .line 836
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 838
    .local v1, c:Landroid/content/Context;
    const/4 v4, 0x0

    .line 842
    .local v4, t:[Ljava/lang/String;
    if-eqz v4, :cond_a

    array-length v6, v4

    if-lez v6, :cond_a

    .line 843
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v5, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    array-length v6, v4

    if-ge v3, v6, :cond_9

    .line 845
    const-string v6, "dun"

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 846
    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0           #IccCardfilter:Landroid/content/IntentFilter;
    .end local v1           #c:Landroid/content/Context;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i:I
    .end local v4           #t:[Ljava/lang/String;
    .end local v5           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move v6, v8

    .line 1110
    goto/16 :goto_0

    .line 722
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 724
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const v9, 0x42002

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 748
    :cond_7
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x42010

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x42014

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 750
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v6, p0, v13, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 751
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x4200c

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 804
    .restart local v0       #IccCardfilter:Landroid/content/IntentFilter;
    :cond_8
    const-string v6, "None RUIM Card Project"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 849
    .restart local v1       #c:Landroid/content/Context;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #i:I
    .restart local v4       #t:[Ljava/lang/String;
    .restart local v5       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v6, "dun"

    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 850
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 853
    .end local v3           #i:I
    .end local v5           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    return-void
.end method

.method private HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V
    .locals 11
    .parameter "dcac"
    .parameter "pendingAC"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 404
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-nez v1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getByReferredAC(Lcom/android/internal/telephony/DataConnectionAc;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 408
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcCleanupDC: got apnsetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 409
    if-nez v1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 426
    const-string v9, "HtcCleanupDC(): switchOffACs is not empty "

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 428
    .local v6, tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    .end local v6           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 432
    .restart local v6       #tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after clear, switchOffACs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 437
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v8, v2, v3

    .line 438
    .local v8, type:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 439
    .local v7, tmpac:Lcom/android/internal/telephony/ApnContext;
    if-nez v7, :cond_4

    .line 440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcCleanupDC WARNING: got null ac from dcac\'s types[], type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 437
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 443
    :cond_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v9

    if-ne v9, p1, :cond_3

    .line 444
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 448
    .end local v7           #tmpac:Lcom/android/internal/telephony/ApnContext;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .line 449
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 451
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 461
    .restart local v0       #ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object p2, v9, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 463
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 465
    const-string v9, "apnSwitched"

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 467
    iget-object v9, p1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnection;->resetRefCount()V

    .line 468
    const v9, 0x4200f

    invoke-virtual {p0, v9, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 470
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v9

    if-nez v9, :cond_7

    .line 471
    const-string v9, "!!! ac.dc is null. It should not happen"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    .end local v5           #msg:Landroid/os/Message;
    :cond_6
    const-string v9, "mSwitchApnRecord.switchOffACs is null. Should not happen"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    .restart local v5       #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcPdpLimitRule("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDCs.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, goSwitching:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dumpDCApn()V

    .line 333
    if-eqz p2, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v1, v2, :cond_2

    .line 335
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    const/4 v0, 0x1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_3
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method private HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    const/4 v8, 0x1

    .line 481
    const-string v5, "*** HtcSwitchApn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 482
    if-eqz p2, :cond_5

    .line 483
    const-wide/16 v3, -0x1

    .line 484
    .local v3, latestTime:J
    const/4 v2, 0x0

    .line 485
    .local v2, latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 486
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 487
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-eq v5, v8, :cond_1

    iget-object v6, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    if-eq v6, v5, :cond_1

    .line 489
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 490
    move-object v2, v0

    goto :goto_0

    .line 491
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-ne v5, v8, :cond_0

    .line 492
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 493
    move-object v2, v0

    goto :goto_0

    .line 498
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    if-nez v2, :cond_4

    .line 499
    const-string v5, "HtcSwitchApn WARNING: can not find any DCAC"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 507
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_3
    :goto_1
    return-void

    .line 502
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v3       #latestTime:J
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch this DC : dc.mId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc.cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc=<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 505
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_5
    if-eqz p1, :cond_3

    goto :goto_1
.end method

.method private HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V
    .locals 4
    .parameter "curAc"

    .prologue
    .line 5342
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5343
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcTryPendingEnabled: found enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have no dc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0

    .line 5355
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    return-void
.end method

.method private HtcisAnyTypeEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 4387
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_2

    .line 4388
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4389
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4401
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 4394
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x12

    if-ge v1, v4, :cond_3

    .line 4395
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4394
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4401
    .end local v1           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private HtcisDataAllowed(ZZZZ)Z
    .locals 11
    .parameter "alwaysAllowProfile"
    .parameter "alwaysAllowDataRoam"
    .parameter "checkDataRoamGuard"
    .parameter "checkDefaultOnly"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1225
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v6

    .line 1243
    .local v6, roaming:Z
    const/4 v1, 0x1

    .line 1244
    .local v1, allowData:Z
    const/4 v0, 0x1

    .line 1245
    .local v0, allowBySettingOrWhitelist:Z
    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0xd

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1252
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_0
    if-nez p1, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_1
    if-eqz p3, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_2
    move v1, v7

    .line 1290
    :goto_0
    if-eqz v1, :cond_4

    .line 1292
    const/4 v0, 0x0

    .line 1293
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v9, 0x12

    if-ge v3, v9, :cond_3

    .line 1296
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v9, :cond_d

    .line 1298
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 1299
    .local v2, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApnContextEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1303
    const/4 v0, 0x1

    .line 1317
    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    :goto_2
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    move v1, v7

    .line 1322
    .end local v3           #i:I
    :cond_4
    :goto_3
    if-nez v1, :cond_b

    .line 1323
    const-string v5, ""

    .line 1324
    .local v5, reason:Ljava/lang/String;
    if-nez p2, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - roam : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1327
    :cond_5
    if-nez p1, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1330
    :cond_6
    if-eqz p3, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - dataroamguard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1333
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1334
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - master : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1336
    :cond_9
    if-nez v0, :cond_a

    .line 1337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - data not enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1338
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_10

    .line 1339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1345
    :cond_a
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HtcisDataAllowed: Data not allowed due to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1347
    .end local v5           #reason:Ljava/lang/String;
    :cond_b
    return v1

    :cond_c
    move v1, v8

    .line 1252
    goto/16 :goto_0

    .line 1309
    .restart local v3       #i:I
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1311
    const/4 v0, 0x1

    .line 1312
    goto/16 :goto_2

    .line 1293
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_f
    move v1, v8

    .line 1317
    goto/16 :goto_3

    .line 1341
    .end local v3           #i:I
    .restart local v5       #reason:Ljava/lang/String;
    :cond_10
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v4

    .line 1342
    .local v4, id:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method private IgnoreCDMAReadyState()Z
    .locals 2

    .prologue
    .line 1037
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    .line 1039
    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 6
    .parameter "apnContext"

    .prologue
    const/4 v1, 0x0

    .line 4735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "(unspecified)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPsRestricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4739
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 4741
    .local v0, desiredPowerState:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4744
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    .line 4745
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4746
    .local v2, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4747
    const-string v3, "trySetupData: No APN found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4748
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 4751
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 4785
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :goto_1
    return v1

    .line 4735
    .end local v0           #desiredPowerState:Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4755
    .restart local v0       #desiredPowerState:Z
    .restart local v2       #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 4757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: Create from mAllApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4763
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup watingApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4766
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    .line 4769
    .local v1, retValue:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 4775
    .end local v1           #retValue:Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupDataCallRUIMCardBase => state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,apnContext.isReady()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4776
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_6

    .line 4779
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4782
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updateDataActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return v0
.end method

.method private addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;
    .locals 2
    .parameter "type"

    .prologue
    .line 5942
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    const-string v1, "CDMA"

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5943
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 5944
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5945
    return-object v0
.end method

.method private addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 5933
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 5934
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5935
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5936
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 5935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5937
    :cond_0
    const-string v2, "dun"

    aput-object v2, v1, v0

    .line 5938
    return-object v1
.end method

.method private addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 5921
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 5922
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5923
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5924
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 5923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5925
    :cond_0
    const-string v2, "supl"

    aput-object v2, v1, v0

    .line 5926
    return-object v1
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5948
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5949
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5950
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5949
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5954
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V
    .locals 4
    .parameter "apnContext"
    .parameter "enabled"
    .parameter "met"

    .prologue
    .line 4593
    const/4 v0, 0x0

    .line 4594
    .local v0, cleanup:Z
    const/4 v1, 0x0

    .line 4596
    .local v1, trySetup:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyNewState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4600
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4601
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 4642
    :cond_0
    :goto_0
    return-void

    .line 4602
    :cond_1
    if-nez p2, :cond_3

    .line 4603
    const-string v2, "dataDisabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4607
    :goto_1
    const/4 v0, 0x1

    .line 4621
    :cond_2
    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 4623
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataEnabled:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    aput-boolean p2, v2, v3

    .line 4625
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 4633
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4634
    const-string v2, "HtcPdpLimitRule: return true, do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4635
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 4605
    :cond_3
    const-string v2, "dependencyUnmet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 4609
    :cond_4
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 4610
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4611
    const-string v2, "dependencyMet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4615
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_5

    .line 4616
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4618
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 4613
    :cond_6
    const-string v2, "dataEnabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 4637
    :cond_7
    const-string v2, "HtcPdpLimitRule: return false, not do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4638
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 4639
    :cond_8
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0
.end method

.method private broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "apns"
    .parameter "reason"

    .prologue
    .line 4158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDisconnectedForApns state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4161
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 4163
    return-void
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "requestedApnType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5474
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 5476
    .local v21, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v22

    .line 5478
    .local v22, dun:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v22, :cond_0

    .line 5479
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5597
    .end local v22           #dun:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v21

    .line 5488
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 5492
    .local v24, operator:Ljava/lang/String;
    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v3, :cond_1

    .line 5494
    const-string v3, "persist.radio.hardcodemccmnc"

    const-string v4, "46605"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hardcode operator numeric to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5498
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v25

    .line 5500
    .local v25, radioTech:I
    const-string v3, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5501
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_4

    .line 5503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3

    .line 5508
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5512
    :cond_3
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5513
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 5514
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5525
    :cond_4
    :goto_1
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5527
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_8

    .line 5528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred Dun APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    .line 5532
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred dun apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5517
    :cond_6
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5518
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 5519
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 5536
    :cond_7
    const-string v3, "buildWaitingApns: no preferred dun APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5547
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 5548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5549
    .local v20, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5550
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_9

    .line 5551
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5555
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5540
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_b
    const-string v3, "buildWaitingApns: no preferred dun APN, no error handling..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5560
    :cond_c
    const-string v3, "mAllApns is empty!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5565
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    const-string v3, "supl"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5567
    const-string v3, "clone a default with supl, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5569
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5570
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "supl"

    aput-object v4, v15, v3

    .line 5571
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5575
    .local v2, tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5581
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 5583
    const-string v3, "clone a default with dun, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5585
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5586
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v15, v3

    .line 5587
    .restart local v15       #types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5591
    .restart local v2       #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5596
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V
    .locals 4
    .parameter "dcac"

    .prologue
    .line 5646
    if-nez p1, :cond_1

    .line 5656
    :cond_0
    :goto_0
    return-void

    .line 5648
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v1

    .line 5650
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 5651
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5653
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5654
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;
    .locals 7
    .parameter "apnContext"

    .prologue
    .line 5602
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 5603
    .local v1, apnType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 5604
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 5605
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_0

    .line 5606
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 5607
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5613
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 5620
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v3

    .line 5619
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NO conn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5620
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cleanUpConnection(ZLjava/lang/String;Z)V
    .locals 11
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    .line 1654
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1657
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 1658
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1660
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1661
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1664
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1666
    const/4 v7, 0x0

    .line 1667
    .local v7, notificationDeferred:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_8

    .line 1668
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1669
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1670
    if-nez v1, :cond_2

    .line 1671
    const-string v8, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1795
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_1
    return-void

    .line 1676
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: tearDown="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v4

    .line 1680
    .local v4, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_6

    .line 1681
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1684
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1685
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1686
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1687
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1709
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 1719
    :goto_3
    if-eqz v4, :cond_1

    .line 1720
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v2

    .line 1721
    .local v2, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1722
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 1691
    .end local v2           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 1692
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v9, :cond_3

    .line 1693
    const-string v8, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1694
    const v8, 0x4200f

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1695
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 1697
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_3

    .line 1699
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1704
    .end local v6           #msg:Landroid/os/Message;
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1705
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1712
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1713
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1714
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1716
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1717
    const/4 v7, 0x0

    goto :goto_3

    .line 1727
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1729
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1730
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_9

    .line 1731
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1733
    .restart local v4       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_c

    .line 1737
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1738
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_a

    .line 1740
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1742
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1744
    if-eqz p3, :cond_b

    .line 1745
    const-string v8, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1746
    const v8, 0x4200f

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, p2, v8}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1753
    :goto_5
    const/4 v7, 0x1

    goto :goto_4

    .line 1749
    :cond_b
    const-string v8, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1750
    const v8, 0x4200f

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, p2, v8}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_5

    .line 1755
    :cond_c
    const-string v8, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1756
    if-eqz v4, :cond_d

    .line 1757
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1759
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1767
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1768
    const-string v8, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1769
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSipInviteRetryTimes:I

    .line 1780
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1781
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 1783
    if-nez v7, :cond_10

    .line 1784
    const-string v8, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1790
    :cond_10
    monitor-enter p0

    .line 1791
    const/4 v8, 0x0

    :try_start_0
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1792
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 7
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 4217
    if-nez p2, :cond_1

    .line 4218
    const-string v3, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4272
    :cond_0
    :goto_0
    return-void

    .line 4223
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 4226
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_5

    .line 4227
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4230
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4231
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4232
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 4233
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 4266
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 4267
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 4268
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4269
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 4237
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 4238
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 4239
    const-string v3, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4240
    const v3, 0x4200f

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4241
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 4242
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_1

    .line 4247
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4248
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4254
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 4255
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4256
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 4258
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_1
.end method

.method private configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V
    .locals 3
    .parameter "dc"
    .parameter "forDefault"

    .prologue
    .line 5624
    if-nez p1, :cond_1

    .line 5643
    :cond_0
    :goto_0
    return-void

    .line 5626
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getReryConfig(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5627
    if-eqz p2, :cond_2

    .line 5628
    const-string v0, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5630
    const-string v0, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5632
    const/16 v0, 0x14

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->configureRetry(III)Z

    goto :goto_0

    .line 5635
    :cond_2
    const-string v0, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5637
    const-string v0, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5639
    const-string v0, "max_retries=3, 333, 333, 333"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5898
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 5903
    :cond_0
    return-object v1

    .line 5899
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5900
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5901
    new-instance v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/ApnSetting;-><init>(Lcom/android/internal/telephony/ApnSetting;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 5719
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 5722
    .local v7, operator:Ljava/lang/String;
    if-nez v7, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 5724
    const-string v0, "persist.radio.hardcodemccmnc"

    const-string v1, "46605"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hardcode operator numeric to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5728
    :cond_0
    if-eqz v7, :cond_4

    .line 5729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5732
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5742
    const/4 v4, 0x0

    .line 5744
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5747
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 5750
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5751
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5756
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5757
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 5758
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 5760
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5766
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5768
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5792
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcApnHandling()V

    .line 5794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5795
    return-void

    .line 5763
    :cond_4
    const-string v0, "operator is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5772
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5774
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5776
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5777
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5778
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 5789
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAllDataConnectionList()V
    .locals 10

    .prologue
    .line 3167
    const-string v7, "ro.cdma.data_retry_config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3168
    .local v4, retryConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_2

    .line 3169
    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 3170
    .local v5, rm:Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3171
    const-string v7, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3173
    const-string v7, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3175
    const/16 v7, 0x14

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 3179
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 3180
    .local v3, id:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v7, v3, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 3181
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "CDMA"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 3183
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v6

    .line 3184
    .local v6, status:I
    if-nez v6, :cond_1

    .line 3185
    const-string v7, "Fully connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3186
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3188
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not connect to dcac.dataConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3193
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v5           #rm:Lcom/android/internal/telephony/RetryManager;
    .end local v6           #status:I
    :cond_2
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5668
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 5669
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5671
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5673
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5693
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5694
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5696
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5697
    return-object v20

    .line 5673
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 4989
    const-string v6, "createDataConnection E"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4991
    new-instance v4, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v4}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 4992
    .local v4, rm:Lcom/android/internal/telephony/RetryManager;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 4995
    .local v3, id:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_0

    .line 4996
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " no free pdp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 5024
    :goto_0
    return-object v0

    .line 5001
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_1

    .line 5002
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X over limit return, used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mCnt="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 5004
    goto :goto_0

    .line 5007
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v6, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 5008
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5009
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v6, "CDMA"

    invoke-direct {v1, v0, v6}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 5010
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v6, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 5011
    .local v5, status:I
    if-nez v5, :cond_2

    .line 5012
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5019
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 5020
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.internal.telephony.cdma-reconnect."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5021
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v8, v2, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5023
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDataConnection() X id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5014
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection: Could not connect to dcac.mDc="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " status="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z
    .locals 4
    .parameter "dcac"

    .prologue
    const/4 v2, 0x1

    .line 4905
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v3, :cond_1

    .line 4919
    :cond_0
    :goto_0
    return v2

    .line 4908
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4913
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4916
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private destroyAllDataConnectionList()V
    .locals 3

    .prologue
    .line 3196
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 3198
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 3199
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->quit()V

    goto :goto_0

    .line 3201
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ReInitialDataConnectionCounter()V

    .line 3203
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3205
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private doRecovery()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6194
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    .line 6196
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getRecoveryAction()I

    move-result v0

    .line 6197
    .local v0, recoveryAction:I
    packed-switch v0, :pswitch_data_0

    .line 6261
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6199
    :pswitch_0
    const v1, 0xc3c6

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6201
    const-string v1, "doRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6202
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 6205
    const-string v1, "persist.radio.test.data.stall"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6206
    const-string v1, "doRecovery() data stall test enable, keep recovery action at GET_DATA_CALL_LIST"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6207
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    .line 6267
    .end local v0           #recoveryAction:I
    :goto_0
    return-void

    .line 6209
    .restart local v0       #recoveryAction:I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 6214
    :pswitch_1
    const v1, 0xc3c7

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6216
    const-string v1, "doRecovery() DataStall Happens, tell modem"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6217
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendDataStallNotification(IILandroid/os/Message;)V

    .line 6219
    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6220
    const-string v1, "pdpReset"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 6221
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 6224
    :pswitch_2
    const v1, 0xc3c8

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6226
    const-string v1, "doRecovery() re-register"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6227
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 6229
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_1

    .line 6230
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 6232
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 6237
    :pswitch_3
    const v1, 0xc3c9

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6239
    const-string v1, "restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6240
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    .line 6241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 6250
    :pswitch_4
    const v1, 0xc3ca

    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6251
    const-string v1, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6252
    const-string v1, "gsm.radioreset"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6255
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6257
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    .line 6258
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 6265
    .end local v0           #recoveryAction:I
    :cond_2
    const-string v1, "doRecovery(): ignore, we\'re not connected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6256
    .restart local v0       #recoveryAction:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 6197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dumpDCApn()V
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 321
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpDCApn dc.mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc.cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    return-void
.end method

.method private dumpSwitchRecord()V
    .locals 5

    .prologue
    .line 347
    const-string v1, ""

    .line 349
    .local v1, dump:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 350
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 352
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpSwitchRecord: pending=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> switchoff=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 2563
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERI exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2592
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 2570
    .local v0, htcEriUpdate:Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    if-eqz v0, :cond_2

    .line 2571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EriUpdate.eri_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEriIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",icon_img_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2574
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IsIconImageRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIconImageRoaming:Z

    .line 2578
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    if-eq v1, v2, :cond_0

    .line 2579
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 2583
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isHomeNetwork(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    const-string v1, "Eri Indicator change. Check the Global Roaming Option"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 2590
    :cond_2
    const-string v1, "CdmaERIInfo result is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3648
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 3675
    :cond_0
    return-object v5

    .line 3650
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3651
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3652
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_2

    .line 3653
    const/4 v2, 0x0

    .line 3654
    .local v2, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3655
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-ne v1, v6, :cond_3

    .line 3657
    const/4 v2, 0x1

    .line 3661
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    if-nez v2, :cond_2

    .line 3665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataStateChanged(ar): Connected apn not found in the list ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3668
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3670
    :cond_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "reqApn"

    .prologue
    .line 4972
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 4973
    .local v1, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    .line 4974
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4975
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4976
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDCFromDupApn: from apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; found dupApn conn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4980
    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 4985
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v2

    .line 4984
    :cond_1
    const-string v4, "findDCFromDupApn: No conn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4985
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;
    .locals 4
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 3611
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v0, v2

    .line 3619
    :goto_0
    return-object v0

    .line 3614
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3615
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    move-object v0, v2

    .line 3619
    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3

    .prologue
    .line 1798
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1799
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1800
    const-string v2, "found free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1801
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1805
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 1804
    :cond_1
    const-string v2, "NO free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1805
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private forceAlwaysRetryDelay()I
    .locals 1

    .prologue
    .line 4088
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4092
    const/4 v0, 0x0

    .line 4094
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getByReferredAC(Lcom/android/internal/telephony/DataConnectionAc;)Lcom/android/internal/telephony/ApnSetting;
    .locals 3
    .parameter "dcac"

    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 393
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 397
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMVNOOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5660
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5663
    :goto_0
    return-object v1

    .line 5662
    :catch_0
    move-exception v0

    .line 5663
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 5799
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5835
    :cond_0
    :goto_0
    return-object v3

    .line 5803
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5807
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5808
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 5810
    const-string v0, "cansetPreferApn = true, cursor is not null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5819
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 5821
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5822
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 5823
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 5824
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 5826
    goto :goto_0

    .line 5813
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 5815
    const-string v0, "cansetPreferApn = false, cursor is  null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5831
    :cond_4
    if-eqz v6, :cond_0

    .line 5832
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 5839
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5870
    :cond_0
    :goto_0
    return-object v3

    .line 5843
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5847
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5848
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 5853
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 5855
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5856
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 5857
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 5859
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    const-string v0, "dun"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5860
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 5861
    goto :goto_0

    .line 5850
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    goto :goto_1

    .line 5866
    :cond_4
    if-eqz v6, :cond_0

    .line 5867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private htcDBG_OnDCS(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3624
    .local p1, dcacHM:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    const-string v6, "DCT\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3625
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3626
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3628
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3632
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "DCS\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3634
    .local v3, dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 3636
    .local v1, ac2:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3639
    .end local v1           #ac2:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private htcExtendStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "originalArray"
    .parameter "appendString"

    .prologue
    .line 4037
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 4038
    .local v1, arrIdx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 4039
    .local v0, appendResult:[Ljava/lang/String;
    aput-object p2, v0, v1

    .line 4040
    :goto_1
    if-lez v1, :cond_1

    .line 4041
    add-int/lit8 v1, v1, -0x1

    .line 4042
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    goto :goto_1

    .line 4037
    .end local v0           #appendResult:[Ljava/lang/String;
    .end local v1           #arrIdx:I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 4044
    .restart local v0       #appendResult:[Ljava/lang/String;
    .restart local v1       #arrIdx:I
    :cond_1
    return-object v0
.end method

.method private htcGetCDMADataConnectionState()I
    .locals 2

    .prologue
    .line 1086
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1092
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    goto :goto_0
.end method

.method private htcGetCDMADataRoamingState()Z
    .locals 2

    .prologue
    .line 1098
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method private htcGetOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6384
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v2, :cond_0

    .line 6385
    const-string v1, ""

    .line 6404
    :goto_0
    return-object v1

    .line 6388
    :cond_0
    const-string v1, ""

    .line 6390
    .local v1, ret:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6391
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v2, :cond_1

    .line 6392
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6394
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 6397
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 6399
    :catch_0
    move-exception v0

    .line 6400
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get mccmnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 6401
    const-string v1, ""

    goto :goto_0
.end method

.method private htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 2
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 6363
    if-nez p1, :cond_1

    .line 6379
    :cond_0
    :goto_0
    return v0

    .line 6366
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6367
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v1, :cond_2

    .line 6368
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    .line 6369
    .local v0, IsGetRecordsLoaded:Z
    if-nez v0, :cond_0

    .line 6370
    const-string v1, "getRecordsLoaded return false "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6375
    .end local v0           #IsGetRecordsLoaded:Z
    :cond_2
    const-string v1, "mIccCardProxy == null "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6379
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method private htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z
    .locals 6
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2227
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v2, :cond_2

    .line 2228
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-eqz v2, :cond_1

    const-string v2, "Airplane mode requesting."

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2230
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2231
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2232
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 2284
    :goto_1
    return v2

    .line 2228
    :cond_1
    const-string v2, "Airplane mode."

    goto :goto_0

    .line 2236
    :cond_2
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. Disabled by user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", by conns:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", allow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2242
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2243
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2244
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 2245
    goto :goto_1

    .line 2256
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    .line 2266
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v1

    .line 2268
    .local v1, nextReconnectDelay:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v0

    .line 2269
    .local v0, alwaysRetryDelay:I
    if-ltz v0, :cond_4

    .line 2270
    move v1, v0

    .line 2273
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    .line 2274
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 2276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2277
    const-string v2, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :goto_2
    move v2, v4

    .line 2284
    goto/16 :goto_1

    .line 2280
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_2
.end method

.method private ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 14
    .parameter "ac"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 267
    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 268
    .local v8, radioTech:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v12, :cond_2

    .line 272
    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 273
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 274
    iget v12, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v12, :cond_1

    iget v12, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v12, v8, :cond_0

    .line 275
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpReqApn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v10, "ifApnDupWithExisted: mAllApns is empty!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    move v10, v11

    .line 316
    :goto_1
    return v10

    .line 287
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x0

    .line 289
    .local v7, isDupApn:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .line 290
    .local v9, reqApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v9, :cond_6

    iget-object v12, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 291
    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 292
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 293
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_5

    .line 294
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    .line 295
    .local v4, existedApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v4, :cond_5

    iget-object v12, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 298
    iget-object v12, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 299
    const/4 v7, 0x1

    .line 300
    const-string v11, "ifApnDupWithExisted: apn is duplicate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #existedApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found abnormal apn in ReqApn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 310
    .end local v9           #reqApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_7
    if-nez v7, :cond_8

    .line 311
    const-string v10, "ifApnDupWithExisted: none is duplicate"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v10, v11

    .line 312
    goto :goto_1

    .line 315
    :cond_8
    const-string v11, "ifApnDupWithExisted: all is duplicate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 4
    .parameter "ac"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 258
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 259
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    const/4 v3, 0x1

    .line 262
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 4848
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedNetwork(I)Z
    .locals 1
    .parameter "eri_id"

    .prologue
    .line 2597
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-eq p1, v0, :cond_0

    const/16 v0, 0x47

    if-eq p1, v0, :cond_0

    const/16 v0, 0x48

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeNetwork(I)Z
    .locals 2
    .parameter "eri_id"

    .prologue
    const/4 v0, 0x1

    .line 2603
    if-eq p1, v0, :cond_0

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    const/16 v1, 0x41

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4c

    if-lt p1, v1, :cond_1

    const/16 v1, 0x53

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRuimCardSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    const-string v1, "persist.radio.enableruim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSprintRelease()Z
    .locals 1

    .prologue
    .line 662
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "ac"

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 236
    .local v1, switched:Lcom/android/internal/telephony/ApnContext;
    if-ne v1, p1, :cond_0

    .line 237
    const/4 v2, 0x1

    .line 240
    .end local v1           #switched:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private logReportedApnStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 5960
    new-array v1, v3, [B

    .line 5961
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 5962
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 5961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5962
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 5965
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 5229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v1, "admin"

    if-eq v0, v1, :cond_0

    .line 5234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 5237
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 5242
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 5243
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 5244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 5246
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 5247
    return-void
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 1900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1901
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v0

    .line 1902
    .local v0, profileType:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1903
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1934
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1935
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1937
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 1938
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1939
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 2307
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    .line 4811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4812
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4816
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4818
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4852
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    .line 4853
    .local v4, overallState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v6, :cond_4

    :cond_0
    move v2, v8

    .line 4856
    .local v2, isDisconnected:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4857
    .local v3, operator:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_1

    .line 4859
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 4864
    :cond_1
    const/4 v5, -0x1

    .line 4865
    .local v5, previousPreferredApnId:I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v6, :cond_2

    .line 4866
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v5, v6, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 4872
    :cond_2
    const-string v6, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4873
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 4876
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v6, v5, :cond_5

    .line 4879
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onApnChanged: ApnSetting not changed, return ,  mPreferredApn.id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v7, v7, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4903
    :cond_3
    :goto_1
    return-void

    .end local v2           #isDisconnected:Z
    .end local v3           #operator:Ljava/lang/String;
    .end local v5           #previousPreferredApnId:I
    :cond_4
    move v2, v7

    .line 4853
    goto :goto_0

    .line 4884
    .restart local v2       #isDisconnected:Z
    .restart local v3       #operator:Ljava/lang/String;
    .restart local v5       #previousPreferredApnId:I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    .line 4886
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 4887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after copy, mOldAllApns:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4894
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4895
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    goto :goto_3

    .line 4889
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v6, "after copy,mOldAllApns is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4899
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    if-nez v2, :cond_8

    :goto_4
    const-string v6, "apnChanged"

    invoke-virtual {p0, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 4900
    if-eqz v2, :cond_3

    .line 4901
    const-string v6, "apnChanged"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move v8, v7

    .line 4899
    goto :goto_4
.end method

.method private onCdmaDataDetached()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3208
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3209
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 3210
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 3211
    const-string v1, "cdmaDataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3224
    :goto_0
    return-void

    .line 3213
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 3214
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 3215
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 3217
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 3218
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3222
    .end local v0           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 3218
    .restart local v0       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 3227
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 3228
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 3229
    .local v0, otaPrivision:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3230
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 3240
    .end local v0           #otaPrivision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3233
    .restart local v0       #otaPrivision:[I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 3230
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDataStateChangedForRuimCard(Landroid/os/AsyncResult;)V
    .locals 24
    .parameter "ar"

    .prologue
    .line 3477
    const-string v21, "onDataStateChangedForRuimCard(ar): E"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3478
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v12, v21

    check-cast v12, Ljava/util/ArrayList;

    .line 3480
    .local v12, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3484
    const-string v21, "onDataStateChangedForRuimCard(ar): exception; likely radio not available, ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3603
    :goto_0
    return-void

    .line 3487
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChangedForRuimCard(ar): DataCallState size="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3491
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3492
    .local v11, dataCallStateToDcac:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/DataCallState;

    .line 3493
    .local v10, dataCallState:Lcom/android/internal/telephony/DataCallState;
    iget v0, v10, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v13

    .line 3495
    .local v13, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v13, :cond_1

    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3499
    .end local v10           #dataCallState:Lcom/android/internal/telephony/DataCallState;
    .end local v13           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcDBG_OnDCS(Ljava/util/HashMap;)V

    .line 3503
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 3506
    .local v7, apnsToCleanup:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/DataCallState;

    .line 3507
    .local v18, newState:Lcom/android/internal/telephony/DataCallState;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3509
    .restart local v13       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v13, :cond_4

    .line 3510
    const-string v21, "onDataStateChangedForRuimCard(ar): No associated DataConnection ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3515
    :cond_4
    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    .line 3518
    .local v6, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3519
    .local v9, connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    .line 3520
    .local v5, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 3521
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3524
    .end local v5           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_7

    .line 3525
    const-string v21, "onDataStateChangedForRuimCard(ar): no connected apns"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3529
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChangedForRuimCard(ar): Found ConnId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " newState="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3531
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 3533
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChangedForRuimCard(ar): inactive, cleanup apns="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3535
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 3538
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChanged(ar): active, newState="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3540
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/DataConnectionAc;->updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v20

    .line 3542
    .local v20, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3543
    const-string v21, "onDataStateChanged(ar): no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3545
    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 3546
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 3551
    :cond_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v8

    .line 3553
    .local v8, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    const/16 v17, 0x0

    .line 3554
    .local v17, needToClean:Z
    iget-object v0, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15           #i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 3555
    .local v4, added:Landroid/net/LinkAddress;
    iget-object v0, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/LinkAddress;

    .line 3556
    .local v19, removed:Landroid/net/LinkAddress;
    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 3558
    const/16 v17, 0x1

    .line 3559
    goto :goto_4

    .line 3563
    .end local v4           #added:Landroid/net/LinkAddress;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #removed:Landroid/net/LinkAddress;
    :cond_d
    if-eqz v17, :cond_e

    .line 3565
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChanged(ar): addr change, cleanup apns="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3568
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 3570
    :cond_e
    const-string v21, "onDataStateChanged(ar): simple change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    .line 3572
    .restart local v5       #apnContext:Lcom/android/internal/telephony/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    const-string v22, "linkPropertiesChanged"

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3579
    .end local v5           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v8           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v17           #needToClean:Z
    :cond_f
    const-string v21, "onDataStateChanged(ar): no changes"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3584
    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChanged(ar): interface change, cleanup apns="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3587
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 3596
    .end local v6           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v9           #connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v13           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v18           #newState:Lcom/android/internal/telephony/DataCallState;
    .end local v20           #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    .line 3598
    .restart local v5       #apnContext:Lcom/android/internal/telephony/ApnContext;
    const/16 v21, 0x1

    const-string v22, "networkOrModemDisconnect"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_6

    .line 3602
    .end local v5           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_12
    const-string v21, "onDataStateChangedForRuimCard(ar): X"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onRestartRadio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3243
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 3244
    const-string v0, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3253
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 3255
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 5413
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5414
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 5415
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 5419
    :goto_0
    return-object v0

    .line 5417
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private profileDecisionByEnabledPriority(Ljava/lang/String;)I
    .locals 4
    .parameter "requestApnType"

    .prologue
    .line 1439
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1442
    .local v1, proirityList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1444
    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1447
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    .line 1469
    :goto_1
    return v2

    .line 1442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1455
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1459
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x12

    if-ge v0, v2, :cond_4

    .line 1461
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(2): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1464
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1459
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1469
    :cond_4
    const/16 v2, 0xa

    goto :goto_1

    .line 1439
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 5251
    if-nez p2, :cond_1

    .line 5252
    const-string v1, "reconnectAfterFail: apnContext == null, impossible"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5299
    :cond_0
    :goto_0
    return-void

    .line 5256
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5257
    const-string v1, "reconnectAfterFail: apnContext is not Ready, stop this try"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5261
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5263
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isRetryNeeded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5264
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5265
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "apnFailed"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5268
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v1, :cond_6

    .line 5270
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->retryForeverUsingLastTimeout()V

    .line 5283
    :cond_4
    move v0, p3

    .line 5284
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_5

    .line 5285
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 5286
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 5288
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 5290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5292
    const-string v1, "reconnectAfterFail: NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5273
    .end local v0           #nextReconnectDelay:I
    :cond_6
    const-string v1, "reconnectAfterFail: activate failed, Reregistering to network"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 5275
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 5276
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_0

    .line 5296
    .restart local v0       #nextReconnectDelay:I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 2
    .parameter "lastFailCauseCode"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 2215
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    .line 2217
    :cond_0
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1942
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    .line 1943
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    .line 1944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    .line 1945
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    .line 1946
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    .line 1947
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 2186
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v1

    if-ltz v1, :cond_1

    .line 2187
    const/4 v0, 0x1

    .line 2195
    :cond_0
    :goto_0
    return v0

    .line 2190
    :cond_1
    const/4 v0, 0x1

    .line 2192
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 5451
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 5464
    :cond_0
    :goto_0
    return-void

    .line 5455
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5456
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5458
    if-ltz p1, :cond_0

    .line 5459
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5460
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5461
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setpreferred apn pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 5028
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupData: apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5056
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v5

    .line 5057
    .local v5, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 5058
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v0, :cond_0

    .line 5059
    const-string v9, "setupData: return for no apn found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5158
    :goto_0
    return v8

    .line 5063
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5064
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    .line 5066
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 5067
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 5068
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 5073
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 5075
    .local v1, dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v1, :cond_9

    .line 5077
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .end local v1           #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 5079
    .restart local v1       #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-eqz v1, :cond_2

    .line 5080
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 5081
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "overwrite apn from other AC, ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5085
    :cond_2
    if-nez v1, :cond_3

    .line 5086
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 5090
    :cond_3
    if-nez v1, :cond_4

    .line 5091
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 5094
    :cond_4
    if-nez v1, :cond_5

    .line 5095
    const-string v10, "setupData: No ready CdmaDataConnection found!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5098
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 5101
    :cond_5
    if-nez v1, :cond_6

    .line 5102
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 5105
    :cond_6
    if-nez v1, :cond_7

    .line 5106
    const-string v9, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5110
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 5111
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setProfileId(I)V

    .line 5112
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v6

    .line 5113
    .local v6, refCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupData: init dc and apnContext refCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5116
    if-nez v6, :cond_8

    .line 5117
    const-string v8, "default"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    .line 5119
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 5120
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 5123
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v6           #refCount:I
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 5124
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 5125
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 5129
    const-string v8, "setupData: data reconnection pending"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5130
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 5131
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 5132
    goto/16 :goto_0

    .line 5136
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 5137
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-ne p1, v8, :cond_c

    .line 5138
    const-string v8, "clean SwitchApnRecord"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5139
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object v12, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 5140
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 5141
    .local v7, tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5143
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 5144
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 5145
    .restart local v7       #tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5152
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 5153
    .local v4, msg:Landroid/os/Message;
    const v8, 0x42000

    iput v8, v4, Landroid/os/Message;->what:I

    .line 5154
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5155
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 5157
    const-string v8, "setupData: initing!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v8, v9

    .line 5158
    goto/16 :goto_0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 1812
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCCW]setupData(), mCwRegState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCwRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1834
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 1836
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v0, :cond_1

    .line 1837
    const-string v4, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1885
    :goto_0
    return v3

    .line 1842
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1849
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1851
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v2

    .line 1852
    .local v2, profileType:I
    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_2

    .line 1853
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1856
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 1874
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call conn.bringUp mActiveApn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1879
    .local v1, msg:Landroid/os/Message;
    const v3, 0x42000

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1880
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1881
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 1883
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1884
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1885
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setupDataOnReadyApns(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 5164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupDataOnReadyApns  reason ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5165
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 5166
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5167
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 5171
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-eqz v6, :cond_0

    .line 5172
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 5174
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    const/4 v3, 0x0

    .line 5175
    .local v3, hasDefault:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5176
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5177
    const/4 v3, 0x1

    .line 5181
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    goto :goto_0

    .line 5186
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #hasDefault:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5187
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ApnContext apntype ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,state ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5188
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_6

    .line 5193
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 5195
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5198
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_5

    .line 5200
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 5201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 5205
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_8
    return-void
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 2169
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "delay"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 5304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule alarm for reconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5308
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 5310
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-nez v4, :cond_1

    .line 5312
    :cond_0
    const-string v4, "null dcac or dc."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5336
    :goto_0
    return-void

    .line 5316
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 5323
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5326
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "reconnect_alarm_extra_reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5327
    const-string v4, "type"

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5330
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5332
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 5333
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILjava/lang/String;)V
    .locals 7
    .parameter "delay"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2293
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2295
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2296
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "reconnect_alarm_extra_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2297
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 2299
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2302
    return-void
.end method

.method private startDataStallAlarm(Z)V
    .locals 9
    .parameter "suspectedStall"

    .prologue
    .line 3679
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getRecoveryAction()I

    move-result v3

    .line 3684
    .local v3, nextAction:I
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->access$1100(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3685
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "data_stall_alarm_aggressive_delay_in_ms"

    const v6, 0xea60

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3694
    .local v1, delayInMs:I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    .line 3699
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3702
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cdma-data-stall"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3703
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "data.stall.alram.tag"

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3704
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 3709
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3712
    return-void

    .line 3689
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #delayInMs:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v6, 0x57e40

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #delayInMs:I
    goto :goto_0
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 5360
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 5361
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    .line 5362
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cause"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 3755
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 3763
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private stopDataStallAlarm()V
    .locals 3

    .prologue
    .line 3715
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3722
    .local v0, am:Landroid/app/AlarmManager;
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    .line 3723
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 3724
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3725
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 3727
    :cond_0
    return-void
.end method

.method private trySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 4379
    if-nez p1, :cond_0

    .line 4380
    const/4 v0, 0x0

    .line 4383
    :goto_0
    return v0

    .line 4382
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 4383
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1476
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "reason"
    .parameter "isTimeoutRetry"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1489
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-nez v8, :cond_1

    .line 1490
    :cond_0
    const-string v8, "the  pointer is null, return"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1643
    :goto_0
    return v6

    .line 1495
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1496
    const-string v8, "***trySetupData not enabled for Airplane mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***trySetupData due to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_5

    const-string v8, "(unspecified)"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1505
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1509
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_6

    .line 1510
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1511
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1514
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1516
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_4

    .line 1517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData new apn context for type:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1518
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "CDMA"

    invoke-direct {v1, v8, v10}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1522
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1528
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1531
    const-string v8, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v9

    .line 1532
    goto/16 :goto_0

    :cond_5
    move-object v8, p1

    .line 1503
    goto :goto_1

    .line 1524
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1536
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v5

    .line 1537
    .local v5, psState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v7

    .line 1539
    .local v7, roaming:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v4

    .line 1545
    .local v4, desiredPowerState:Z
    const/16 v3, 0xa

    .line 1548
    .local v3, cdmaProfileType:I
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_e

    .line 1549
    const-string v8, "ruim card project, no profile switch needed"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1596
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 1598
    .local v0, alwaysAllowProfile:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHtcRadioAvaliable(true): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " retry cnt(0): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " isTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " allowTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " CallListReturned:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1600
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_14

    :cond_9
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v8, :cond_14

    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    if-eqz v8, :cond_b

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-direct {p0, v0, v6, v9, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1615
    const/4 v6, 0x0

    .line 1616
    .local v6, retValue:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_13

    .line 1617
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 1618
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1621
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1623
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_d

    .line 1624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData new apn context for type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1625
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v9, "CDMA"

    invoke-direct {v1, v8, v9}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    :cond_d
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1629
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v6

    .line 1630
    goto/16 :goto_0

    .line 1553
    .end local v0           #alwaysAllowProfile:Z
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #retValue:Z
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->profileDecisionByEnabledPriority(Ljava/lang/String;)I

    move-result v3

    .line 1556
    const/16 v8, 0xa

    if-ne v3, v8, :cond_f

    .line 1558
    const-string v8, "trySetupData: invalid profile"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1563
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 1565
    .local v2, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "try cdmaProfileType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", current profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mHtcRequestedNewApn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1568
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1570
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "psRestrictDisabled"

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1575
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    if-eq v8, v3, :cond_12

    .line 1577
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    .line 1579
    const-string v8, "apnSwitched"

    invoke-direct {p0, v9, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    move v6, v9

    .line 1580
    goto/16 :goto_0

    .line 1582
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_3

    .line 1585
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v10, :cond_8

    .line 1587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData: already active profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    move v6, v9

    .line 1590
    goto/16 :goto_0

    .line 1633
    .end local v2           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .restart local v0       #alwaysAllowProfile:Z
    .restart local v6       #retValue:Z
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->setCurrentProfile(I)V

    .line 1635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    .line 1640
    .end local v6           #retValue:Z
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mHtcRadioAvaliable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mDataConnections.get(0).getRetryCount()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V
    .locals 11
    .parameter "apnContext"

    .prologue
    const/4 v10, 0x0

    .line 4168
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 4169
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v2, :cond_0

    .line 4170
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "onDataSetupCompete: No dcac"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4172
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 4175
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    .line 4176
    .local v6, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4177
    const-string v8, "onDataSetupComplete: success apn=%s"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnSetting;

    iget-object v7, v7, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4183
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4184
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 4186
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 4187
    .local v4, port:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v4, "8080"

    .line 4188
    :cond_1
    new-instance v5, Landroid/net/ProxyProperties;

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4190
    .local v5, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4196
    .end local v4           #port:Ljava/lang/String;
    .end local v5           #proxy:Landroid/net/ProxyProperties;
    :cond_2
    :goto_1
    return-void

    .line 4180
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_3
    const-string v7, "waitingApns is null or empty"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4191
    .restart local v0       #apn:Lcom/android/internal/telephony/ApnSetting;
    :catch_0
    move-exception v3

    .line 4192
    .local v3, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 2086
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    .line 2087
    .local v0, preTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    const/4 v1, 0x0

    .line 2089
    .local v1, curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_5

    .line 2091
    new-instance v1, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    .end local v1           #curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 2092
    .restart local v1       #curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->updateTxRxSum()V

    .line 2099
    :goto_0
    iget-wide v2, v1, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    .line 2100
    iget-wide v2, v1, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    .line 2106
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    cmp-long v2, v2, v12

    if-gtz v2, :cond_0

    iget-wide v2, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_4

    .line 2107
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    sub-long v10, v2, v4

    .line 2108
    .local v10, sent:J
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    sub-long v8, v2, v4

    .line 2111
    .local v8, received:J
    cmp-long v2, v10, v12

    if-lez v2, :cond_6

    cmp-long v2, v8, v12

    if-lez v2, :cond_6

    .line 2112
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2123
    .local v7, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mScreenActionFlag:Z

    if-eqz v2, :cond_1

    .line 2125
    const-string v2, "screen on / off action"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2126
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2129
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-eq v2, v7, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mScreenActionFlag:Z

    if-eqz v2, :cond_3

    .line 2130
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataActivity: newActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2131
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2132
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2135
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mScreenActionFlag:Z

    if-eqz v2, :cond_4

    .line 2136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mScreenActionFlag:Z

    .line 2139
    .end local v7           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v8           #received:J
    .end local v10           #sent:J
    :cond_4
    return-void

    .line 2096
    :cond_5
    new-instance v1, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    .end local v1           #curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v3

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    .restart local v1       #curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    goto :goto_0

    .line 2113
    .restart local v8       #received:J
    .restart local v10       #sent:J
    :cond_6
    cmp-long v2, v10, v12

    if-lez v2, :cond_7

    cmp-long v2, v8, v12

    if-nez v2, :cond_7

    .line 2114
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_1

    .line 2115
    .end local v7           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_7
    cmp-long v2, v10, v12

    if-nez v2, :cond_8

    cmp-long v2, v8, v12

    if-lez v2, :cond_8

    .line 2116
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_1

    .line 2118
    .end local v7           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_1
.end method

.method private updateDataStallInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/16 v11, 0x0

    .line 2002
    new-instance v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;)V

    .line 2004
    .local v6, preTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_1

    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->updateTxRxSum()V

    .line 2018
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v0, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iget-wide v2, v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    sub-long v9, v0, v2

    .line 2019
    .local v9, sent:J
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v0, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iget-wide v2, v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    sub-long v7, v0, v2

    .line 2028
    .local v7, received:J
    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    cmp-long v0, v7, v11

    if-lez v0, :cond_2

    .line 2030
    iput-wide v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    .line 2031
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    .line 2049
    :cond_0
    :goto_1
    return-void

    .line 2010
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    goto :goto_0

    .line 2032
    .restart local v7       #received:J
    .restart local v9       #sent:J
    :cond_2
    cmp-long v0, v9, v11

    if-lez v0, :cond_4

    cmp-long v0, v7, v11

    if-nez v0, :cond_4

    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 2034
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    .line 2039
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataStallInfo: OUT sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSentSinceLastRecv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2036
    :cond_3
    iput-wide v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    goto :goto_2

    .line 2042
    :cond_4
    cmp-long v0, v9, v11

    if-nez v0, :cond_0

    cmp-long v0, v7, v11

    if-lez v0, :cond_0

    .line 2044
    iput-wide v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    .line 2045
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_1
.end method

.method private updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 4199
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4200
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4201
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v0, :cond_0

    .line 4202
    const-string v0, "onDataSetupComplete: PREFERED APN is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4204
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    .line 4205
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4212
    :cond_0
    :goto_0
    return-void

    .line 4209
    :cond_1
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private usedNumberOfDC()I
    .locals 4

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, usedCount:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 247
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    return v2
.end method

.method private writeEventLogCdmaDataDrop()V
    .locals 5

    .prologue
    .line 3258
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 3259
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3262
    return-void

    .line 3259
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method HtcApnHandling()V
    .locals 4

    .prologue
    .line 5426
    const-string v2, "dun"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5428
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_1

    .line 5429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into prefer(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5430
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 5447
    :cond_0
    :goto_0
    const-string v2, "gsm.allapns.created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5448
    return-void

    .line 5432
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 5433
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into default(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5435
    iget-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    goto :goto_1

    .line 5441
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public HtcGetAnyDataEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "apntype"

    .prologue
    const/4 v2, 0x1

    .line 1387
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, isWhite:Z
    const/4 v1, 0x0

    .line 1394
    .local v1, result:Z
    if-nez p1, :cond_2

    move v0, v2

    .line 1405
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v4, :cond_3

    move v1, v2

    .line 1410
    :goto_1
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGetAnyDataEnabled: result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " apntype="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mInternalDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isWhite="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mUserDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sPolicyDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1417
    :cond_1
    monitor-exit v3

    return v1

    .line 1394
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1405
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1418
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected HtcOnCleanUpAllConnections(Ljava/lang/String;)V
    .locals 3
    .parameter "cause"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1356
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnectionsWithWhiteList(ZLjava/lang/String;)V

    .line 1366
    :goto_0
    return-void

    .line 1362
    :cond_0
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method protected UnsyncConnectionCheck()V
    .locals 2

    .prologue
    .line 4408
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataCallStateChecked:Z

    if-nez v0, :cond_0

    .line 4410
    const-string v0, "check if the modem have the unknown data call when DCT initial"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4411
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42031

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 4413
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataCallStateChecked:Z

    .line 4414
    return-void
.end method

.method public _getActiveApnTypesNV()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 4709
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 4710
    .local v4, tempActiveApnType:[Ljava/lang/String;
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v5

    .line 4711
    .local v5, tempEnableApnType:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4713
    .local v0, ActiveApnTypesNV:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 4715
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v1, v2

    .line 4717
    .local v6, type:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4719
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4715
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4723
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActiveApnTypesNV = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4726
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    .line 4729
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public _getActiveApnTypesRUIM()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 4695
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4698
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4699
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4700
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4704
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected allowTimeoutRetryActivity()Z
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 5208
    const-string v2, "cdmaDCT: cleanUpAllConnections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5209
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 5210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnections: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5212
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5213
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 5214
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 5218
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 5223
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 5224
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 5225
    return-void

    .line 5220
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_1
.end method

.method protected cleanUpAllConnectionsWithWhiteList(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnectionsWithWhiteList: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1373
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnectionsWithWhiteList: skip white "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1377
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1378
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    goto :goto_0

    .line 1381
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1383
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1384
    return-void
.end method

.method public controlDataFromRoamGuard(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "userChange"

    .prologue
    const/4 v2, 0x0

    .line 4116
    if-eqz p1, :cond_1

    .line 4117
    if-eqz p2, :cond_0

    .line 4118
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 4119
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 4120
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 4123
    :cond_0
    const v0, 0x42003

    const-string v1, "roamGuardEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4131
    :goto_0
    return-void

    .line 4127
    :cond_1
    const/4 v0, 0x1

    const-string v1, "roamGuardDisabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    .line 4330
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_3

    .line 4333
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 4334
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid apnType id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4363
    .end local v1           #id:I
    :goto_0
    monitor-exit p0

    return v2

    .line 4340
    .restart local v1       #id:I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4344
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4346
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 4347
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 4348
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    .line 4349
    const-string v2, "diableApnType: return APN_REQUEST_STARTED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4350
    const/4 v2, 0x1

    goto :goto_0

    .line 4352
    :cond_1
    const-string v2, "disableApnType: return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4353
    const/4 v2, 0x4

    goto :goto_0

    .line 4358
    :cond_2
    const-string v2, "disableApnType: no apn context was found, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 4360
    goto :goto_0

    .line 4363
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto/16 :goto_0

    .line 4330
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 857
    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 859
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 865
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_3

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 888
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 895
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    .line 914
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dispose()V

    .line 941
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 945
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 948
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 954
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->destroyAllDataConnectionList()V

    .line 964
    return-void

    .line 872
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 881
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    goto/16 :goto_0

    .line 907
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 6347
    const-string v0, "CdmaDataConnectionTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6348
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnectionTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingDataConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRestartRadio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportedApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDunApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6356
    const-string v0, " mDefaultApnId=0"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6357
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v3, 0x1

    .line 4281
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_4

    .line 4282
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4283
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4284
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is type not available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4286
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 4288
    const/4 v2, 0x2

    .line 4324
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    monitor-exit p0

    return v2

    .line 4292
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4300
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 4301
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 4302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid apnType id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4303
    const/4 v2, 0x3

    goto :goto_0

    .line 4306
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->isPendingDisabling()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: return APN_ALREADY_ACTIVE, PHoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4314
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4316
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 4318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: new apn request for type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " return APN_REQUEST_STARTED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 4321
    goto/16 :goto_0

    .line 4324
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->enableApnType(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto/16 :goto_0

    .line 4281
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 968
    const-string v0, "CdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method protected findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "apn"

    .prologue
    const/4 v4, 0x0

    .line 4953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4955
    if-nez p1, :cond_1

    move-object v3, v4

    .line 4968
    :goto_1
    return-object v3

    .line 4953
    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 4958
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4959
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4961
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: dc apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4964
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4965
    iget-object v3, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    goto :goto_1

    .line 4961
    :cond_3
    const-string v3, "null"

    goto :goto_2

    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    move-object v3, v4

    .line 4968
    goto :goto_1
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    const-string v0, "com.android.internal.telephony.cdma-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    const-string v0, "com.android.internal.telephony.cdma-reconnect"

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 4665
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 4669
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4670
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4671
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 4672
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 4673
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 4678
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    .line 4676
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 4678
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4656
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 4657
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getActiveApnStringRUIM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4659
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnStringRUIM(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 4684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4685
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4686
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4687
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 4688
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 4689
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 4692
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4644
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 4645
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->_getActiveApnTypesRUIM()[Ljava/lang/String;

    move-result-object v0

    .line 4649
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->_getActiveApnTypesNV()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4940
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4941
    const/4 v0, 0x2

    .line 4947
    :goto_0
    return v0

    .line 4942
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4943
    const/4 v0, 0x3

    goto :goto_0

    .line 4944
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4945
    const/4 v0, 0x4

    goto :goto_0

    .line 4947
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 3

    .prologue
    .line 3933
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3935
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-nez v1, :cond_0

    .line 3936
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3969
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState  ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3970
    return-object v0

    .line 3937
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3938
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3940
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3949
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcIsRingingButHaventReported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3950
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3943
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3944
    goto :goto_0

    .line 3953
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3955
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3957
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3959
    goto :goto_0

    .line 3964
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3940
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apntype"

    .prologue
    .line 3976
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3978
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-nez v1, :cond_0

    .line 3979
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 4012
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState  ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4013
    return-object v0

    .line 3980
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3981
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3983
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3992
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcIsRingingButHaventReported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3993
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3986
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3987
    goto :goto_0

    .line 3996
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3998
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 4000
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 4002
    goto :goto_0

    .line 4007
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 5
    .parameter "apnType"

    .prologue
    const-wide/16 v2, -0x1

    .line 4055
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    .line 4056
    .local v0, apnTypeId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 4070
    :cond_0
    :goto_0
    return-wide v2

    .line 4061
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    .line 4062
    .local v1, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v1, v4, :cond_0

    .line 4067
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v4, :cond_0

    .line 4068
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getConnectionTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 3

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 214
    .local v0, defaultAC:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 213
    .end local v0           #defaultAC:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 2

    .prologue
    .line 4135
    const/4 v0, 0x0

    .line 4138
    .local v0, allow:Z
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4140
    const-string v1, "VZW ADMIN type, disable data roaming"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4141
    const/4 v0, 0x0

    .line 4145
    :goto_0
    return v0

    .line 4143
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 6272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-eqz v0, :cond_0

    .line 6273
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 6278
    :goto_0
    return-object v0

    .line 6275
    :cond_0
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6276
    const-string v0, "getDataServiceState: mDsst is null, return null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 6278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 375
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 377
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 379
    .local v1, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 387
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 384
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 385
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0

    .line 387
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v2

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 357
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 359
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 361
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 369
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 366
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 367
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0

    .line 369
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v2

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 7

    .prologue
    .line 5366
    const/4 v3, 0x0

    .line 5367
    .local v3, isConnecting:Z
    const/4 v4, 0x1

    .line 5368
    .local v4, isFailed:Z
    const/4 v2, 0x0

    .line 5369
    .local v2, isAnyEnabled:Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v5, :cond_0

    .line 5370
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 5406
    :goto_0
    return-object v5

    .line 5372
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5373
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5374
    const/4 v2, 0x1

    .line 5375
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 5378
    :pswitch_1
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5379
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 5382
    :pswitch_2
    const/4 v3, 0x1

    .line 5383
    const/4 v4, 0x0

    .line 5384
    goto :goto_1

    .line 5387
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_1

    .line 5393
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    if-nez v2, :cond_3

    .line 5394
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5395
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 5398
    :cond_3
    if-eqz v3, :cond_4

    .line 5399
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5400
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 5401
    :cond_4
    if-nez v4, :cond_5

    .line 5402
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5403
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 5405
    :cond_5
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5406
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 5375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, action:I
    return v0
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 993
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_3

    .line 995
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :goto_0
    monitor-exit p0

    return-object v1

    .line 999
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1004
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 1005
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    goto :goto_0

    .line 1007
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 1009
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 993
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2316
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    .line 2317
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2321
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 3770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaDCT handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3772
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDisposed:Z

    if-eqz v2, :cond_2

    .line 3773
    :cond_0
    const-string v2, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3913
    :cond_1
    :goto_0
    return-void

    .line 3777
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3910
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3780
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 3784
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 3786
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 3791
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UnsyncConnectionCheck()V

    .line 3792
    const v2, 0x42003

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3795
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->handleUnsyncConnection(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3799
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaDataDetached()V

    goto :goto_0

    .line 3803
    :sswitch_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_3

    .line 3804
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChangedForRuimCard(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3806
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3811
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3815
    :sswitch_7
    const-string v2, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3816
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0

    .line 3819
    :sswitch_8
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    goto :goto_0

    .line 3825
    :sswitch_9
    const/4 v1, 0x0

    .line 3826
    .local v1, retryReason:Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 3827
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #retryReason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 3829
    .restart local v1       #retryReason:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma retry setup data call for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3831
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3832
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_0

    .line 3838
    .end local v1           #retryReason:Ljava/lang/String;
    :sswitch_a
    const-string v2, "EVENT_ERI_UPDATE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3839
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->eriUpdate(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3844
    :sswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onApnChanged()V

    goto/16 :goto_0

    .line 3847
    :sswitch_c
    const/4 v0, 0x0

    .line 3848
    .local v0, reason:Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/ApnContext;

    if-eqz v2, :cond_5

    .line 3849
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_0

    .line 3851
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3852
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3854
    .restart local v0       #reason:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3861
    .end local v0           #reason:Ljava/lang/String;
    :sswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->doRecovery()V

    goto/16 :goto_0

    .line 3892
    :sswitch_e
    const-string v2, "CDMA EVENT_RADIO_TECH_CHANGED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRadioTechChanged()V

    goto/16 :goto_0

    .line 3898
    :sswitch_f
    const-string v2, "EVENT_ICC_CARD_READY for RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3899
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-nez v2, :cond_1

    .line 3900
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 3901
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v2, :cond_1

    .line 3902
    const-string v2, "get IccCardProxy for RUIM success"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3903
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    const v3, 0x42002

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3777
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_c
        0x42004 -> :sswitch_5
        0x42010 -> :sswitch_2
        0x42012 -> :sswitch_d
        0x42013 -> :sswitch_b
        0x42014 -> :sswitch_4
        0x42015 -> :sswitch_1
        0x42019 -> :sswitch_6
        0x4201a -> :sswitch_7
        0x42023 -> :sswitch_8
        0x42026 -> :sswitch_9
        0x42027 -> :sswitch_a
        0x4202c -> :sswitch_f
        0x4202d -> :sswitch_0
        0x4202e -> :sswitch_e
        0x42031 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handleUnsyncConnection(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4420
    const-string v3, "handleUnsyncConnection(ar): E"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4421
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    .line 4423
    .local v0, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 4427
    const-string v3, "handleUnsyncConnection: exception; likely radio not available"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4429
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    .line 4465
    :goto_0
    return-void

    .line 4442
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataCallState;

    .line 4448
    .local v2, newState:Lcom/android/internal/telephony/DataCallState;
    iget v3, v2, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v3, :cond_1

    .line 4450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUnsyncConnection(ar): deactivate unsync connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4451
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, v2, Lcom/android/internal/telephony/DataCallState;->cid:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    goto :goto_1

    .line 4456
    .end local v2           #newState:Lcom/android/internal/telephony/DataCallState;
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    .line 4457
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v3, :cond_3

    .line 4459
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 4463
    :cond_3
    const-string v3, "UnSyncChecked"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected htcConnectionRequest()V
    .locals 1

    .prologue
    .line 2365
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2366
    return-void
.end method

.method protected htcRequireDisconnect_disablingApn(I)Z
    .locals 6
    .parameter "apnId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2403
    const/4 v1, 0x1

    .line 2404
    .local v1, needscleanup:Z
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return v2

    .line 2407
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v4, :cond_2

    move v2, v3

    .line 2408
    goto :goto_0

    .line 2410
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x12

    if-ge v0, v4, :cond_4

    .line 2413
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2415
    const/4 v1, 0x0

    .line 2410
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2420
    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2423
    const/4 v1, 0x1

    .line 2425
    :cond_5
    if-nez v1, :cond_0

    .line 2427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCleanUpConnection not accepted:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 2428
    goto :goto_0
.end method

.method protected initApnContextsAndDataConnection()V
    .locals 11

    .prologue
    .line 4509
    const-string v9, "net.def_data_on_boot"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4518
    .local v3, defaultEnabled:Z
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x408002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 4522
    .local v8, networkConfigStrings:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 4523
    .local v7, networkConfigString:Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkConfig;

    invoke-direct {v6, v7}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 4524
    .local v6, networkConfig:Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 4526
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget v9, v6, Landroid/net/NetworkConfig;->type:I

    packed-switch v9, :pswitch_data_0

    .line 4522
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4528
    :pswitch_1
    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4529
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 4530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConnectivityManager.TYPE_MOBILE + apncontext:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4582
    :goto_2
    if-eqz v0, :cond_1

    .line 4584
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    .line 4585
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkConfig.dependencyMet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4533
    :pswitch_2
    const-string v9, "mms"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4534
    goto :goto_2

    .line 4536
    :pswitch_3
    const-string v9, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4537
    goto :goto_2

    .line 4539
    :pswitch_4
    const-string v9, "dun"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4540
    goto :goto_2

    .line 4543
    :pswitch_5
    const-string v9, "admin"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4544
    goto :goto_2

    .line 4546
    :pswitch_6
    const-string v9, "internet"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4547
    goto :goto_2

    .line 4550
    :pswitch_7
    const-string v9, "hipri"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4551
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 4552
    .local v2, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_0

    .line 4553
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v10

    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto/16 :goto_1

    .line 4560
    .end local v2           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_8
    const-string v9, "fota"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4561
    goto :goto_2

    .line 4563
    :pswitch_9
    const-string v9, "ims"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4564
    goto/16 :goto_2

    .line 4566
    :pswitch_a
    const-string v9, "cbs"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4567
    goto/16 :goto_2

    .line 4570
    :pswitch_b
    const-string v9, "httpproxy"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4571
    goto/16 :goto_2

    .line 4575
    :pswitch_c
    const-string v9, "cmmail"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4576
    goto/16 :goto_2

    .line 4587
    :cond_1
    const-string v9, "apnContext is null"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4590
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #networkConfig:Landroid/net/NetworkConfig;
    .end local v7           #networkConfigString:Ljava/lang/String;
    :cond_2
    return-void

    .line 4526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 1023
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 1024
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1025
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 1028
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return v1

    .line 1026
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1028
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 8
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4824
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_4

    .line 4825
    const-string v7, "dun"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4843
    :cond_0
    :goto_0
    return v5

    .line 4829
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 4830
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 4831
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    move v5, v6

    .line 4836
    goto :goto_0

    .line 4838
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 4839
    .local v4, s:Ljava/lang/String;
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4838
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #s:Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 4843
    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    const/4 v1, 0x0

    .line 4489
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 4491
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4492
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4493
    const/4 v1, 0x1

    .line 4504
    :cond_0
    :goto_0
    return v1

    .line 4497
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4498
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4501
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0

    .line 4504
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5881
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 5882
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5883
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    .line 5891
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 5889
    goto :goto_0

    .line 5891
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1118
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1119
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 1120
    .local v2, internalDataEnabled:Z
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v3

    .line 1126
    .local v3, psState:I
    const/4 v5, 0x0

    .line 1127
    .local v5, roaming:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1128
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 1134
    :goto_0
    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_11

    move v5, v7

    .line 1139
    :goto_1
    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    if-eqz v9, :cond_0

    .line 1140
    const/4 v5, 0x0

    .line 1142
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 1144
    .local v1, desiredPowerState:Z
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v9

    if-ne v9, v7, :cond_12

    move v6, v7

    .line 1147
    .local v6, subscriptionFromNv:Z
    :goto_2
    if-eqz v3, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v9, :cond_13

    :cond_1
    if-nez v6, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v9, :cond_13

    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_13

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v5, :cond_13

    :cond_4
    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-nez v9, :cond_13

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    if-eqz v9, :cond_13

    move v0, v7

    .line 1182
    .local v0, allowed:Z
    :goto_3
    if-nez v0, :cond_f

    .line 1183
    const-string v4, ""

    .line 1184
    .local v4, reason:Ljava/lang/String;
    if-eqz v3, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v7, :cond_5

    .line 1185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - psState= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1187
    :cond_5
    if-nez v6, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - RUIM not loaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1194
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_7

    .line 1196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - concurrentVoiceAndData not allowed and state= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1200
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Roaming"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1202
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - VZW global roaming"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1203
    :cond_9
    if-nez v2, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - mInternalDataEnabled= false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1204
    :cond_a
    if-nez v1, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - desiredPowerState= false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1205
    :cond_b
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - mPendingRestartRadio= true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - needs Provisioning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1207
    :cond_d
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCallListReturned:Z

    if-nez v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - data call list check not return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1208
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data not allowed due to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1210
    .end local v4           #reason:Ljava/lang/String;
    :cond_f
    return v0

    .line 1120
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #internalDataEnabled:Z
    .end local v3           #psState:I
    .end local v5           #roaming:Z
    .end local v6           #subscriptionFromNv:Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1131
    .restart local v2       #internalDataEnabled:Z
    .restart local v3       #psState:I
    .restart local v5       #roaming:Z
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v5

    goto/16 :goto_0

    :cond_11
    move v5, v8

    .line 1134
    goto/16 :goto_1

    .restart local v1       #desiredPowerState:Z
    :cond_12
    move v6, v8

    .line 1144
    goto/16 :goto_2

    .restart local v6       #subscriptionFromNv:Z
    :cond_13
    move v0, v8

    .line 1147
    goto/16 :goto_3
.end method

.method public isDataConnectionAsDesired()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1059
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v0

    .line 1061
    .local v0, roaming:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v1

    .line 1064
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    .line 1430
    .local v0, possible:Z
    if-nez v0, :cond_0

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data not possible.  No coverage: dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1433
    :cond_0
    return v0
.end method

.method public isDisconnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3917
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 3918
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3919
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3927
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 3925
    goto :goto_0

    .line 3927
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4049
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 5969
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    return-void
.end method

.method protected needToDeferUserIntention()Z
    .locals 1

    .prologue
    .line 6188
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 4790
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 4791
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4792
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4794
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4799
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnsOfAvailability skipped apn due to isReady==false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4805
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 4807
    :cond_3
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 617
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_3

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 620
    const-string v5, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, reason:Ljava/lang/String;
    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 623
    .local v1, connectionId:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 625
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 627
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_0

    .line 629
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 631
    :cond_0
    const v5, 0x42003

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 634
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 639
    .end local v1           #connectionId:I
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #reason:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 637
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 3161
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 3162
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 3138
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_1

    .line 3139
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3140
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3141
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3142
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 3155
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return-void

    .line 3145
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "radioTurnedOff"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3147
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcRequireDisconnect_disablingApn(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCleanUpConnection not accepted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3153
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    .line 2672
    const/4 v6, 0x0

    .line 2674
    .local v6, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2676
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCdmaPhone.mHtcRadio.hasFlightModeRequested():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2677
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2678
    const-string v8, "hasFlightModeRequested, do not update the data state"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2860
    :cond_0
    :goto_0
    return-void

    .line 2682
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_4

    .line 2683
    iget-object v8, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/ApnContext;

    if-eqz v8, :cond_3

    .line 2684
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2695
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2696
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_8

    .line 2698
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v3

    .line 2699
    .local v3, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v3, :cond_5

    .line 2700
    const-string v8, "onDataSetupComplete() has a null dcac !!! Should not happen"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2686
    .end local v3           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "onDataSetupComplete: No apnContext"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2689
    :cond_4
    iget-object v8, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 2690
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v6           #reason:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #reason:Ljava/lang/String;
    goto :goto_1

    .line 2704
    .restart local v3       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V

    .line 2705
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V

    .line 2706
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V

    .line 2714
    .end local v3           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 2716
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mdeferCWDataCall:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2717
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mdeferCWDataCall:Z

    .line 2719
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnectionAc;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v5

    .line 2720
    .local v5, mcid:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCCW] current cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_7

    const/16 v8, 0xa0

    if-ne v5, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDeferCWIntention:Z

    if-nez v8, :cond_7

    .line 2725
    :cond_6
    const/4 v8, 0x1

    const-string v9, "cwFeatureChange"

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 2843
    .end local v5           #mcid:I
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mdeferCWDataCall:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2844
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mdeferCWDataCall:Z

    .line 2846
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnectionAc;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v5

    .line 2847
    .restart local v5       #mcid:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCCW] current cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_0

    const/16 v8, 0xa0

    if-ne v5, v8, :cond_15

    const/4 v8, 0x1

    :goto_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDeferCWIntention:Z

    xor-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 2856
    const/4 v8, 0x1

    const-string v9, "cwFeatureChange"

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 2709
    .end local v5           #mcid:I
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2735
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2736
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2738
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v2, v8

    check-cast v2, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2739
    .local v2, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Connection setup failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2750
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_11

    .line 2752
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2754
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSipInviteOK:Z

    .line 2761
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2762
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v8

    if-nez v8, :cond_d

    .line 2764
    const-string v8, "onDataSetupComplete: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2766
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2768
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq v2, v8, :cond_b

    sget-object v8, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v2, v8, :cond_c

    .line 2771
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v9, "datt not subcribed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2779
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2782
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    .line 2787
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v8, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    .local v1, apnString:Ljava/lang/String;
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDataSetupComplete: permanent error apn=%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2775
    .end local v1           #apnString:Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v9, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2788
    :catch_0
    move-exception v4

    .line 2789
    .local v4, e:Ljava/lang/Exception;
    const-string v1, "<unknown>"

    .restart local v1       #apnString:Ljava/lang/String;
    goto :goto_6

    .line 2794
    .end local v1           #apnString:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_d
    const-string v8, "onDataSetupComplete: Not all permanent failures, retry"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2796
    const/4 v7, -0x1

    .line 2797
    .local v7, retryOverride:I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v8, :cond_e

    .line 2798
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v7

    .line 2801
    :cond_e
    const v8, 0x7fffffff

    if-ne v7, v8, :cond_f

    .line 2802
    const-string v8, "No retry is suggested."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2804
    :cond_f
    invoke-direct {p0, v2, v0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    goto/16 :goto_3

    .line 2808
    .end local v7           #retryOverride:I
    :cond_10
    const-string v8, "onDataSetupComplete: Try next APN"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2809
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2812
    sget v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_3

    .line 2818
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v8

    if-gez v8, :cond_12

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2821
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2825
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2826
    const-string v8, "apnFailed"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    :cond_12
    const/4 v7, -0x1

    .line 2832
    .restart local v7       #retryOverride:I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v8, :cond_13

    .line 2833
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v7

    .line 2836
    :cond_13
    const v8, 0x7fffffff

    if-ne v7, v8, :cond_14

    .line 2837
    const-string v8, "No retry is suggested."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2839
    :cond_14
    invoke-direct {p0, v2, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 2848
    .end local v2           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    .end local v7           #retryOverride:I
    .restart local v5       #mcid:I
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 2053
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2079
    :goto_0
    return-void

    .line 2059
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updateDataStallInfo()V

    .line 2061
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_trigger_packet_count"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2065
    .local v0, hangWatchdogTrigger:I
    const/4 v1, 0x0

    .line 2066
    .local v1, suspectedStall:Z
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " do recovery action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getRecoveryAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2070
    const/4 v1, 0x1

    .line 2071
    const v2, 0x42012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2078
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 26
    .parameter "ar"

    .prologue
    .line 3265
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v9, v21

    check-cast v9, Ljava/util/ArrayList;

    .line 3268
    .local v9, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/16 v17, 0x0

    .line 3271
    .local v17, newState:Lcom/android/internal/telephony/DataCallState;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 3467
    :cond_0
    :goto_0
    return-void

    .line 3278
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 3279
    const/4 v15, 0x0

    .line 3280
    .local v15, isActiveOrDormantConnectionPresent:Z
    const/4 v8, 0x0

    .line 3284
    .local v8, connectionState:I
    const/4 v14, 0x0

    .local v14, index:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_2

    .line 3285
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/DataCallState;

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 3287
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #newState:Lcom/android/internal/telephony/DataCallState;
    check-cast v17, Lcom/android/internal/telephony/DataCallState;

    .line 3289
    .restart local v17       #newState:Lcom/android/internal/telephony/DataCallState;
    if-eqz v8, :cond_3

    .line 3290
    const/4 v15, 0x1

    .line 3295
    :cond_2
    if-nez v15, :cond_4

    .line 3297
    const-string v21, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3299
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V

    .line 3301
    const/16 v21, 0x1

    const-string v22, "networkOrModemDisconnect"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3284
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3306
    :cond_4
    packed-switch v8, :pswitch_data_0

    .line 3337
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3342
    :goto_2
    if-eqz v17, :cond_0

    .line 3344
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v10

    .line 3345
    .local v10, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v10, :cond_0

    .line 3347
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/DataConnectionAc;->updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v20

    .line 3349
    .local v20, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 3350
    const-string v21, "onDataStateChanged(ar): no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3308
    .end local v10           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v20           #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :pswitch_0
    const-string v21, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3309
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3311
    monitor-enter p0

    .line 3312
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 3313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3314
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3316
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3320
    monitor-enter p0

    .line 3321
    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3322
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 3325
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    goto/16 :goto_2

    .line 3316
    :catchall_0
    move-exception v21

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 3322
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21

    .line 3329
    :pswitch_1
    const-string v21, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3330
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 3333
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopDataStallAlarm()V

    goto/16 :goto_2

    .line 3352
    .restart local v10       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v20       #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 3353
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 3358
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v6

    .line 3360
    .local v6, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    const/16 v16, 0x0

    .line 3361
    .local v16, needToClean:Z
    iget-object v0, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 3362
    .local v5, added:Landroid/net/LinkAddress;
    iget-object v0, v6, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/LinkAddress;

    .line 3363
    .local v19, removed:Landroid/net/LinkAddress;
    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3365
    const/16 v16, 0x1

    .line 3366
    goto :goto_3

    .line 3370
    .end local v5           #added:Landroid/net/LinkAddress;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #removed:Landroid/net/LinkAddress;
    :cond_a
    if-eqz v16, :cond_b

    .line 3372
    const-string v21, "onDataStateChanged(ar): addr change, cleanup"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3374
    const/16 v21, 0x1

    const-string v22, "linkPropertiesChanged"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3376
    :cond_b
    const-string v21, "onDataStateChanged(ar): simple change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    const-string v22, "linkPropertiesChanged"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3381
    .end local v6           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v16           #needToClean:Z
    :cond_c
    const-string v21, "onDataStateChanged(ar): no changes"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3386
    :cond_d
    const-string v21, "onDataStateChanged(ar): interface change, cleanup"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3388
    const/16 v21, 0x1

    const-string v22, "linkPropertiesChanged"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3397
    .end local v8           #connectionState:I
    .end local v10           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v14           #index:I
    .end local v15           #isActiveOrDormantConnectionPresent:Z
    .end local v20           #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :cond_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataStateChanged: not connected, state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ignoring"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3399
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3400
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/HtcModemLink;->isModemLinkOn()Z

    move-result v21

    if-nez v21, :cond_0

    .line 3409
    :cond_f
    sget-object v21, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    goto/16 :goto_0

    .line 3413
    :pswitch_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 3414
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/DataCallState;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 3415
    const/4 v11, 0x0

    .line 3416
    .local v11, deactiveData:Z
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/DataCallState;

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 3417
    .local v7, cid:I
    const-string v22, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "clear unexpected connection "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ", rty="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v21

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ", lnkErr="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 3421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3422
    .local v18, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v21

    if-eqz v21, :cond_12

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 3427
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 3431
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 3432
    const/4 v11, 0x1

    .line 3440
    :cond_11
    :goto_4
    if-eqz v11, :cond_0

    .line 3447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object/from16 v21, v0

    const-string v22, "linkPropertiesChanged"

    const v23, 0x4200f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 3458
    :goto_5
    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_0

    .line 3437
    :cond_12
    const/4 v11, 0x1

    goto :goto_4

    .line 3454
    :cond_13
    const-string v21, "mPendingDataConnection is null , ignore disconnect request"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 3306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 12
    .parameter "connId"
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2869
    const/4 v3, 0x0

    .line 2870
    .local v3, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2871
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_5

    .line 2872
    iget-object v7, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/internal/telephony/ApnContext;

    if-eqz v7, :cond_4

    .line 2873
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2891
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2892
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2893
    if-eqz v3, :cond_1

    const-string v7, "dataDisabled"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2894
    monitor-enter p0

    .line 2895
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const-string v7, "default"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2898
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    .line 2901
    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_8

    .line 2906
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v7, v8, :cond_7

    .line 2907
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2931
    :goto_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_2

    .line 2939
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v7, :cond_2

    const v7, 0x4201a

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeMessages(I)V

    .line 2941
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_9

    .line 2942
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2951
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 2952
    .local v4, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2953
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 2954
    const-string v7, "ssTracker.processPendingRadioPowerOffAfterDataOff()is true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2956
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v7, v8, :cond_b

    .line 2959
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2960
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2961
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2964
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 3061
    .end local v4           #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_3
    :goto_4
    return-void

    .line 2875
    :cond_4
    const-string v7, "Invalid ar in onDisconnectDone"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 2879
    :cond_5
    iget-object v7, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2880
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #reason:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #reason:Ljava/lang/String;
    goto/16 :goto_0

    :cond_6
    move v7, v9

    .line 2895
    goto :goto_1

    .line 2897
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2909
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " avoid npe, ignore setState IDLE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2912
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_2

    .line 2944
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_3

    .line 2969
    .restart local v4       #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    .line 2977
    :cond_b
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 2980
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2981
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_14

    .line 2983
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 2984
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2986
    const-string v7, "gsm.defaultpdpcontext.active"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    sget v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 3030
    :goto_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v7

    if-nez v7, :cond_12

    .line 3031
    const-string v7, "clean pendingAC since it is not enabled."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3032
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object v11, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 3033
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 3034
    .local v6, tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchOffACs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 2993
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_c
    const-string v7, "clean (switchoff\'s) apn/dc/dcac"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2995
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    .line 2996
    .local v5, switched:Lcom/android/internal/telephony/ApnContext;
    if-eq v5, v0, :cond_d

    .line 2997
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3001
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3002
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3003
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3004
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_7

    .line 3006
    :cond_e
    const-string v7, "switched off apncontext\'s dcac is active, don\'t need to clear apncontext.dcac"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 3019
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #switched:Lcom/android/internal/telephony/ApnContext;
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v7, v8, :cond_10

    .line 3020
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3021
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3022
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto/16 :goto_5

    .line 3024
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " avoid npe, ignore clean apn/dc/dcac"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3036
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3037
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 3038
    .restart local v6       #tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchOffACs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 3044
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-eqz v7, :cond_13

    .line 3045
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDisconnectDone: trySetupData for pending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3048
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 3050
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 3052
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_4

    .line 3056
    :cond_14
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3058
    sget v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected onEnableApn(II)V
    .locals 4
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 4923
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 4924
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4925
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 4926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4937
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return-void

    .line 4930
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4931
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 4934
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 3

    .prologue
    .line 2381
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    const-string v1, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2384
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2389
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2390
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    move-result v0

    .line 2391
    .local v0, setupResult:Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2392
    if-nez v0, :cond_1

    .line 2393
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v2, "psRestrictDisabled"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2398
    :cond_2
    return-void
.end method

.method protected onNVReady()V
    .locals 2

    .prologue
    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2352
    const-string v0, "CDMA"

    const-string v1, "onNVReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UnsyncConnectionCheck()V

    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 2358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2360
    :cond_0
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2361
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2621
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    .line 2622
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2623
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2625
    const-string v0, "We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2631
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_2

    .line 2636
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2640
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2641
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2644
    :cond_3
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2653
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2660
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2665
    :goto_0
    return-void

    .line 2662
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRadioTechChanged()V
    .locals 1

    .prologue
    .line 5875
    const-string v0, "CDMA onRadioTechChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5876
    const-string v0, "RadioTechChange"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 5877
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 3

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UnsyncConnectionCheck()V

    .line 2329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2333
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 2335
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMADCT onRecordsLoaded : state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2338
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 2339
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2346
    :goto_0
    return-void

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 2342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2344
    :cond_1
    const v0, 0x42003

    const-string v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 2492
    const-string v0, "Roaming Off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2496
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2497
    const-string v0, "globalRoamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2509
    :goto_0
    return-void

    .line 2499
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2502
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2504
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2506
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2516
    const-string v0, "Roaming On"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2518
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    .line 2523
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2525
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isExtendedNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2526
    const-string v0, "Extended Network, consider it as none-roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2527
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2532
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    if-eqz v0, :cond_4

    .line 2533
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2534
    :cond_1
    const-string v0, "Tear down data connection on global roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2535
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 2559
    :cond_2
    :goto_1
    return-void

    .line 2529
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    goto :goto_0

    .line 2538
    :cond_4
    const-string v0, "the global data roaming is enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2539
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1

    .line 2545
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2547
    :cond_6
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2548
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1

    .line 2550
    :cond_7
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2554
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 4471
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4485
    :cond_0
    :goto_0
    return-void

    .line 4473
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4474
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_2

    .line 4475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4479
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    .line 4480
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4482
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4483
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 4368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4370
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4372
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSipInviteRetryTimes:I

    .line 4376
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2450
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2452
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2457
    :cond_0
    if-eqz p1, :cond_3

    const-string v2, "dataEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2458
    .local v0, enableDataByUser:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2459
    monitor-enter p0

    .line 2460
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2462
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_5

    .line 2465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrySetupData: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2466
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2482
    :cond_2
    :goto_2
    return v1

    .end local v0           #enableDataByUser:Z
    :cond_3
    move v0, v3

    .line 2457
    goto :goto_0

    .restart local v0       #enableDataByUser:Z
    :cond_4
    move v2, v3

    .line 2460
    goto :goto_1

    .line 2462
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2469
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_6

    .line 2470
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2471
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2474
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v1

    .line 2476
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 2477
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2479
    const-string v2, "dataConnectionDenied"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3085
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3086
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3089
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 3090
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 3092
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3104
    :cond_0
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 3126
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_2

    .line 3128
    const-string v0, "voice call ends , try all ready APNs"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3129
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 3133
    :cond_2
    return-void

    .line 3097
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 3098
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    goto :goto_0

    .line 3109
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3111
    const-string v0, "2G voice call end, notify data call is available"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3112
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 3115
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_1

    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 3119
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 3068
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3069
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 3070
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 3071
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3074
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 3078
    :cond_0
    return-void
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 3734
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3744
    :goto_0
    return-void

    .line 3736
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getRecoveryAction()I

    move-result v0

    .line 3738
    .local v0, nextAction:I
    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->access$1100(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3739
    const-string v1, "data stall recovery action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3742
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 3743
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1994
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1995
    const v0, 0x4201a

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 1997
    return-void
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveRoamAllowSettingChange(Z)V

    .line 4111
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 4112
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 985
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 987
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 989
    :cond_0
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 1

    .prologue
    .line 1951
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1952
    const-string v0, "[DataConnection] Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1953
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    .line 1954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1955
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1957
    :cond_0
    return-void
.end method

.method protected startNetStatPollwithoutResetPollStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1963
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_1

    .line 1965
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1966
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1968
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1976
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1987
    const-string v0, "[DataConnection] Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method protected whiteList_Check(Ljava/lang/String;)Z
    .locals 13
    .parameter "requestType"

    .prologue
    const/4 v9, 0x1

    .line 6288
    const/4 v0, 0x0

    .line 6289
    .local v0, allow:Z
    const-string v10, "ro.net.cdma.apnwhitelist"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6290
    .local v7, wList:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 6292
    const-string v10, "RIL"

    const-string v11, "[whitelist] ro.net.cdma.apnwhitelist is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6293
    const-string v10, "ro.net.apnwhitelist"

    const-string v11, "mms,admin"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6295
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    .line 6297
    .local v5, setting:Z
    const-string v10, "RIL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[whitelist] req type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " white list from prop(have def)="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " setting="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserDEed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    if-ne v5, v9, :cond_1

    .line 6302
    const-string v10, "RIL"

    const-string v11, "[whitelist] setting is true, ignore white list, return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6341
    :goto_0
    return v9

    .line 6307
    :cond_1
    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6308
    const-string v9, "RIL"

    const-string v10, "[whitelist] is none, return false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6309
    const/4 v9, 0x0

    goto :goto_0

    .line 6315
    :cond_2
    :try_start_0
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 6331
    .local v8, wTypes:[Ljava/lang/String;
    :goto_1
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v1, v3

    .line 6333
    .local v6, type:Ljava/lang/String;
    const-string v9, "default"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6331
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6316
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #type:Ljava/lang/String;
    .end local v8           #wTypes:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 6317
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "RIL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[whitelist] got exp when split exp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6319
    const-string v9, "mms,admin"

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #wTypes:[Ljava/lang/String;
    goto :goto_1

    .line 6336
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #type:Ljava/lang/String;
    :cond_4
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6337
    const/4 v0, 0x1

    goto :goto_3

    .line 6340
    .end local v6           #type:Ljava/lang/String;
    :cond_5
    const-string v9, "RIL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[whitelist] allow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v0

    .line 6341
    goto :goto_0
.end method
