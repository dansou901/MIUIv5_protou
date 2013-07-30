.class public Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.super Ljava/lang/Object;
.source "ActivityManagerServiceCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "task"
    .parameter "history"

    .prologue
    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0
    .parameter "process"
    .parameter "crashInfo"

    .prologue
    return-void
.end method

.method public onFinishBooting()V
    .locals 0

    .prologue
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .parameter "process"
    .parameter "pi"

    .prologue
    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "process"
    .parameter "condition"
    .parameter "activity"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "stackTrace"

    .prologue
    return-void
.end method

.method public onGoingToSleep()V
    .locals 0

    .prologue
    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onHibernate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .prologue
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 0
    .parameter "prev"
    .parameter "curr"

    .prologue
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "process"
    .parameter "info"

    .prologue
    return-void
.end method

.method public onWakingUp()V
    .locals 0

    .prologue
    return-void
.end method
