.class final Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
.super Ljava/lang/Object;
.source "HtcDebugInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDebugInfoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadUtil"
.end annotation


# static fields
.field private static sThreadHandlerUtiil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;


# instance fields
.field private mHThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreadUtil"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    .locals 2

    .prologue
    const-class v1, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    invoke-direct {v0}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;-><init>()V

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    :cond_0
    sget-object v0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->sThreadHandlerUtiil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
