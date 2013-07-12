.class Lcom/android/server/wm/WindowManagerService$PolicyThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/PowerManagerService;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mRunning:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter "policy"
    .parameter "service"
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 1085
    const-string v0, "WindowManagerPolicy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z

    .line 1086
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 1087
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1088
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    .line 1089
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 1090
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1094
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1095
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 1099
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1101
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V

    .line 1104
    monitor-enter p0

    .line 1105
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z

    .line 1106
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "WindowManager"

    const-string v1, "Enabled StrictMode for PolicyThread\'s Looper"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1115
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
