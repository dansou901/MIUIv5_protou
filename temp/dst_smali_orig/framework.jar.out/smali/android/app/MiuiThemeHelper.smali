.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field public static final sExcluedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "srcConfig"
    .parameter "desConfig"

    .prologue
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "info"
    .parameter "customized"

    .prologue
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "activityName"

    .prologue
    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/theme/icons"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, apm:Landroid/app/ApplicationPackageManager;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p4}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .local v2, dr:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-static {v4, p1, p4, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :cond_3
    move-object v4, v2

    goto :goto_0

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/ClassCastException;
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changes"

    .prologue
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "changes"
    .parameter "config"
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v2, -0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .local v0, flag:J
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    .end local v0           #flag:J
    :cond_0
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "appFlags"

    .prologue
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0           #i:I
    :goto_1
    return v1

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changes"
    .parameter "config"

    .prologue
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 15
    .parameter "value"

    .prologue
    const/4 v8, -0x4

    .local v8, intPos:I
    const/4 v2, -0x3

    .local v2, dotPos:I
    const/4 v6, -0x2

    .local v6, fractionPos:I
    const/4 v11, -0x1

    .local v11, unitPos:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/4 v13, -0x4

    if-ne v8, v13, :cond_0

    const/16 v13, 0x30

    if-lt v0, v13, :cond_0

    const/16 v13, 0x39

    if-gt v0, v13, :cond_0

    move v8, v7

    :cond_0
    const/4 v13, -0x3

    if-ne v2, v13, :cond_1

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_1

    move v2, v7

    :cond_1
    const/4 v13, -0x3

    if-eq v2, v13, :cond_2

    const/16 v13, 0x30

    if-lt v0, v13, :cond_2

    const/16 v13, 0x39

    if-gt v0, v13, :cond_2

    move v6, v7

    :cond_2
    const/4 v13, -0x1

    if-ne v11, v13, :cond_6

    const/16 v13, 0x61

    if-lt v0, v13, :cond_6

    const/16 v13, 0x7a

    if-gt v0, v13, :cond_6

    move v11, v7

    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x0

    .local v4, f:F
    const/4 v5, 0x0

    .local v5, fraction:I
    const/4 v12, 0x0

    .local v12, unitType:I
    const/4 v9, 0x0

    .local v9, mantissaShift:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_11

    if-ge v2, v6, :cond_11

    if-ge v6, v11, :cond_11

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v13, -0x3

    if-eq v2, v13, :cond_4

    const/4 v13, -0x2

    if-eq v6, v13, :cond_4

    :try_start_1
    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :cond_4
    const/16 v13, 0x100

    if-ge v5, v13, :cond_7

    const/high16 v13, 0x4380

    mul-float/2addr v4, v13

    :cond_5
    :goto_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .local v10, unit:Ljava/lang/String;
    const-string v13, "px"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x0

    :goto_2
    float-to-int v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, complex:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, -0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shl-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #complex:Ljava/lang/Integer;
    .end local v10           #unit:Ljava/lang/String;
    :goto_3
    return-object v1

    .end local v4           #f:F
    .end local v5           #fraction:I
    .end local v9           #mantissaShift:I
    .end local v12           #unitType:I
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .end local v0           #c:C
    .restart local v4       #f:F
    .restart local v5       #fraction:I
    .restart local v9       #mantissaShift:I
    .restart local v12       #unitType:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const v13, 0x8000

    if-ge v5, v13, :cond_8

    const/high16 v13, 0x4700

    mul-float/2addr v4, v13

    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    const/high16 v13, 0x4000

    if-ge v5, v13, :cond_9

    const/high16 v13, 0x4e80

    mul-float/2addr v4, v13

    const/4 v9, 0x2

    goto :goto_1

    :cond_9
    const/high16 v13, 0x20

    if-ge v5, v13, :cond_5

    const/high16 v13, 0x4a00

    mul-float/2addr v4, v13

    const/4 v9, 0x3

    goto :goto_1

    .restart local v10       #unit:Ljava/lang/String;
    :cond_a
    const-string v13, "dp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "dip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const/4 v12, 0x1

    goto :goto_2

    :cond_c
    const-string v13, "sp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v12, 0x2

    goto :goto_2

    :cond_d
    const-string v13, "pt"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v12, 0x3

    goto :goto_2

    :cond_e
    const-string v13, "in"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v12, 0x4

    goto :goto_2

    :cond_f
    const-string v13, "mm"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v12, 0x5

    goto/16 :goto_2

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .end local v10           #unit:Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3
.end method
