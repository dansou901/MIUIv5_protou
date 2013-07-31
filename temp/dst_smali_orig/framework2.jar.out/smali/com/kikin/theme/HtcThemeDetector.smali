.class public Lcom/kikin/theme/HtcThemeDetector;
.super Lcom/kikin/theme/DefaultThemeDetector;
.source "HtcThemeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/kikin/theme/DefaultThemeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 7
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .local v3, ver:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->htcsdkVer:Ljava/lang/String;

    :cond_0
    if-nez v3, :cond_1

    const-string v4, "com.kikin"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v4, Lcom/kikin/theme/ThemeDetector$KikinTheme;->HTC:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-super {p0, p1}, Lcom/kikin/theme/DefaultThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v4

    goto :goto_1
.end method
