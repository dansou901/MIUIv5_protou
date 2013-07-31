.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# static fields
.field public static final MIUI_SCALE:Ljava/lang/String; = "miui_font_scale_switch"

.field private static sConfig:Landroid/content/res/Configuration; = null

.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeMiui:I = 0x2

.field public static final sCookieTypeOther:I = 0x3

.field private static sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sValueFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x6070051

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    .line 33
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    .line 335
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x607005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070082

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x607002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .parameter "cookie"

    .prologue
    .line 371
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 372
    .local v1, type:I
    if-nez v1, :cond_0

    .line 373
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, name:Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    const/4 v1, 0x1

    .line 383
    :goto_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return v1

    .line 377
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    const-string v2, "/system/framework/framework-miui-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const/4 v1, 0x2

    goto :goto_0

    .line 381
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private updateMiuiFontScale()V
    .locals 6

    .prologue
    .line 185
    const-string/jumbo v3, "miui_font_scale_switch"

    const-string v4, "bool"

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, miuiScaleId:I
    if-eqz v2, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, miuiScale:Z
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/MiuiResources;->getBoolean(I)Z

    move-result v1

    .line 190
    if-eqz v1, :cond_0

    .line 191
    const v3, 0x606000b

    invoke-virtual {p0, v3}, Landroid/content/res/MiuiResources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, miuiFontScales:[Ljava/lang/String;
    sget-object v3, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v4, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Landroid/util/TypedValue;->miui_font_scale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0           #miuiFontScales:[Ljava/lang/String;
    .end local v1           #miuiScale:Z
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v1       #miuiScale:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 73
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 82
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 318
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    .line 322
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 323
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 324
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, value:Ljava/lang/CharSequence;
    goto :goto_0

    .line 327
    .end local v1           #value:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 328
    .restart local v1       #value:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 5
    .parameter "id"

    .prologue
    .line 299
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 304
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 305
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, value:Ljava/lang/Integer;
    goto :goto_0

    .line 308
    .end local v1           #value:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 309
    .restart local v1       #value:Ljava/lang/Integer;
    if-nez v1, :cond_2

    sget-object v2, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    sget-object v2, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 312
    :cond_2
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 88
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, themeInteger:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 95
    .end local v0           #themeInteger:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 258
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "miui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 269
    :goto_0
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 270
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiFontScale()V

    .line 271
    return-void

    .line 265
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 266
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->enableFilter(Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method isPreloadOverlayed(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    .line 218
    :goto_0
    return v4

    .line 204
    :cond_0
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 205
    .local v1, isOverlayed:Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 208
    sget-object v4, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 209
    .local v3, sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-eqz v3, :cond_3

    .line 210
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 211
    .local v2, source:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lmiui/content/res/ThemeResources;->containsOverlayEntry(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 217
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #source:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    .line 225
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    .line 226
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    .line 228
    :cond_0
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget v5, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    iget v5, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_3

    .line 232
    :cond_1
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, file:Ljava/lang/String;
    const-string v5, ".xml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 234
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 235
    .local v3, loadingId:Ljava/lang/Integer;
    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 236
    .local v4, sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    if-nez v4, :cond_2

    .line 237
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 238
    .restart local v4       #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    :cond_2
    new-instance v5, Landroid/util/Pair;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #loadingId:Ljava/lang/Integer;
    .end local v4           #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setId(I)V

    .line 251
    :cond_4
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 252
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 254
    :cond_5
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "value"
    .parameter "id"

    .prologue
    .line 116
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, file:Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v7}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 123
    .local v2, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_3

    .line 125
    const/4 v4, 0x0

    .line 126
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v6, :cond_1

    iget v6, p1, Landroid/util/TypedValue;->density:I

    const v7, 0xffff

    if-eq v6, v7, :cond_1

    .line 127
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 131
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_2
    iget-object v3, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 132
    .local v3, is:Ljava/io/InputStream;
    const-string v6, ".9.png"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-static {v3}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 135
    :cond_2
    invoke-static {p0, p1, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 139
    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    iget-object v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v6

    goto :goto_0

    .line 144
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 136
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "array"

    .prologue
    .line 278
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v5, :cond_1

    .line 295
    :cond_0
    return-object p1

    .line 281
    :cond_1
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 282
    .local v0, data:[I
    const/4 v2, 0x0

    .line 283
    .local v2, index:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 284
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 285
    .local v4, type:I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 286
    .local v1, id:I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 288
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 289
    .local v3, themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 290
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 293
    .end local v3           #themeInteger:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 294
    goto :goto_0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2, v4}, Landroid/content/res/MiuiResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 101
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, file:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v3}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 104
    .local v1, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v1, :cond_0

    .line 105
    iget-object v2, v1, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 111
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v2

    .line 108
    .restart local v0       #file:Ljava/lang/String;
    .restart local v1       #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 153
    .local v1, currentConfig:Landroid/content/res/Configuration;
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 155
    .local v0, configChanges:I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 157
    if-eqz p1, :cond_0

    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/high16 v2, 0x3f80

    sput v2, Landroid/util/TypedValue;->miui_font_scale:F

    .line 159
    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 162
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_4

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_1

    invoke-static {v0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    :cond_1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 169
    :cond_2
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 170
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 171
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 172
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 174
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 179
    :cond_3
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 181
    :cond_4
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiFontScale()V

    .line 182
    return-void

    .line 153
    .end local v0           #configChanges:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
