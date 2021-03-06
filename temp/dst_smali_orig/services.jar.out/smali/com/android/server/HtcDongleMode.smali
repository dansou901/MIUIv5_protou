.class final Lcom/android/server/HtcDongleMode;
.super Ljava/lang/Object;
.source "HtcDongleMode.java"


# instance fields
.field private final ACTION_DONGLE_OFF:Ljava/lang/String;

.field private final ACTION_DONGLE_ON:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final DEBUG_ON:Z

.field private final DONGLE_MODE_TIMEOUT:I

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDongleMode:Z

.field private final mDongleModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mDongleModeTimeoutTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 3
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "HtcDongleMode"

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcDongleMode;->MASTER_ENABLE:Z

    const-string v1, "com.android.server.HtcDongleMode."

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->ACTION_PREFIX:Ljava/lang/String;

    const-string v1, "com.android.server.HtcDongleMode.ON"

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->ACTION_DONGLE_ON:Ljava/lang/String;

    const-string v1, "com.android.server.HtcDongleMode.OFF"

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->ACTION_DONGLE_OFF:Ljava/lang/String;

    const v1, 0xea60

    iput v1, p0, Lcom/android/server/HtcDongleMode;->DONGLE_MODE_TIMEOUT:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    new-instance v1, Lcom/android/server/HtcDongleMode$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcDongleMode$1;-><init>(Lcom/android/server/HtcDongleMode;)V

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->mDongleModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/HtcDongleMode$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcDongleMode$2;-><init>(Lcom/android/server/HtcDongleMode;)V

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/HtcDongleMode;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcDongleMode"

    const-string v2, "Constructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/HtcDongleMode;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/HtcDongleMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcDongleMode;->mDongleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcDongleMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcDongleMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V

    return-void
.end method

.method private enableDongleMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    iget-boolean v1, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    if-eq p1, v1, :cond_3

    const/4 v0, 0x1

    .local v0, statusChange:Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    iget-object v1, p0, Lcom/android/server/HtcDongleMode;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    iget-boolean v2, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->enableDongleMode(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcDongleMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDongleMode: mDongleMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .end local v0           #statusChange:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getCtrlWakeLockState(Ljava/lang/String;II)I
    .locals 3
    .parameter "tag"
    .parameter "state"
    .parameter "SCREEN_BRIGHT_BIT"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcDongleMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Remove bit."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr p2, v0

    .end local p2
    :cond_1
    return p2
.end method

.method protected isDongleMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcDongleMode;->mDongleMode:Z

    return v0
.end method
