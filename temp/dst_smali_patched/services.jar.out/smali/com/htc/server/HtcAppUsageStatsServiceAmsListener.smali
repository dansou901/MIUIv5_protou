.class public Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAppUsageStatsServiceAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcAppUsageStats"


# instance fields
.field mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct {v0}, Lcom/htc/server/HtcAppUsageStatsService;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    goto :goto_0
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    :cond_0
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    :cond_0
    return-void
.end method

.method getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "task"
    .parameter "history"

    .prologue
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    new-instance v3, Lcom/android/server/am/HtcWrapActivityRecord;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    .local v3, top:Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    iget-object v4, v4, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v5, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-virtual {v4, v5}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    .local v1, prev:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    .local v0, curr:Ljava/lang/String;
    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    .end local v0           #curr:Ljava/lang/String;
    .end local v1           #prev:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #top:Lcom/android/server/am/HtcWrapActivityRecord;
    :cond_0
    :goto_0
    return-void

    .restart local v2       #size:I
    :cond_1
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    goto :goto_0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->noteAppDied(I)V

    :cond_0
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, data:Landroid/net/Uri;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcAppUsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, removedPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, replacing:Z
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .local v4, ssp:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, intentExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcAppUsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppUsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removedPackageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4, v2}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #data:Landroid/net/Uri;
    .end local v1           #intentExtras:Landroid/os/Bundle;
    .end local v2           #removedPackageName:Ljava/lang/String;
    .end local v3           #replacing:Z
    .end local v4           #ssp:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_3

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #data:Landroid/net/Uri;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_5

    const-string v5, "HtcAppUsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #ssp:Ljava/lang/String;
    if-eqz v4, :cond_3

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_6

    const-string v5, "HtcAppUsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageAdded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHibernate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .parameter "service"
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p2}, Lcom/htc/server/HtcAppUsageStatsService;->publish(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 4
    .parameter "prev"
    .parameter "curr"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    .local v1, prevLabel:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    .local v0, currLabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v3, p2, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/htc/server/HtcAppUsageStatsService;->changeRootActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/HtcWrapTaskRecord;)V

    :cond_0
    return-void
.end method
