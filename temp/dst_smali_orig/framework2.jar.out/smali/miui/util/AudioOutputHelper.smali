.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$AudioOutputClient;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, content:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, sessionId:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, pid:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 10
    .parameter "reader"
    .parameter
    .parameter
    .parameter "active"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p2, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, content:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v9, Lmiui/util/AudioOutputHelper$DUMP_TAG;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    return-object v1

    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, sessionId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, proc:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, pid:I
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, streamType:I
    const/4 v2, 0x0

    .local v2, found:Z
    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .local v0, c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget v9, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v9, v7, :cond_3

    iput-boolean p3, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    const/4 v2, 0x1

    goto :goto_1

    .end local v0           #c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_0

    new-instance v9, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v9, v7, v5, v8, p3}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .parameter
    .parameter "context"
    .parameter "addMainProc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .local v2, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, actives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .local v1, c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v8, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v8, :cond_2

    iget v6, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .local v6, pid:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v7, proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v6, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #pid:I
    .end local v7           #proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-eqz p2, :cond_0

    invoke-static {v0, p0}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .local v5, mainProc:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v3, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .local v6, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v7, v8

    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-object v7

    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v6       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, p0, v10}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .local v5, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v7, v8

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v4, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_6

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    move-object v7, v8

    goto :goto_0
.end method

.method private static getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, actives:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p1, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, mainProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v0, active:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, colonIndex:I
    if-lez v1, :cond_0

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, mainName:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #active:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1           #colonIndex:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5           #mainName:Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .local v0, processes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v0, 0x0

    .local v0, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    const-string v8, "/cache"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .local v4, pid:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .local v6, tid:J
    const/4 v2, 0x0

    .local v2, i:I
    new-instance v1, Ljava/io/File;

    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, dumpFile:Ljava/io/File;
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v1, Ljava/io/File;

    .end local v1           #dumpFile:Ljava/io/File;
    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dumpFile:Ljava/io/File;
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    :cond_1
    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v5

    .end local v1           #dumpFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v4           #pid:I
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v6           #tid:J
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .locals 18
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v7           #os:Ljava/io/FileOutputStream;
    .local v8, os:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v15, "media.audio_flinger"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .local v5, in:Ljava/io/InputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_2
    if-nez v5, :cond_3

    const/4 v2, 0x0

    :goto_3
    return-object v2

    .end local v5           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v15

    goto :goto_1

    :catch_2
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    :goto_5
    :try_start_6
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_1

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .end local v4           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_1

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_7
    if-eqz v7, :cond_2

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_2
    :goto_8
    throw v15

    .restart local v5       #in:Ljava/io/InputStream;
    :cond_3
    :try_start_b
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v9, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    const/4 v10, 0x0

    .local v10, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, standby:Z
    const/4 v3, 0x0

    .local v3, content:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, skipped:Ljava/lang/String;
    :cond_4
    :goto_9
    if-eqz v11, :cond_7

    move-object v3, v11

    const/4 v11, 0x0

    :cond_5
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_8

    if-nez v10, :cond_6

    new-instance v10, Ljava/util/HashMap;

    .end local v10           #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .restart local v10       #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    invoke-static {v9, v10}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v3

    if-nez v3, :cond_5

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    :catch_4
    move-exception v15

    goto :goto_3

    :cond_8
    :try_start_d
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .local v13, standbyMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_9

    :cond_9
    if-nez v12, :cond_4

    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .local v14, trackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v9, v2, v10, v15}, Lmiui/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_a
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, activeTrackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v9, v2, v10, v15}, Lmiui/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v11

    goto :goto_9

    .end local v1           #activeTrackMatcher:Ljava/util/regex/Matcher;
    .end local v2           #clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3           #content:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v10           #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11           #skipped:Ljava/lang/String;
    .end local v12           #standby:Z
    .end local v13           #standbyMatcher:Ljava/util/regex/Matcher;
    .end local v14           #trackMatcher:Ljava/util/regex/Matcher;
    :catch_5
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    :try_start_e
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :goto_b
    throw v15

    .end local v5           #in:Ljava/io/InputStream;
    :catch_6
    move-exception v16

    goto/16 :goto_8

    .restart local v5       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v16

    goto :goto_b

    .restart local v4       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v15

    goto :goto_a

    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v15

    goto/16 :goto_0

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v15

    goto/16 :goto_2

    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method
