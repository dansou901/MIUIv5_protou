.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 55
    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-static {p0}, Lmiui/util/ActivityManagerHelper;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, headIdx:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 45
    .local v6, receiverSize:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, name:Ljava/lang/String;
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 48
    .local v5, r:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 46
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 23
    :cond_0
    return-void
.end method

.method public static finishBooting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Lmiui/drm/DrmBroadcast;

    invoke-direct {v0, p0}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 78
    return-void
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "receiver"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, pkgName:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 60
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 61
    .restart local p0
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 62
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 63
    .local v1, rinfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 73
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 74
    return-void
.end method
