.class final Lcom/android/server/am/ActivityStack$CpuBooster;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CpuBooster"
.end annotation


# static fields
.field private static final BOOST_CPU_TIMEOUT:I = 0x3e8

.field private static final CPU_SCALING_SAMPLE_INTERVAL:I = 0x28


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "hdl"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mStartTime:J

    iput-object p1, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack$CpuBooster;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->next()V

    return-void
.end method

.method private boostable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currTime()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private next()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->boostable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->timeout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/os/Shell;->boostCpuPulse()Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityStack$CpuBooster$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$CpuBooster$1;-><init>(Lcom/android/server/am/ActivityStack$CpuBooster;)V

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->nextTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private nextTime()J
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->currTime()J

    move-result-wide v0

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private timeout()Z
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->currTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mStartTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->currTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster;->mStartTime:J

    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->reset()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack$CpuBooster;->next()V

    return-void
.end method
