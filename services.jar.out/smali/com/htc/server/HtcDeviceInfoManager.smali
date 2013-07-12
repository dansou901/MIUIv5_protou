.class public Lcom/htc/server/HtcDeviceInfoManager;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;,
        Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;,
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;,
        Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static sInstance:Lcom/htc/server/HtcDeviceInfoManager;

.field private static sSense:D


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z

    .line 1207
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    .line 1212
    const-wide/high16 v0, 0x400c

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    .line 1215
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 1216
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 5
    .parameter "file"
    .parameter "service"
    .parameter "context"

    .prologue
    .line 1218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1220
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1221
    iput-object p3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    .line 1223
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    if-nez v1, :cond_0

    .line 1224
    sput-object p0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    .line 1227
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    .line 1228
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 1229
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sense version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/htc/server/HtcDeviceInfoManager;->createScheduler(Landroid/content/Context;)V

    .line 1234
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "fail to parse sense version, keep default value (3.5)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    .line 68
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    return-wide v0
.end method

.method private createScheduler(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-nez v0, :cond_0

    .line 1193
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;

    invoke-direct {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1195
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Factory create HtcAdditionalInfoScheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1201
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    invoke-direct {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1202
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Factory create HtcCommonInfoScheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/htc/server/HtcDeviceInfoManager;
    .locals 1

    .prologue
    .line 1237
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    return-object v0
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 1
    .parameter "processName"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addANR(Ljava/lang/String;)V

    .line 1340
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 1
    .parameter "processName"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addCrash(Ljava/lang/String;)V

    .line 1335
    :cond_0
    return-void
.end method

.method addSysCrash()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addSysCrash()V

    .line 1345
    :cond_0
    return-void
.end method

.method appDied(I)V
    .locals 1
    .parameter "pid"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->appDied(I)V

    .line 1282
    :cond_0
    return-void
.end method

.method flush()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->flush()V

    .line 1310
    :cond_0
    return-void
.end method

.method public getAppAliveTime(Ljava/lang/String;)J
    .locals 2
    .parameter "processName"

    .prologue
    .line 1267
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDeviceAliveTime()J
    .locals 2

    .prologue
    .line 1258
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDeviceInfo()Landroid/app/HtcDeviceInfo;
    .locals 1

    .prologue
    .line 1250
    const/4 v0, 0x0

    return-object v0
.end method

.method killAllProcess()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->killAllProcess()V

    .line 1330
    :cond_0
    return-void
.end method

.method killProcess(Ljava/lang/String;)V
    .locals 1
    .parameter "processName"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->killProcess(Ljava/lang/String;)V

    .line 1325
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->reset()V

    .line 1300
    :cond_0
    return-void
.end method

.method setNewTopApp(Ljava/lang/String;)V
    .locals 1
    .parameter "topProcessName"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->setNewTopApp(Ljava/lang/String;)V

    .line 1315
    :cond_0
    return-void
.end method

.method setup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->setup(Landroid/content/Context;)V

    .line 1243
    :cond_0
    return-void
.end method

.method startProcess(Ljava/lang/String;II)V
    .locals 1
    .parameter "processName"
    .parameter "pid"
    .parameter "group"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->startProcess(Ljava/lang/String;II)V

    .line 1320
    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->stop()V

    .line 1295
    :cond_0
    return-void
.end method

.method public synchronizedFlush()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->synchronizedFlush()V

    .line 1290
    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .parameter "processName"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->update(Ljava/lang/String;)V

    .line 1305
    :cond_0
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->userActivity(J)V

    .line 1277
    :cond_0
    return-void
.end method
