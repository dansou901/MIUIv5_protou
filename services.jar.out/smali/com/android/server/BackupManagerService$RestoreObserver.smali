.class Lcom/android/server/BackupManagerService$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field sets:[Landroid/app/backup/RestoreSet;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 6393
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 6395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .parameter "nowBeingRestored"
    .parameter "currentPackage"

    .prologue
    .line 6410
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6411
    :cond_0
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 6414
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6415
    monitor-enter p0

    .line 6416
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->done:Z

    .line 6417
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6418
    monitor-exit p0

    .line 6419
    return-void

    .line 6418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 6398
    monitor-enter p0

    .line 6399
    :try_start_0
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    .line 6400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->done:Z

    .line 6401
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6402
    monitor-exit p0

    .line 6403
    return-void

    .line 6402
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreStarting(I)V
    .locals 3
    .parameter "numPackages"

    .prologue
    .line 6406
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    :cond_0
    return-void
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 6424
    monitor-enter p0

    .line 6425
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6427
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6428
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6431
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$RestoreObserver;->done:Z

    .line 6432
    monitor-exit p0

    .line 6433
    return-void

    .line 6432
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
