.class public Lcom/htc/server/HtcAppLifeCycleMonitorListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAppLifeCycleMonitorListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;,
        Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final DEBUG_ONLY:Z = false

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_CHECK_APP_START:I = 0x2

.field private static final MSG_CHECK_APP_STOP:I = 0x3

.field private static final MSG_ON_INIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppLifeCycleMonitorListener"


# instance fields
.field private final SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

.field private UID_CHECK_RANGE:I

.field mContext:Landroid/content/Context;

.field private mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

.field private mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

.field private mWorkingThread:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

.field private m_nCurrentPid:I

.field private m_nCurrentUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    const-string v0, "persist.htc.wlm.uid.range"

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mWorkingThread:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iput-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

    iput v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->m_nCurrentUid:I

    iput v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->m_nCurrentPid:I

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "HtcAppLifeCycleMonitorListener contructor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

    const-string v1, "HtcAppLifeCycleMonitorListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitorListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mWorkingThread:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mWorkingThread:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;->start()V

    new-instance v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mWorkingThread:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;

    invoke-virtual {v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitorListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    new-instance v0, Lcom/htc/server/HtcAppLifeCycleMonitor;

    invoke-direct {v0}, Lcom/htc/server/HtcAppLifeCycleMonitor;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcAppLifeCycleMonitorListener;)Lcom/htc/server/HtcAppLifeCycleMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    return v0
.end method

.method private readSysProp()V
    .locals 5

    .prologue
    iget v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    .local v1, old_uid_check_range:I
    :try_start_0
    const-string v2, "persist.htc.wlm.uid.range"

    iget v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcAppLifeCycleMonitorListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSysProp : UID_CHECK_RANGE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAppLifeCycleMonitorListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldNoteApp(Lcom/android/server/am/HtcWrapProcessRecord;)Z
    .locals 4
    .parameter "process"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAppLifeCycleMonitorListener"

    const-string v2, "process is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    iget v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    if-ge v1, v2, :cond_2

    sget-boolean v1, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAppLifeCycleMonitorListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->UID_CHECK_RANGE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .parameter "process"

    .prologue
    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onAppDiedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->shouldNoteApp(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .parameter "process"

    .prologue
    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onAttachApplicationLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->shouldNoteApp(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onFinishBooting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onMain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onMain context = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->readSysProp()V

    :cond_2
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .parameter "process"

    .prologue
    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppLifeCycleMonitorListener"

    const-string v1, "Call onRemoveProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->shouldNoteApp(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHandler:Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method updateProcessChanged(Lcom/android/server/am/HtcWrapProcessRecord;Z)V
    .locals 5
    .parameter "topApp"
    .parameter "alive"

    .prologue
    const/4 v1, -0x1

    .local v1, newUid:I
    const/4 v0, -0x1

    .local v0, newPid:I
    if-nez p1, :cond_1

    sget-boolean v2, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAppLifeCycleMonitorListener"

    const-string v3, "topApp is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    iget v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    iput v1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->m_nCurrentUid:I

    iput v0, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->m_nCurrentPid:I

    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "HtcAppLifeCycleMonitorListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call onProcessChanged alive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener;->mHtcAppLifeCycleMonitor:Lcom/htc/server/HtcAppLifeCycleMonitor;

    invoke-virtual {v2, v0, v1, p2}, Lcom/htc/server/HtcAppLifeCycleMonitor;->onProcessChanged(IIZ)V

    goto :goto_0
.end method
