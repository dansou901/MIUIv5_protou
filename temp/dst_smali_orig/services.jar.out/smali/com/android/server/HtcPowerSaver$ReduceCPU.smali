.class final Lcom/android/server/HtcPowerSaver$ReduceCPU;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReduceCPU"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "ReduceCPU"

    const-string v3, "powersaver_reduce_CPU"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.rdcpu"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initWakeLock()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x80

    const/4 v2, 0x4

    const-string v3, "PSaver_Freq"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mCpuFreqLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$HtcCpuCtrl;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: acquiring Ap Dvcs lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$600(Lcom/android/server/HtcPowerSaver;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->nativeAcquireCpuApDvcsWakeLock()V

    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: Ap Dvcs lock acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    .prologue
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: releasing Ap Dvcs lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$600(Lcom/android/server/HtcPowerSaver;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->nativeReleaseCpuApDvcsWakeLock()V

    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: Ap Dvcs lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
