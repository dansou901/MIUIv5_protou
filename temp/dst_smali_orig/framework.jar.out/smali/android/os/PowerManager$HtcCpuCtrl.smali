.class public Landroid/os/PowerManager$HtcCpuCtrl;
.super Landroid/os/PowerManager$WakeLock;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcCpuCtrl"
.end annotation


# instance fields
.field private mLevel:I

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "flags"
    .parameter "level"
    .parameter "tag"

    .prologue
    iput-object p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0, p1, p2, p4}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    iput p3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    return-void
.end method

.method private acquireLevelLocked(I)V
    .locals 6
    .parameter "level"

    .prologue
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->acquireLevelWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
