.class public Lcom/htc/server/HtcAppLifeCycleMonitor;
.super Ljava/lang/Object;
.source "HtcAppLifeCycleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAppLifeCycleMonitor$1;,
        Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;,
        Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEBUG_SECURE:Z = false

.field private static final EXTRA_ADD_APP_LIST:Ljava/lang/String; = "add_app_list"

.field private static final EXTRA_DELETE_APP_LIST:Ljava/lang/String; = "delete_app_list"

.field private static final EXTRA_PID:Ljava/lang/String; = "pid"

.field private static final EXTRA_PROCESS_IS_ALIVE:Ljava/lang/String; = "process_is_alive"

.field private static final EXTRA_RUNNING_APP_COUNT:Ljava/lang/String; = "running_app_count"

.field private static final EXTRA_RUNNING_APP_NAME:Ljava/lang/String; = "running_app_name"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final INTENT_RUNNING_BAD_APP_LIST:Ljava/lang/String; = "com.htc.htcpowermanager.batterymonitor.RUNNING_BAD_APP_LIST"

.field private static final INTENT_UPDATE_BAD_APP_LIST:Ljava/lang/String; = "com.htc.htcpowermanager.batterymonitor.UPDATE_BAD_APP_LIST"

.field private static final MSG_INITIAL_IN_BACKGROUND:I = 0x1

.field private static final MSG_UPDATE_BAD_APP_LIST:I = 0x3

.field private static final MSG_UPDATE_BAD_RUNNING_PROCESSES_LIST:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mBadAppList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBadAppListReceiver:Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

.field private mContext:Landroid/content/Context;

.field private mLastBadRunningAppCount:I

.field private mLastBadRunningAppName:Ljava/lang/String;

.field private mNonUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/htc/server/HtcAppLifeCycleMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppListReceiver:Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppList:Ljava/util/Set;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/server/HtcAppLifeCycleMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcAppLifeCycleMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialBadAppList()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/HtcAppLifeCycleMonitor;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitor;->updateRunningProcess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/server/HtcAppLifeCycleMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcAppLifeCycleMonitor;->updateBadAppList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private dumpAppList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter "which"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    const-string v2, "appList is null"

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initialBadAppList()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "empty initialBadAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initialInBackground()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "initialInBackground(): non-ui handler is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initialInForground(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "initialInForground>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialNonUiHandler()V

    invoke-direct {p0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialReceiver()V

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "initialInForground<<"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initialNonUiHandler()V
    .locals 5

    .prologue
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitor;Lcom/htc/server/HtcAppLifeCycleMonitor$1;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private initialReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v1, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

    invoke-direct {v1, p0, v4}, Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitor;Lcom/htc/server/HtcAppLifeCycleMonitor$1;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppListReceiver:Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.htcpowermanager.batterymonitor.UPDATE_BAD_APP_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppListReceiver:Lcom/htc/server/HtcAppLifeCycleMonitor$BadAppListReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private notifyRunningAppChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "normalizeCount"
    .parameter "badRunningAppName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htcpowermanager.batterymonitor.RUNNING_BAD_APP_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, notifyIntent:Landroid/content/Intent;
    const-string v1, "running_app_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "running_app_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private removeMessages(I)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "removeMessages(): non-ui handler is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBadAppList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, addAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, deleteAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "updateBadAppList>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppList:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "updateBadAppList<<"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->updateRunningProcessInBackground(Landroid/os/Bundle;)V

    return-void
.end method

.method private updateRunningProcess(Landroid/os/Bundle;)V
    .locals 15
    .parameter "processInfo"

    .prologue
    iget-object v12, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppList:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-gtz v12, :cond_1

    sget-boolean v12, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v13, "no bad app."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v12, :cond_3

    :cond_2
    sget-object v12, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initialization is not finished. mContext: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mActivityManager: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, badRunningAppCount:I
    iget v5, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppCount:I

    .local v5, lastBadRunningAppCount:I
    iget-object v6, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppName:Ljava/lang/String;

    .local v6, lastBadRunningAppName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, badRunningAppName:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .local v9, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v10, ps:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v8, pkgList:[Ljava/lang/String;
    array-length v12, v8

    add-int/lit8 v4, v12, -0x1

    .local v4, j:I
    :goto_2
    if-ltz v4, :cond_5

    iget-object v12, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mBadAppList:Ljava/util/Set;

    aget-object v13, v8, v4

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    aget-object v1, v8, v4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x2

    if-lt v0, v12, :cond_9

    .end local v4           #j:I
    .end local v8           #pkgList:[Ljava/lang/String;
    .end local v10           #ps:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    const/4 v12, 0x2

    if-lt v0, v12, :cond_a

    const/4 v7, 0x2

    .local v7, normalizeCount:I
    :goto_3
    sub-int v2, v7, v5

    .local v2, countChanged:I
    if-eqz v2, :cond_b

    const/4 v11, 0x0

    .local v11, runningAppName:Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v7, v12, :cond_7

    move-object v11, v1

    :cond_7
    invoke-direct {p0, v7, v11}, Lcom/htc/server/HtcAppLifeCycleMonitor;->notifyRunningAppChanged(ILjava/lang/String;)V

    .end local v11           #runningAppName:Ljava/lang/String;
    :cond_8
    :goto_4
    iput v7, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppCount:I

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mLastBadRunningAppName:Ljava/lang/String;

    goto :goto_0

    .end local v2           #countChanged:I
    .end local v7           #normalizeCount:I
    .restart local v4       #j:I
    .restart local v8       #pkgList:[Ljava/lang/String;
    .restart local v10       #ps:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v4           #j:I
    .end local v8           #pkgList:[Ljava/lang/String;
    .end local v10           #ps:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_a
    move v7, v0

    goto :goto_3

    .restart local v2       #countChanged:I
    .restart local v7       #normalizeCount:I
    :cond_b
    const/4 v12, 0x1

    if-ne v7, v12, :cond_8

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-direct {p0, v7, v1}, Lcom/htc/server/HtcAppLifeCycleMonitor;->notifyRunningAppChanged(ILjava/lang/String;)V

    goto :goto_4
.end method

.method private updateRunningProcessInBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "processInfo"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitor;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    const-string v1, "onReceive(): non-ui handler is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialInForground(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->initialInBackground()V

    return-void
.end method

.method public onProcessChanged(IIZ)V
    .locals 4
    .parameter "pid"
    .parameter "uid"
    .parameter "alive"

    .prologue
    sget-boolean v1, Lcom/htc/server/HtcAppLifeCycleMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/server/HtcAppLifeCycleMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProcessChanged, pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", alive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "process_is_alive"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppLifeCycleMonitor;->updateRunningProcessInBackground(Landroid/os/Bundle;)V

    return-void
.end method
