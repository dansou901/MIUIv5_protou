.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# static fields
.field public static final IS_LITE_SENSE:Z

.field static sCpuMaxFreq:J

.field static sTotalRamSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/HtcAmsUtil;->IS_LITE_SENSE:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCpuMaxFreq()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    .local v0, SINGLE_LONG_FORMAT:[I
    new-array v1, v7, [J

    .local v1, longOut:[J
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    return-wide v2
.end method

.method static getMaxHiddenAppsCount()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    sget v2, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    .local v2, result:I
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getTotalRamSize()I

    move-result v3

    .local v3, totalRam:I
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "totalRamStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->isHighResolution()Z

    move-result v0

    .local v0, bIsHighResolution:Z
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bIsHighResolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "customize_max_hidden_apps"

    sget v5, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, customizeMaxHiddenApps:I
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customizeMaxHiddenApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    if-eq v1, v4, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_HIDDEN_APPS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-eq v3, v7, :cond_3

    const/16 v4, 0x200

    if-gt v3, v4, :cond_3

    if-eqz v0, :cond_2

    const/16 v2, 0xa

    :goto_1
    goto :goto_0

    :cond_2
    const/16 v2, 0xf

    goto :goto_1

    :cond_3
    if-eq v3, v7, :cond_0

    const/16 v4, 0x800

    if-lt v3, v4, :cond_0

    const/16 v2, 0x14

    goto :goto_0
.end method

.method static getProcessNameFromPid(ILcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .locals 3
    .parameter "myPid"
    .parameter "service"

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit p1

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v2

    .restart local v0       #app:Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p1

    goto :goto_1

    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getTotalRamSize()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    const-string v2, "ro.product.ram"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, size:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, unitIndex:I
    if-eqz v0, :cond_0

    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    sput v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    :cond_0
    :goto_0
    sget v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    return v2

    :cond_1
    const-string v2, "MB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    goto :goto_0
.end method

.method static isHighResolution()Z
    .locals 6

    .prologue
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, size:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    .local v2, value:I
    :goto_0
    const-string v3, "ProcessList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .end local v2           #value:I
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .restart local v2       #value:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static resolveActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ActivityInfo;
    .locals 5
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v4

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v0

    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v2       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method
