.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
.super Landroid/os/Handler;
.source "HtcCdmaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_DETAIL:Z = false

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x7

.field private static final EVENT_FORCE_RELOAD:I = 0xa

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x8

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x9

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x5

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0xc

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x4

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3

.field private static final EVENT_RUIM_REFRESH:I = 0x6

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0xb

.field private static final EVENT_SIM_SWAP_STATUS:I = 0xd

.field public static final ICC_ACCT_IS_PRIMARY:I = 0x1000

.field public static final ICC_ACCT_SLOT_VALID:I = 0x800

.field public static final ICC_AVALIABLE:I = 0x400

.field public static final ICC_BITMASK:I = 0x1f00

.field public static final ICC_DATA_UPDATED:I = 0x100

.field public static final ICC_READY_TO_LOAD:I = 0x200

.field public static final NV_ACCT_IS_PRIMARY:I = 0x10

.field public static final NV_ACCT_SLOT_VALID:I = 0x8

.field public static final NV_AVALIABLE:I = 0x4

.field public static final NV_BITMASK:I = 0x1f

.field public static final NV_DATA_UPDATED:I = 0x1

.field public static final NV_READY_TO_LOAD:I = 0x2

.field private static final SUBSCRIPTION_FROM_NV:I = 0x1

.field private static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field private static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_PRE:Ljava/lang/String; = "AccMgr-"

.field private static mLock:Ljava/lang/Object;

.field private static mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;


# instance fields
.field private disposedHandler:Z

.field private mAccountPrimaryFixed:Z

.field private mAnyAccountExisted:Z

.field private mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsCheckingSimStatus:Ljava/lang/Boolean;

.field private mIsCheckingSubscribSource:Z

.field private mRadioState:Ljava/lang/Boolean;

