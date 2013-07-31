.class Lcom/htc/server/HtcDebugInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcDebugInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;,
        Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final COL_SC_APPNAME:Ljava/lang/String; = "title"

.field private static final COL_SC_INTENT:Ljava/lang/String; = "intent"

.field private static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field private static final DB_SHORTCUT_LIST:Ljava/lang/String; = "launcher_bar"

.field private static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final TELLHTC_CLIENT_BG_MODE_APPID:Ljava/lang/String; = "tellhtc_client_bg_mode"

.field private static final TELLHTC_CLIENT_BG_MODE_ENABLE_KEY:Ljava/lang/String; = "enable"

.field private static final UI_MODE:Ljava/lang/String; = "ui_mode"

.field private static final URI_SHORTCUT_LIST:Landroid/net/Uri; = null

.field private static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri; = null

.field private static final mDebugInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_debug"


# instance fields
.field private keyguardManager:Landroid/app/KeyguardManager;

.field private final mContext:Landroid/content/Context;

.field private mForegroundProcess:Ljava/lang/String;

.field private mLastForegroundUpdateTime:J

.field private mProcessInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/os/ProcessStats;

.field private mScreenOn:Z

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.htc.launcher.settings/launcher_bar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.htc.launcher.settings/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    .line 65
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcDebugInfoOperator;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/PowerManager;Landroid/content/Context;)V
    .locals 3
    .parameter "pm"
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 84
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcDebugInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 85
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 89
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 91
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 94
    :cond_1
    iput-object p2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/app/KeyguardManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/server/HtcDebugInfoOperator;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutVisibility(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 448
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    .line 449
    return-object v0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 617
    const/4 v1, -0x1

    .line 618
    .local v1, index:I
    const/4 v2, -0x1

    .line 619
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 620
    if-ltz v1, :cond_0

    .line 622
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 629
    :goto_0
    return v2

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 668
    const/4 v1, -0x1

    .line 669
    .local v1, index:I
    const/4 v2, 0x0

    .line 670
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 671
    if-ltz v1, :cond_0

    .line 673
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 680
    :goto_0
    return-object v2

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 633
    if-nez p1, :cond_0

    .line 634
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-object v2

    .line 637
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 638
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v12, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;>;"
    :try_start_0
    const-string v6, ""

    .local v6, appName:Ljava/lang/String;
    const-string v7, ""

    .local v7, className:Ljava/lang/String;
    const-string v10, ""

    .line 641
    .local v10, intentRes:Ljava/lang/String;
    const/4 v11, 0x0

    .line 642
    .local v11, shortIntent:Landroid/content/Intent;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    :cond_1
    const-string v0, "title"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    const-string v0, "intent"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 646
    if-eqz v10, :cond_2

    .line 647
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 648
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 651
    :cond_2
    new-instance v0, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;

    invoke-direct {v0, v7, v6}, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_3
    if-eqz v8, :cond_5

    .line 660
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 661
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    .end local v10           #intentRes:Ljava/lang/String;
    .end local v11           #shortIntent:Landroid/content/Intent;
    :cond_4
    :goto_1
    const/4 v8, 0x0

    :cond_5
    move-object v2, v12

    .line 664
    goto/16 :goto_0

    .line 656
    :catch_0
    move-exception v9

    .line 657
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    if-eqz v8, :cond_5

    .line 660
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 659
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 660
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_6
    const/4 v8, 0x0

    .line 659
    :cond_7
    throw v0
.end method

.method private getShortcutVisibility(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 595
    if-nez p1, :cond_0

    .line 596
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_0
    return v9

    .line 599
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 602
    .local v8, visible:Z
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const-string v0, "shortcut_visibility"

    invoke-direct {p0, v6, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 608
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_2
    :goto_2
    const/4 v6, 0x0

    :cond_3
    move v9, v8

    .line 613
    goto :goto_0

    :cond_4
    move v8, v9

    .line 603
    goto :goto_1

    .line 605
    :catch_0
    move-exception v7

    .line 606
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    if-eqz v6, :cond_3

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 608
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_5
    const/4 v6, 0x0

    .line 608
    :cond_6
    throw v0
.end method

.method private getSimState()I
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 177
    :cond_0
    return v0
.end method

.method private getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;
    .locals 3
    .parameter "context"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Client statistic: context null, getWeatherRes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 441
    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    .line 442
    .local v0, mStateResources:Lcom/htc/weather/StateResources;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateTimeInfo(Ljava/lang/String;)V
    .locals 14
    .parameter "processName"

    .prologue
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 107
    .local v8, now:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    .line 108
    .local v3, duration:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 109
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 111
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 112
    .local v7, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 113
    .local v6, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 115
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 117
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 118
    .local v1, CPUTime:J
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 119
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    .line 120
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 122
    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 140
    .end local v1           #CPUTime:J
    :goto_1
    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 141
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    .line 142
    if-eqz v6, :cond_2

    .line 143
    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 145
    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 123
    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 125
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 126
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    .line 127
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 129
    :cond_4
    iput-wide v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    goto :goto_1

    .line 132
    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 133
    .restart local v1       #CPUTime:J
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    .line 134
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    .line 135
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 137
    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 148
    .end local v1           #CPUTime:J
    .end local v6           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_7
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 151
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 154
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 155
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 156
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 159
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_CRASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 162
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 163
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 164
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 165
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v2

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKernelCrash()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method addRadioCrash()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method addSentErrorCount(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 103
    return-void
.end method

.method addSystemCrash()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method flush()V
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, enableUB:Ljava/lang/String;
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FLUSH, enableUB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "FLUSH, file path = /data/system/deviceinfo_debug"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->getSimState()I

    move-result v3

    iput v3, v2, Landroid/app/HtcDeviceInfo;->simState:I

    .line 188
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v3}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 189
    .local v0, diffInfo:Landroid/app/HtcDeviceInfo;
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logLocationInfo()V

    .line 190
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logStatusbarInfo()V

    .line 191
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logWallpaperInfo()V

    .line 192
    sget-wide v2, Lcom/htc/server/HtcDebugInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    .line 193
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 195
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v4, "/data/system/deviceinfo_debug"

    invoke-virtual {v2, v4}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 196
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 199
    .end local v0           #diffInfo:Landroid/app/HtcDeviceInfo;
    :cond_0
    return-void

    .line 196
    .restart local v0       #diffInfo:Landroid/app/HtcDeviceInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method flushClientStatistic()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method flushUsageTime()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 4
    .parameter "processName"

    .prologue
    .line 313
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 315
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 316
    iget-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    monitor-exit v3

    .line 319
    :goto_0
    return-wide v1

    .line 318
    :cond_0
    monitor-exit v3

    .line 319
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 318
    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method killAllProc()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 265
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "KILL_ALL_PROC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    const/4 v0, 0x0

    .line 269
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 271
    .restart local v0       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 272
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 273
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 5
    .parameter "processName"

    .prologue
    const/4 v4, -0x1

    .line 249
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL_PROC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 251
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 254
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 255
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit v2

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logHWInfoTime()V
    .locals 4

    .prologue
    .line 377
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, enableUB:Ljava/lang/String;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLUSH, enableUB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 382
    :cond_0
    return-void
.end method

.method logInstalledApp()V
    .locals 12

    .prologue
    .line 323
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, enableUB:Ljava/lang/String;
    const-string v9, "HtcDeviceInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FLUSH, enableUB = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v9, "1"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 326
    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 327
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "Client statistic: context null, logInstalledApp"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v7, plainText:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 334
    .local v8, pm:Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 338
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 340
    .local v0, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, j:I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 342
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, label:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .end local v6           #label:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 348
    const/4 v9, 0x0

    const-string v10, ";"

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    .local v1, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_4

    .line 353
    sget-object v9, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v9, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :cond_4
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "encrypt exception"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 358
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    const/4 v7, 0x0

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 361
    .end local v0           #aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #cipherText:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #j:I
    :catch_1
    move-exception v2

    .line 362
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "logInstalledApp fail"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method logLocationInfo()V
    .locals 17

    .prologue
    .line 385
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, enableUB:Ljava/lang/String;
    const-string v14, "HtcDeviceInfoManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FLUSH, enableUB = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v14, "1"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v14, :cond_1

    .line 389
    const-string v14, "HtcDeviceInfoManager"

    const-string v15, "Client statistic: context null, logLocationInfo"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string v13, "unknown"

    .local v13, weather:Ljava/lang/String;
    const-string v7, "unknown"

    .local v7, location:Ljava/lang/String;
    const-string v2, "unknown"

    .local v2, city:Ljava/lang/String;
    const-string v8, "unknown"

    .local v8, network:Ljava/lang/String;
    const-string v12, "unknown"

    .line 394
    .local v12, time:Ljava/lang/String;
    :try_start_0
    const-string v14, "gsm.operator.alpha"

    const-string v15, "unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDebugInfoOperator;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v10

    .line 396
    .local v10, req:Lcom/htc/util/weather/WSPRequest;
    if-eqz v10, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v14, v10}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v3

    .line 398
    .local v3, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v3, :cond_4

    .line 399
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/server/HtcDebugInfoOperator;->getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;

    move-result-object v11

    .line 401
    .local v11, res:Lcom/htc/weather/StateResources;
    if-eqz v11, :cond_6

    .line 402
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 403
    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 404
    const-string v13, "unknown"

    .line 409
    .end local v11           #res:Lcom/htc/weather/StateResources;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 410
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    :cond_3
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 413
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 421
    .end local v3           #data:Lcom/htc/util/weather/WSPPData;
    .end local v10           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_4
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 422
    .local v9, plainText:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 424
    .local v1, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_5

    .line 426
    sget-object v14, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v14, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 407
    .end local v1           #cipherText:Ljava/lang/String;
    .end local v9           #plainText:Ljava/lang/StringBuilder;
    .restart local v3       #data:Lcom/htc/util/weather/WSPPData;
    .restart local v10       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v11       #res:Lcom/htc/weather/StateResources;
    :cond_6
    :try_start_2
    const-string v13, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 417
    .end local v3           #data:Lcom/htc/util/weather/WSPPData;
    .end local v10           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v11           #res:Lcom/htc/weather/StateResources;
    :catch_0
    move-exception v6

    .line 418
    .local v6, ex:Ljava/lang/Exception;
    const-string v14, "HtcDeviceInfoManager"

    const-string v15, "logLocationInfo occures exception"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 428
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v1       #cipherText:Ljava/lang/String;
    .restart local v9       #plainText:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .line 429
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    const-string v14, "HtcDeviceInfoManager"

    const-string v15, "encrypt exception"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 431
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    const/4 v9, 0x0

    throw v14
.end method

.method logLockscreenShortcutInfo()V
    .locals 6

    .prologue
    .line 544
    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, enableUB:Ljava/lang/String;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLUSH, enableUB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 548
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "Client statistic: context null, logLockscreenShortcutInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v1           #enableUB:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v1       #enableUB:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v2

    .line 552
    .local v2, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v3, Lcom/htc/server/HtcDebugInfoOperator$2;

    invoke-direct {v3, p0}, Lcom/htc/server/HtcDebugInfoOperator$2;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1           #enableUB:Ljava/lang/String;
    .end local v2           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "logLockscreenShortcutInfo exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logSWInfoTime()V
    .locals 4

    .prologue
    .line 369
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, enableUB:Ljava/lang/String;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLUSH, enableUB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method logStatusbarInfo()V
    .locals 6

    .prologue
    .line 454
    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, enableUB:Ljava/lang/String;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLUSH, enableUB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v2

    .line 458
    .local v2, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v3, Lcom/htc/server/HtcDebugInfoOperator$1;

    invoke-direct {v3, p0}, Lcom/htc/server/HtcDebugInfoOperator$1;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v1           #enableUB:Ljava/lang/String;
    .end local v2           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "logStatusbarInfo exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logWallpaperInfo()V
    .locals 10

    .prologue
    .line 501
    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, enableUB:Ljava/lang/String;
    const-string v7, "HtcDeviceInfoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FLUSH, enableUB = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 504
    iget-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 505
    const-string v7, "HtcDeviceInfoManager"

    const-string v8, "Client statistic: context null, logWallpaperInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v2           #enableUB:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 508
    .restart local v2       #enableUB:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v6, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 510
    .local v0, cipherText:Ljava/lang/String;
    const/4 v4, 0x0

    .line 511
    .local v4, mWallpaperComponent:Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 512
    .local v5, mWallpaperInfo:Landroid/app/WallpaperInfo;
    iget-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 514
    iget-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 515
    iget-object v7, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 516
    .local v3, label:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 517
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v3           #label:Ljava/lang/CharSequence;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_2

    .line 529
    sget-object v7, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v7, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :cond_2
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 520
    .restart local v3       #label:Ljava/lang/CharSequence;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Default"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 537
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v2           #enableUB:Ljava/lang/String;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #mWallpaperComponent:Landroid/content/ComponentName;
    .end local v5           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v6           #plainText:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "HtcDeviceInfoManager"

    const-string v8, "logWallpaperInfo exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 523
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v2       #enableUB:Ljava/lang/String;
    .restart local v4       #mWallpaperComponent:Landroid/content/ComponentName;
    .restart local v5       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v6       #plainText:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_3
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #mWallpaperComponent:Landroid/content/ComponentName;
    const-string v7, "android"

    const-string v8, "ImageWallpaper"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .restart local v4       #mWallpaperComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Default"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 531
    :catch_1
    move-exception v1

    .line 532
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v7, "HtcDeviceInfoManager"

    const-string v8, "logWallpaperInfo exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 534
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const/4 v6, 0x0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "RESET "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-super {p0}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 283
    return-void
.end method

.method screenOff()V
    .locals 8

    .prologue
    .line 301
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_OFF pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    .local v2, now_off:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 305
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 307
    .end local v0           #duration:J
    .end local v2           #now_off:J
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 308
    return-void

    .line 301
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method screenOn()V
    .locals 8

    .prologue
    .line 288
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_ON pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 290
    .local v2, now_on:J
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 291
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 292
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 294
    .end local v0           #duration:J
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 295
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 296
    return-void

    .line 288
    .end local v2           #now_on:J
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method setTop(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 211
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 213
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 214
    return-void
.end method

.method setUIMode(Ljava/lang/String;)V
    .locals 4
    .parameter "uiMode"

    .prologue
    .line 719
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUIMode, ui_mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v0, ""

    .line 721
    .local v0, UBSwitch:Ljava/lang/String;
    const-string v1, "background"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    const-string v0, "0"

    .line 725
    :goto_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setUIMode(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 727
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUIMode, ui_mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UBSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 724
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method startProc(IILjava/lang/String;)V
    .locals 7
    .parameter "pid"
    .parameter "group"
    .parameter "processName"

    .prologue
    const-wide/16 v4, 0x0

    .line 219
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 220
    .local v1, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v1, :cond_1

    .line 221
    new-instance v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v1}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 222
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 223
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 224
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 225
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 226
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_0
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v1, v0

    .line 234
    if-eqz v1, :cond_0

    .line 235
    const-string v3, "HtcDeviceInfoManager"

    const-string v5, "process info already exist. why?"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    new-instance v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_1
    iput-object p3, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 239
    iput p1, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 240
    iput p2, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 241
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 242
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    return-void

    .line 228
    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_1
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 229
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 230
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v2       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto :goto_1
.end method

.method update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 203
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method updatePolicy()V
    .locals 8

    .prologue
    .line 731
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    const-string v5, "HtcDeviceInfoManager"

    const-string v6, "updatePolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getUIMode()Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, uiMode:Ljava/lang/String;
    const-string v5, "background"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    const-string v0, ""

    .line 736
    .local v0, UBSwitch:Ljava/lang/String;
    new-instance v2, Lcom/htc/utils/ulog/UPolicy;

    const-string v5, "tellhtc_client_bg_mode"

    invoke-direct {v2, v5}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 737
    .local v2, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v5, "error_report"

    const-string v6, "enable"

    invoke-virtual {v2, v5, v6}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, error_report:Ljava/lang/String;
    const-string v5, "usage_report"

    const-string v6, "enable"

    invoke-virtual {v2, v5, v6}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, usage_report:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 740
    :cond_0
    const-string v0, "1"

    .line 743
    :goto_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 744
    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eng+Bg mode: error_report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", usage_report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", UBSwitch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .end local v0           #UBSwitch:Ljava/lang/String;
    .end local v1           #error_report:Ljava/lang/String;
    .end local v2           #policy:Lcom/htc/utils/ulog/UPolicy;
    .end local v3           #uiMode:Ljava/lang/String;
    .end local v4           #usage_report:Ljava/lang/String;
    :cond_1
    return-void

    .line 742
    .restart local v0       #UBSwitch:Ljava/lang/String;
    .restart local v1       #error_report:Ljava/lang/String;
    .restart local v2       #policy:Lcom/htc/utils/ulog/UPolicy;
    .restart local v3       #uiMode:Ljava/lang/String;
    .restart local v4       #usage_report:Ljava/lang/String;
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method
