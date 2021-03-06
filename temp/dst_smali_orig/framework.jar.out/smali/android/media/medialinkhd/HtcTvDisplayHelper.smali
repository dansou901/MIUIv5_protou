.class public Landroid/media/medialinkhd/HtcTvDisplayHelper;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/HtcTvDisplayHelper$1;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    }
.end annotation


# static fields
.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"

.field static final RET_DMR:I = 0x2711


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

.field private mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

.field private mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

.field private mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

.field private mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][registerReceivever]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->registerDongleListReceivever()V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->registerDongleConfigReceivever()V

    new-instance v0, Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;

    invoke-direct {v0, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    new-instance v0, Landroid/media/medialinkhd/WirelessDisplayHelper;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    invoke-direct {v0, p1, v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;-><init>(Landroid/content/Context;Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    :cond_0
    return-void
.end method

.method static synthetic access$300(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final isAnyDongleNearBy(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isReadyDongleNearBy(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isTvOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][isTvOn]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "flag"

    .prologue
    invoke-static {p0, p1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->setDLNAPreloadFlag(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final shouldPlayOnTv(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][shouldPlayOnTv]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->shouldPlayOnTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->turnOnTv(Landroid/content/Context;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final turnOffTv(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->stopMirror(Landroid/content/Context;)V

    return-void
.end method

.method public static final turnOnTv(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][turnOnTv]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->startMirror(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final registerDongleConfigReceivever()V
    .locals 3

    .prologue
    new-instance v1, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final registerDongleListReceivever()V
    .locals 3

    .prologue
    new-instance v1, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    invoke-virtual {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->release()V

    :cond_0
    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->unregisterReceiver()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method final unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    :cond_1
    return-void
.end method
