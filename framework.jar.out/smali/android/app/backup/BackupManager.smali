.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 70
    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 113
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 114
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public BackupRestoreForExternalTransport(Ljava/lang/String;ZJ[Ljava/lang/String;)Z
    .locals 8
    .parameter "name"
    .parameter "action"
    .parameter "token"
    .parameter "packages"

    .prologue
    .line 291
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 292
    const/4 v7, 0x0

    .line 293
    .local v7, result:Z
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->BackupRestoreForExternalTransport(Ljava/lang/String;ZJ[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 300
    :cond_0
    :goto_0
    return v7

    .line 296
    :catch_0
    move-exception v6

    .line 297
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BackupManager"

    const-string v1, "BackupRestoreForExternalTransport couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public BackupStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, result:Ljava/lang/String;
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 313
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->BackupStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BackupManager"

    const-string v3, "BackupStatus couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 7

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, session:Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 172
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_0

    .line 175
    :try_start_0
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 176
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    .line 177
    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #session:Landroid/app/backup/RestoreSession;
    .local v3, session:Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .line 183
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v2       #session:Landroid/app/backup/RestoreSession;
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BackupManager"

    const-string v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearBackupDataByTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "transportname"

    .prologue
    .line 326
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 327
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->clearBackupDataByTransport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "clearBackupDataByTransport couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dataChanged()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 92
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "transport"

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, obj:Landroid/content/Intent;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 222
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 224
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    .end local v1           #obj:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 225
    .restart local v1       #obj:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getConfigurationIntent[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, str:Ljava/lang/String;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 235
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 237
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 238
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getCurrentTransport[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "transport"

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, str:Ljava/lang/String;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 248
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 251
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getDestinationString[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerExternalTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packagename"
    .parameter "servicename"

    .prologue
    .line 269
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 270
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->registerExternalTransport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "registerExternalTransport couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 8
    .parameter "observer"

    .prologue
    .line 142
    const/4 v2, -0x1

    .line 143
    .local v2, result:I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 144
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_1

    .line 145
    const/4 v3, 0x0

    .line 147
    .local v3, session:Landroid/app/backup/RestoreSession;
    :try_start_0
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 149
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    .line 150
    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .local v4, session:Landroid/app/backup/RestoreSession;
    :try_start_1
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move-object v3, v4

    .line 156
    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    :cond_0
    if-eqz v3, :cond_1

    .line 157
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 161
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    :cond_1
    return v2

    .line 153
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v5, "BackupManager"

    const-string/jumbo v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 156
    :cond_2
    throw v5

    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v0       #binder:Landroid/app/backup/IRestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_2

    .line 153
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_1
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .parameter "doAutoRestore"

    .prologue
    .line 187
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 188
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackupEnabled(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 198
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 199
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackupProvisioned(Z)V
    .locals 3
    .parameter "isProvisioned"

    .prologue
    .line 209
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 210
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupProvisioned[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
