.class Lcom/android/server/ExtraAlarmManagerService;
.super Ljava/lang/Object;
.source "ExtraAlarmManagerService.java"


# static fields
.field private static final FIVE_MINUTES:J = 0x493e0L

.field private static final OFFSET:I

.field private static final PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

.field private static final UID_WHITE_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    .line 17
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.cts.app"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.cts.stub"

    aput-object v2, v0, v1

    const-string v1, "com.android.deskclock"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.miui.notes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.providers.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.chinamobile.cmccwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.chinamobile.cmccwifi.wlanservice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    return-void

    .line 17
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignInterval(IJ)J
    .locals 6
    .parameter "type"
    .parameter "interval"

    .prologue
    const-wide/32 v4, 0x493e0

    .line 48
    invoke-static {p0}, Lcom/android/server/ExtraAlarmManagerService;->checkUid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 49
    .restart local p1
    :cond_1
    rem-long v0, p1, v4

    .line 50
    .local v0, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 51
    sub-long v2, p1, v0

    add-long p1, v2, v4

    goto :goto_0
.end method

.method public static alignTriggerTime(IJ)J
    .locals 10
    .parameter "type"
    .parameter "triggerTime"

    .prologue
    const-wide/32 v8, 0x493e0

    .line 34
    invoke-static {p0}, Lcom/android/server/ExtraAlarmManagerService;->checkUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local p1
    :goto_0
    return-wide p1

    .line 35
    .restart local p1
    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 39
    .local v2, skew:J
    :goto_1
    add-long v4, p1, v2

    rem-long v0, v4, v8

    .line 40
    .local v0, offset:J
    sget v4, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 41
    sub-long v4, p1, v0

    sget v6, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long p1, v4, v8

    goto :goto_0

    .line 35
    .end local v0           #offset:J
    .end local v2           #skew:J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 43
    .restart local v0       #offset:J
    .restart local v2       #skew:J
    :cond_2
    sub-long v4, p1, v0

    sget v6, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v6, v6

    add-long p1, v4, v6

    goto :goto_0
.end method

.method private static checkUid(I)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    if-eqz p0, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v3

    .line 59
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 60
    .local v2, uid:I
    invoke-static {v2}, Lcom/android/server/ExtraAlarmManagerService;->inUidWhiteList(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    const-string v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 62
    .local v1, pm:Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, packages:[Ljava/lang/String;
    if-eqz v0, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/android/server/ExtraAlarmManagerService;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    .line 64
    goto :goto_0
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 78
    :goto_1
    return v1

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    .line 71
    :goto_1
    return v1

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
