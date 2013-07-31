.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$1;,
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$AutoRegistrationProcess;,
        Lcom/android/server/sip/SipService$IntervalMeasurementProcess;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final MIN_EXPIRY_TIME:I = 0x3c

.field private static final SHORT_EXPIRY_TIME:I = 0xa

.field static final TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

.field private mKeepAliveInterval:I

.field private mLastGoodKeepAliveInterval:I

.field private mLocalIp:Ljava/lang/String;

.field private mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mNetworkType:I

.field private mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSipOnWifiOnly:Z

.field private mTimer:Lcom/android/server/sip/SipWakeupTimer;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 89
    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 102
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 124
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 127
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 130
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 131
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 133
    new-instance v1, Lcom/android/server/sip/SipWakeLock;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 136
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 137
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/sip/SipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getKeepAliveInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sip/SipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/sip/SipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return p1
.end method

.method private declared-synchronized addPendingSession(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 392
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    monitor-exit p0

    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "SipService"

    const-string v2, "addPendingSession()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 4
    .parameter "ringingGroup"
    .parameter "ringingSession"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 415
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v1, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const/4 v3, 0x1

    .line 422
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 413
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private cleanUpPendingSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 404
    .local v1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 405
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/sip/ISipSession;

    invoke-interface {v5}, Landroid/net/sip/ISipSession;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 406
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_1
    return-void
.end method

.method private createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 297
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 299
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 304
    :cond_0
    return-object v0

    .line 301
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 312
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 317
    invoke-virtual {v0, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 324
    :goto_0
    return-object v0

    .line 319
    :cond_1
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 321
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_0
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private determineLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 284
    .local v1, s:Ljava/net/DatagramSocket;
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 285
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 289
    .end local v1           #s:Ljava/net/DatagramSocket;
    :goto_0
    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    goto :goto_0
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 440
    .local v0, d:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xac

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_2

    .line 450
    .end local v0           #d:[B
    :cond_1
    :goto_0
    return v2

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v2, "SipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBehindAT()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_2
    move v2, v3

    .line 450
    goto :goto_0
.end method

.method private isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 3
    .parameter "group"

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 192
    .local v0, profile:Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 1
    .parameter "group"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

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

.method private isCallerRadio()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 335
    :cond_0
    return-void
.end method

.method private notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V

    .line 345
    :cond_0
    return-void
.end method

.method private declared-synchronized onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 1131
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    iget v7, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v7, :cond_1

    .line 1132
    :cond_0
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1134
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1139
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1140
    .local v4, networkType:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    if-eqz v6, :cond_2

    if-eq v4, v8, :cond_2

    .line 1141
    const/4 v4, -0x1

    .line 1145
    :cond_2
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v4, :cond_4

    .line 1175
    :goto_1
    monitor-exit p0

    return-void

    .end local v4           #networkType:I
    :cond_3
    move v4, v5

    .line 1139
    goto :goto_0

    .line 1154
    .restart local v4       #networkType:I
    :cond_4
    :try_start_1
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v5, :cond_5

    .line 1155
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1156
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1157
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1158
    .local v2, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1172
    .end local v2           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1173
    .local v1, e:Ljavax/sip/SipException;
    :try_start_2
    const-string v5, "SipService"

    const-string v6, "onConnectivityChanged()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1131
    .end local v1           #e:Ljavax/sip/SipException;
    .end local v4           #networkType:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1161
    .restart local v4       #networkType:I
    :cond_5
    :try_start_3
    iput v4, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1163
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v5, :cond_6

    .line 1164
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1165
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 1166
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1167
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1168
    .restart local v2       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    goto :goto_3

    .line 1171
    .end local v2           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized onKeepAliveIntervalChanged()V
    .locals 3

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 427
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 429
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1095
    return-void
.end method

.method private restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .locals 1
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 387
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 109
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    const-string/jumbo v1, "sip"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "sip"

    new-instance v2, Lcom/android/server/sip/SipService;

    invoke-direct {v2, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.sip.SIP_SERVICE_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    .locals 1
    .parameter "localProfile"

    .prologue
    .line 356
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 358
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .locals 4
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 369
    .local v0, minInterval:I
    if-lt v0, p2, :cond_0

    .line 372
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 374
    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  reset min interval to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    new-instance v1, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    .line 378
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->start()V

    .line 380
    .end local v0           #minInterval:I
    :cond_1
    return-void
.end method

.method private stopPortMappingMeasurement()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    .line 352
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1102
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1104
    return-void
.end method

.method private updateWakeLocks()V
    .locals 4

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1108
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1113
    :cond_1
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1122
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    return-void

    .line 1115
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_2
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 1120
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_3
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1121
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v2}, Lcom/android/server/sip/SipWakeLock;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close(Ljava/lang/String;)V
    .locals 4
    .parameter "localProfileUri"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    const-string v1, "SipService"

    const-string v2, "only creator or radio can close this profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 213
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 214
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 215
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 217
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 6
    .parameter "localProfile"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 264
    iget v3, p0, Lcom/android/server/sip/SipService;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 270
    :goto_0
    monitor-exit p0

    return-object v2

    .line 266
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 267
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 268
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljavax/sip/SipException;
    goto :goto_0

    .line 261
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 7

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.USE_SIP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v2

    .line 143
    .local v2, isCallerRadio:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 145
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isCallerRadio:Z
    .end local v3           #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 149
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #isCallerRadio:Z
    .restart local v3       #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/sip/SipProfile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .locals 4
    .parameter "callId"

    .prologue
    const/4 v0, 0x0

    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-nez p1, :cond_0

    .line 278
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    monitor-exit p0

    return v1

    .line 225
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const-string v2, "SipService"

    const-string v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 242
    :goto_0
    monitor-exit p0

    return v1

    .line 238
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1

    goto :goto_0

    .line 241
    :cond_1
    const-string v2, "SipService"

    const-string v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "localProfile"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljavax/sip/SipException;
    :try_start_2
    const-string v1, "SipService"

    const-string v2, "openToMakeCalls()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 153
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .locals 5
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 170
    if-nez p2, :cond_1

    .line 171
    const-string v2, "SipService"

    const-string v3, "incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 180
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljavax/sip/SipException;
    :try_start_2
    const-string v2, "SipService"

    const-string v3, "openToReceiveCalls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V
    .locals 4
    .parameter "localProfileUri"
    .parameter "listener"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 255
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    const-string v1, "SipService"

    const-string v2, "only creator can set listener on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