.field private mStateChangeNotifier:Landroid/os/RegistrantList;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 7
    .parameter "ci"
    .parameter "context"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .local v0, acctCaps:[Z
    aget-boolean v1, v0, v5

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    aget-boolean v1, v0, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    :cond_0
    aget-boolean v1, v0, v6

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    aget-boolean v1, v0, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x7

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, obj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private obtainAsyncResult(I)Landroid/os/AsyncResult;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->disposedHandler:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceDataReload()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->disposedHandler:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    .local v15, updateStatus:I
    const/4 v8, 0x0

    .local v8, dbgString:Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, dbgDisplay:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    const/4 v7, 0x0

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    const-string v16, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AccMgr-msg "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_0

    and-int/lit16 v0, v15, -0x102

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainAsyncResult(I)Landroid/os/AsyncResult;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    .local v6, currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-boolean v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", dyn:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    :cond_4
    sget-object v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    and-int/lit8 v16, v15, 0x8

    if-eqz v16, :cond_5

    or-int/lit8 v16, v15, 0x4

    or-int/lit8 v15, v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_5

    or-int/lit8 v16, v15, 0x4

    or-int/lit8 v16, v16, 0x2

    or-int/lit8 v15, v16, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_2

    :cond_6
    and-int/lit16 v0, v15, 0x800

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    :cond_8
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    :pswitch_1
    and-int/lit16 v15, v15, -0x607

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    and-int/lit16 v15, v15, -0x1011

    :cond_b
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_2
    and-int/lit16 v15, v15, -0x601

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    and-int/lit8 v16, v15, 0x8

    if-eqz v16, :cond_c

    or-int/lit8 v16, v15, 0x4

    or-int/lit8 v15, v16, 0x2

    :cond_c
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    .end local v6           #currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    move-object/from16 v10, v16

    check-cast v10, [I

    .local v10, ints:[I
    const/16 v16, 0x0

    aget v13, v10, v16

    .local v13, otaStatus:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ota:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v13, v0, :cond_d

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    :cond_d
    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_e

    or-int/lit8 v15, v15, 0x1

    :cond_e
    and-int/lit16 v0, v15, 0x200

    move/from16 v16, v0

    if-eqz v16, :cond_2

    or-int/lit16 v15, v15, 0x100

    goto/16 :goto_1

    .end local v10           #ints:[I
    .end local v13           #otaStatus:I
    :cond_f
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ota:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    if-eqz v16, :cond_2

    sget-boolean v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v16, :cond_10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-nez v16, :cond_11

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x0

    goto :goto_4

    :cond_11
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_16

    iget-object v9, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/IccCardStatus;

    .local v9, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    .local v5, cardStt:Lcom/android/internal/telephony/IccCardStatus$CardState;
    if-nez v5, :cond_12

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/IccCardStatus$CardState;

    :cond_12
    sget-object v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", stt:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    and-int/lit16 v0, v15, -0x201

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v15, v0, 0x400

    .end local v5           #cardStt:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .end local v9           #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_17

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    sget-boolean v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v15, :cond_2

    const/4 v7, 0x0

    goto/16 :goto_1

    .restart local v5       #cardStt:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v9       #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :pswitch_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", stt:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    and-int/lit16 v15, v15, -0x601

    goto/16 :goto_5

    :pswitch_7
    and-int/lit16 v0, v15, -0x201

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v15, v0, 0x400

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    .local v3, appIdx:I
    const/4 v2, 0x0

    .local v2, app:Lcom/android/internal/telephony/IccCardApplication;
    :try_start_0
    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", app"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    or-int/lit16 v15, v15, 0x200

    goto/16 :goto_5

    :cond_14
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", noApp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .end local v2           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v3           #appIdx:I
    .end local v5           #cardStt:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_15
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", noCardStt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    and-int/lit16 v15, v15, -0x601

    goto/16 :goto_5

    .end local v9           #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :cond_16
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simStt rdo:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", err:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    and-int/lit16 v15, v15, -0x601

    goto/16 :goto_5

    :cond_17
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_18
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_1a

    iget-object v14, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/IccRefreshResponse;

    .local v14, resp:Lcom/android/internal/telephony/IccRefreshResponse;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simUpd:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v14, :cond_19

    iget v0, v14, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v14, :cond_2

    and-int/lit16 v0, v15, 0x200

    move/from16 v16, v0

    if-eqz v16, :cond_2

    or-int/lit16 v15, v15, 0x100

    goto/16 :goto_1

    :cond_19
    const-string v16, "null"

    goto :goto_7

    .end local v14           #resp:Lcom/android/internal/telephony/IccRefreshResponse;
    :cond_1a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simUpd:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    if-nez v16, :cond_1d

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    move-object/from16 v11, v16

    check-cast v11, [I

    .local v11, isSIMRemoved:[I
    if-eqz v11, :cond_1c

    array-length v0, v11

    move/from16 v16, v0

    if-lez v16, :cond_1b

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simSwp cmd:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    aget v16, v11, v16

    if-nez v16, :cond_2

    and-int/lit16 v15, v15, -0x601

    goto/16 :goto_1

    :cond_1b
    const-string v8, "simSwp len:0"

    goto/16 :goto_1

    :cond_1c
    const-string v8, "simSwp len:null"

    goto/16 :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v11           #isSIMRemoved:[I
    :cond_1d
    sget-boolean v16, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v16, :cond_1e

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "simSwp chk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_8
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_1e
    const/4 v7, 0x0

    goto :goto_8

    :pswitch_a
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    :pswitch_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_1f

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1f

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    check-cast v16, [I

    const/16 v17, 0x0

    aget v12, v16, v17

    .local v12, newSubscriptionSource:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "src:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    packed-switch v12, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_c
    and-int/lit16 v15, v15, -0x1011

    goto/16 :goto_1

    :pswitch_d
    and-int/lit8 v16, v15, -0x11

    move/from16 v0, v16

    or-int/lit16 v15, v0, 0x1000

    goto/16 :goto_1

    :pswitch_e
    and-int/lit16 v0, v15, -0x1001

    move/from16 v16, v0

    or-int/lit8 v15, v16, 0x10

    goto/16 :goto_1

    .end local v12           #newSubscriptionSource:I
    :cond_1f
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "src:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_20

    or-int/lit8 v15, v15, 0x1

    :cond_20
    and-int/lit16 v0, v15, 0x200

    move/from16 v16, v0

    if-eqz v16, :cond_2

    or-int/lit16 v15, v15, 0x100

    goto/16 :goto_1

    .restart local v2       #app:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v3       #appIdx:I
    .restart local v4       #ar:Landroid/os/AsyncResult;
    .restart local v5       #cardStt:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v9       #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :catch_0
    move-exception v16

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_f
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public registerForStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->unregisterForStateChange(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainAsyncResult(I)Landroid/os/AsyncResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterForStateChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
