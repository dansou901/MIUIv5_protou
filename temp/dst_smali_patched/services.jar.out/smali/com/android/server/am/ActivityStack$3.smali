.class Lcom/android/server/am/ActivityStack$3;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "CpuWake"

    const-string v1, ">>nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeReleaseCpuPerfWakeLock()V

    const-string v0, "CpuWake"

    const-string v1, "<<nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_cpu_count:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    const-string v0, "CpuWake"

    const-string v1, ">>release mCpuPerf_cpu_count wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_cpu_count:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    const-string v0, "CpuWake"

    const-string v1, "<<release mCpuPerf_cpu_count wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_Freq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    const-string v0, "CpuWake"

    const-string v1, ">>release mCpuPerf_Freq wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_Freq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    const-string v0, "CpuWake"

    const-string v1, "<<release mCpuPerf_Freq wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    :cond_2
    return-void
.end method
