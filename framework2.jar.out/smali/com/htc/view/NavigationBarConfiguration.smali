.class public Lcom/htc/view/NavigationBarConfiguration;
.super Ljava/lang/Object;
.source "NavigationBarConfiguration.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEBUG_NAV_BAR:Z = false

.field private static final PROP_DEBUG_NAVI_BAR:Ljava/lang/String; = "debug_nav_bar"

.field private static final TAG:Ljava/lang/String; = "NavigationBarConfiguration"

.field private static final WVGA_HEIGHT:I = 0x320

.field private static final WVGA_WIDTH:I = 0x1e0

.field private static volatile mIsLessEqualWVGA:Ljava/lang/Boolean;

.field public static final sNavigationBarBlackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "debug_nav_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.google.android.apps.books"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.google.android.apps.maps"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.google.android.location"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.google.android.youtube"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.google.android.apps.translate"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.melimots.WordSearch"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.mobilityware.solitaire"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "net.cdeguet.smartkeyboardpro"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.rubicon.dev.glwg"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.sinovatech.unicom.ui"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v1, "com.neusoft.td.android.wo116114"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isLessEqualWVGA()Z
    .locals 9

    .prologue
    const/16 v8, 0x320

    const/16 v7, 0x1e0

    .line 30
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    .line 31
    const-class v4, Lcom/htc/view/NavigationBarConfiguration;

    monitor-enter v4

    .line 32
    :try_start_0
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 33
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 35
    .local v0, display:Landroid/view/Display;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 36
    if-nez v0, :cond_0

    .line 37
    const-string v3, "NavigationBarConfiguration"

    const-string v5, "Couldn\'t get the default display from WindowManager"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v4

    .line 57
    :goto_0
    return v3

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    .line 42
    .local v2, nWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v1

    .line 44
    .local v1, nHeight:I
    sget-boolean v3, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v3, :cond_1

    .line 45
    const-string v3, "NavigationBarConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display resolution is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    if-gt v2, v7, :cond_2

    if-le v1, v8, :cond_3

    :cond_2
    if-gt v2, v8, :cond_4

    if-gt v1, v7, :cond_4

    .line 51
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 54
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_5
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 54
    .end local v1           #nHeight:I
    .end local v2           #nWidth:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
