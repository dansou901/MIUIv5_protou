.class public Landroid/net/HtcMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileDataStateReceiver.java"


# instance fields
.field private latestIntentReceived:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Landroid/net/HtcMobileDataStateReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createMobileDataStateThread()Landroid/os/HandlerThread;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iput-object p2, p0, Landroid/net/HtcMobileDataStateReceiver;->latestIntentReceived:Landroid/content/Intent;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/net/MobileDataStateTracker;->internalBroadcast_onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startMonitoring(Landroid/net/MobileDataStateTracker;)Landroid/content/Intent;
    .locals 4
    .parameter "tracker"

    .prologue
    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    if-nez v1, :cond_0

    const/16 v1, 0x25

    new-array v1, v1, [Landroid/net/MobileDataStateTracker;

    iput-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.DataConnectionTracker.INTENT_DATA_ROAM_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.RESET_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->latestIntentReceived:Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->mMobileDataStateListener:[Landroid/net/MobileDataStateTracker;

    invoke-virtual {p1}, Landroid/net/MobileDataStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    aput-object p1, v1, v2

    iget-object v1, p0, Landroid/net/HtcMobileDataStateReceiver;->latestIntentReceived:Landroid/content/Intent;

    return-object v1
.end method
