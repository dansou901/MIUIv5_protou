.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$1;,
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final MIUI_MOD_BUILT_IN_ICONS_VERSION:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/version"

.field private static final MIUI_MOD_DOWNLOAD_ICONS:Ljava/lang/String; = "/data/data/com.xiaomi.market/files/miui_mod_icons/"

.field private static final sAlphaShift:I = 0x18

.field private static final sAlphaThreshold:I = 0x32

.field private static sBgPaint:Landroid/graphics/Paint; = null

.field private static final sCanvas:Landroid/graphics/Canvas; = null

.field private static sCanvasForTransformBitmap:Landroid/graphics/Canvas; = null

.field private static final sColorByteSize:I = 0x4

.field private static final sColorShift:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconHeight:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconWidth:I = 0x0

.field private static sCutPaint:Landroid/graphics/Paint; = null

.field private static final sDensities:[I = null

#the value of this static final field might be set in the static constructor
.field private static final sDensity:I = 0x0

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sMaxContentRatio:F = 2.0f

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint; = null

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSystemResource:Landroid/content/res/Resources;

.field private static sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    sget v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-static {v0}, Lmiui/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sDensities:[I

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v2, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.weather2.png"

    const-string v2, "com.miui.weather.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.gallery.png"

    const-string v2, "com.android.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.png"

    const-string v2, "com.cooliris.media.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.xiaomi.market.png"

    const-string v2, "com.miui.supermarket.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.wali.miui.networkassistant.png"

    const-string v2, "com.android.monitor.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera.CameraEntry.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.album.png"

    const-string v2, "com.miui.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.activity.FMRadioMain.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.hwcamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.huawei.android.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.android.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.fmradio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.motorola.Camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lge.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.oppo.camera.OppoCamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    sput-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    sput-object v4, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .parameter "RGB"

    .prologue
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calcBackgroundColor(II[I)[F
    .locals 12
    .parameter "pixelSize"
    .parameter "strideSize"
    .parameter "basePixels"

    .prologue
    const/4 v6, 0x0

    .local v6, sum:I
    const/4 v8, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    .local v7, sumRGB:[I
    const/4 v8, 0x3

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    .local v0, RGB:[I
    add-int/lit8 v3, p0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    aget v8, p2, v3

    const v9, 0xffffff

    and-int v1, v8, v9

    .local v1, color:I
    if-lez v1, :cond_0

    const/4 v8, 0x0

    aget v9, v7, v8

    const/high16 v10, 0xff

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x10

    add-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    aget v9, v7, v8

    const v10, 0xff00

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x2

    aget v9, v7, v8

    and-int/lit16 v10, v1, 0xff

    add-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v1           #color:I
    :cond_1
    if-lez v6, :cond_2

    const/4 v8, 0x0

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    const/4 v8, 0x1

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    const/4 v8, 0x2

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    :cond_2
    invoke-static {v7}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v1

    .restart local v1       #color:I
    invoke-static {v1, v0}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f947ae147ae147bL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, v7}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    return-object v8

    :cond_3
    const/4 v8, 0x2

    new-array v5, v8, [[I

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    aput-object v9, v5, v8

    .local v5, mappingSections:[[I
    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v8, v5

    if-ge v3, v8, :cond_4

    aget-object v8, v5, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v5, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v2

    .local v2, hue:F
    int-to-float v8, v6

    mul-float/2addr v8, v2

    const/high16 v9, 0x43b4

    div-float v2, v8, v9

    const/4 v3, 0x0

    :goto_3
    array-length v8, v5

    if-ge v3, v8, :cond_6

    aget-object v8, v5, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v5, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v4, v8, v9

    .local v4, length:I
    int-to-float v8, v4

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5

    int-to-float v8, v4

    sub-float/2addr v2, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    aget-object v8, v5, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v8, v8

    add-float/2addr v2, v8

    .end local v4           #length:I
    :cond_6
    invoke-static {v1, v2, v0}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v1

    const v8, 0x3f19999a

    invoke-static {v1, v8, v0}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v1

    const v8, 0x3ecccccd

    invoke-static {v1, v8, v0}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v1

    goto/16 :goto_1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xbet 0x0t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public static checkModIconsTimestamp()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/customized_icons/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v8, "/data/system/customized_icons/"

    invoke-interface {v7, v8}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v7

    iget-wide v0, v7, Llibcore/io/StructStat;->st_ctime:J

    .local v0, createdTime:J
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .local v4, modifiedTime:J
    cmp-long v7, v4, v0

    if-gtz v7, :cond_0

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/media/theme/miui_mod_icons/version"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v6, reader:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_0
    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    invoke-static {v3}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #createdTime:J
    .end local v4           #modifiedTime:J
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x1ed

    invoke-static {v3, v7, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    :cond_2
    return-void

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const/16 v1, 0x3e8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->mkdirs(Ljava/lang/String;)Z

    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0, v1, v1}, Lmiui/os/Shell;->chown(Ljava/lang/String;II)Z

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static colorToRGB(I[I)V
    .locals 2
    .parameter "color"
    .parameter "rgb"

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    aput v1, p1, v0

    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    aput v1, p1, v0

    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    aput v1, p1, v0

    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modPattern"
    .parameter "modCover"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, baseWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .local v8, baseHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x4

    .local v19, pixelSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    div-int/lit8 v4, v3, 0x4

    .local v4, strideSize:I
    move/from16 v0, v19

    new-array v2, v0, [I

    .local v2, basePixels:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    sget v3, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .local v20, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    sget-object v3, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    sget-object v3, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, v20

    move-object v10, v2

    move v12, v4

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    if-eqz p2, :cond_3

    sget-object v3, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    :cond_2
    move/from16 v0, v19

    invoke-static {v0, v4, v2}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(II[I)[F

    move-result-object v17

    .local v17, bgColor:[F
    new-instance v18, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v18, cm:Landroid/graphics/ColorMatrix;
    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v17, v6

    aput v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x6

    const/4 v6, 0x1

    aget v6, v17, v6

    aput v6, v3, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0xc

    const/4 v6, 0x2

    aget v6, v17, v6

    aput v6, v3, v5

    const/16 v5, 0xd

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v3, v5

    const/16 v5, 0x12

    const/high16 v6, 0x3f80

    aput v6, v3, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v3, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    sget-object v3, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v17           #bgColor:[F
    .end local v18           #cm:Landroid/graphics/ColorMatrix;
    :cond_3
    if-eqz p3, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    if-eqz p4, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-object v20
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modPattern"
    .parameter "modCover"

    .prologue
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    sget-object v7, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v7, v7, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Ljava/util/List;

    if-eqz v7, :cond_1

    sget-object v7, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v7, v7, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-static {p0}, Lmiui/imagefilters/ImageData;->bitampToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v4

    .local v4, imgData:Lmiui/imagefilters/ImageData;
    sget-object v7, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v7, v7, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/imagefilters/IImageFilter;

    .local v2, filter:Lmiui/imagefilters/IImageFilter;
    invoke-interface {v2, v4}, Lmiui/imagefilters/IImageFilter;->process(Lmiui/imagefilters/ImageData;)V

    goto :goto_0

    .end local v2           #filter:Lmiui/imagefilters/IImageFilter;
    :cond_0
    invoke-static {v4}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #imgData:Lmiui/imagefilters/ImageData;
    :cond_1
    sget-boolean v7, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v7, :cond_2

    sget-object v7, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v7}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, pattern:Landroid/graphics/Bitmap;
    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v5, v0, v6, v1}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "icon"
    .parameter "ratio"

    .prologue
    const/high16 v13, 0x4000

    sget-object v10, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    :try_start_0
    sget v8, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .local v8, targetWidth:I
    sget v7, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .local v7, targetHeight:I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v4, v0

    .local v4, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .end local v4           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .local v6, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .local v5, sourceHeight:I
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v8

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v9, v11

    div-float/2addr v9, v13

    int-to-float v11, v7

    int-to-float v12, v5

    mul-float/2addr v12, p1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    monitor-exit v10

    return-object v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #sourceHeight:I
    .end local v6           #sourceWidth:I
    :cond_1
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #targetHeight:I
    .end local v8           #targetWidth:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static ensureIconConfigLoaded()V
    .locals 1

    .prologue
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    invoke-static {}, Lmiui/content/res/IconCustomizer;->makeIconMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    :cond_0
    return-void
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "base"
    .parameter "mask"
    .parameter "background"
    .parameter "pattern"
    .parameter "cover"
    .parameter "cropOutside"

    .prologue
    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "base"
    .parameter "cropOutside"

    .prologue
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_pattern.png"

    const-string v4, "icon_border.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "base"

    .prologue
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const/4 v2, 0x0

    const-string v3, "icon_shortcut.png"

    const-string v4, "icon_shortcut_arrow.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 11
    .parameter "icon"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, -0x4080

    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .end local p0
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, bottom:F
    .local v4, top:F
    :cond_0
    :goto_0
    return v5

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bottom:F
    .end local v4           #top:F
    .restart local p0
    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v9, v8}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v4, v6

    .restart local v4       #top:F
    cmpg-float v6, v4, v7

    if-ltz v6, :cond_0

    invoke-static {v0, v9, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v1, v6

    .restart local v1       #bottom:F
    cmpg-float v6, v1, v7

    if-ltz v6, :cond_0

    invoke-static {v0, v8, v8}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v2, v6

    .local v2, left:F
    cmpg-float v6, v2, v7

    if-ltz v6, :cond_0

    invoke-static {v0, v8, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v3, v6

    .local v3, right:F
    cmpg-float v6, v3, v7

    if-ltz v6, :cond_0

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v5, v5

    sub-float v6, v3, v2

    add-float/2addr v6, v10

    div-float/2addr v5, v6

    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    sub-float v7, v1, v4

    add-float/2addr v7, v10

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "original"

    .prologue
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    invoke-static {p0, v0, p3, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .parameter "context"
    .parameter
    .parameter "original"
    .parameter "tryModIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, filename:Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_5

    const/4 v4, 0x0

    .local v4, icon:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2, v8}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v5

    invoke-static {p2, v5}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "IconCustomizer"

    const-string v6, "Generate customized icon for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "icon_mask.png"

    const-string v6, "icon_background.png"

    const-string v7, "icon_pattern.png"

    const-string v8, "icon_border.png"

    invoke-static {v4, v5, v6, v7, v8}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v4, p0}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    :cond_4
    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .end local v4           #icon:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v0, :cond_6

    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    :cond_6
    move-object v1, v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v0, 0x0

    .local v0, icon:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "bitmap"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 9
    .parameter "bitmap"
    .parameter "isHorizontal"
    .parameter "isInvert"

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, height:I
    if-nez p2, :cond_2

    move v3, v5

    .local v3, x:I
    :goto_0
    if-nez p2, :cond_3

    move v4, v5

    .local v4, y:I
    :goto_1
    const/4 v1, 0x0

    .local v1, length:I
    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_4

    move v6, v5

    :goto_2
    add-int/2addr v4, v6

    if-ltz v4, :cond_1

    if-lt v4, v0, :cond_5

    :cond_1
    if-eqz p1, :cond_a

    .end local v2           #width:I
    :goto_3
    div-int/lit8 v6, v2, 0x3

    if-ge v1, v6, :cond_b

    .end local v4           #y:I
    :goto_4
    return v5

    .end local v1           #length:I
    .end local v3           #x:I
    .restart local v2       #width:I
    :cond_2
    move v3, v2

    goto :goto_0

    .restart local v3       #x:I
    :cond_3
    move v4, v0

    goto :goto_1

    .restart local v1       #length:I
    .restart local v4       #y:I
    :cond_4
    move v6, v7

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    if-le v6, v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_9

    move v6, v5

    :goto_6
    add-int/2addr v3, v6

    if-ltz v3, :cond_1

    if-ge v3, v2, :cond_1

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    if-le v6, v8, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    move v6, v7

    goto :goto_6

    :cond_a
    move v2, v0

    goto :goto_3

    .end local v2           #width:I
    :cond_b
    if-eqz p1, :cond_c

    .end local v4           #y:I
    :goto_8
    move v5, v4

    goto :goto_4

    .restart local v4       #y:I
    :cond_c
    move v4, v3

    goto :goto_8
.end method

.method public static getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"
    .parameter "className"

    .prologue
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, name:Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".png"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fancy_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, relativePath:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #relativePath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "%s.png"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "%s.png"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "%s#%s.png"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6
    .parameter "path"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local v2, outputStream:Ljava/io/FileOutputStream;
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_1
    invoke-static {p0, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static getHue(I[I)F
    .locals 12
    .parameter "color"
    .parameter "RGB"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4270

    const/4 v8, 0x2

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, min:I
    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, max:I
    sub-int v4, v2, v3

    .local v4, range:I
    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v8, :cond_1

    aget v5, p1, v1

    if-eq v3, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x78

    int-to-float v0, v5

    .local v0, hue:F
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    goto :goto_0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .local v1, icon:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/IconCustomizer;->sDensities:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/IconCustomizer;->sDensities:[I

    aget v4, v4, v0

    invoke-static {v4}, Lmiui/util/DisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, targetFileName:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    sget-object v4, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lmiui/content/res/IconCustomizer;->sDensities:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .end local v2           #targetFileName:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    sget-object v4, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v3, 0xf0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .restart local v2       #targetFileName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, fileName:Ljava/lang/String;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method

.method private static getIconSize()I
    .locals 2

    .prologue
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    sparse-switch v1, :sswitch_data_0

    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    mul-int/lit8 v1, v1, 0x5a

    div-int/lit16 v0, v1, 0xf0

    .local v0, px:I
    rem-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    return v0

    .end local v0           #px:I
    :sswitch_0
    const/16 v0, 0xcc

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x88

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fileName"

    .prologue
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    const-string v2, "com.android.stk.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "com.android.stk.cu.png"

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/io/File;

    .end local v1           #iconFile:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1       #iconFile:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSaturation(I[I)F
    .locals 8
    .parameter "color"
    .parameter "RGB"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, min:I
    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, max:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    int-to-float v2, p0

    :goto_0
    return v2

    :cond_1
    const/high16 v2, 0x3f80

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 9
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    const/high16 v5, 0x3f80

    instance-of v6, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .local v4, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, sourceHeight:I
    if-lez v4, :cond_0

    if-lez v4, :cond_0

    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v2, v6, v7

    .local v2, ratioW:F
    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v1, v6, v7

    .local v1, ratioH:F
    if-eqz p1, :cond_2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v0

    .local v0, contentRatio:F
    const-string v6, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content Ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    const/high16 v6, 0x4000

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_3

    const v5, 0x3f666666

    mul-float/2addr v5, v0

    goto :goto_0

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .locals 3
    .parameter "context"

    .prologue
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_2

    const-class v2, Lmiui/content/res/IconCustomizer;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, saveContext:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v1, v0}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    .end local v0           #saveContext:Landroid/content/Context;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getValue(I[I)F
    .locals 4
    .parameter "color"
    .parameter "RGB"

    .prologue
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, max:I
    const/high16 v1, 0x3f80

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    return v1
.end method

.method private static hdpiSizeToCurrent(F)F
    .locals 2
    .parameter "pixelSize"

    .prologue
    sget v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .locals 22

    .prologue
    new-instance v10, Lmiui/content/res/IconCustomizer$IconConfig;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    .local v10, iconConfig:Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v20

    const-string v21, "transform_config.xml"

    invoke-virtual/range {v20 .. v21}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v11

    .local v11, iconConfigInfo:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v11, :cond_1

    const-string v20, "IconCustomizer"

    const-string v21, "can\'t load transform_config.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/16 v18, 0x0

    .local v18, root:Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    iget-object v0, v11, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :try_start_1
    iget-object v0, v11, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .local v6, configs:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_14

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "load icon config failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #i:I
    :cond_3
    :try_start_3
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .local v3, config:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    .local v13, name:Ljava/lang/String;
    const-string v20, "IconFilters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    :catch_2
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "transform_config.xml parse failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #config:Lorg/w3c/dom/Element;
    .restart local v13       #name:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v20, "PointsMapping"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .local v15, points:Lorg/w3c/dom/NodeList;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .local v14, point:Lorg/w3c/dom/Element;
    const-string v20, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "fromX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v20, "fromY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v20, "toX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v20, "toY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .end local v14           #point:Lorg/w3c/dom/Element;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    .local v19, size:I
    if-lez v19, :cond_2

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v12           #j:I
    .end local v15           #points:Lorg/w3c/dom/NodeList;
    .end local v16           #pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17           #pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v19           #size:I
    :cond_8
    const-string v20, "Config"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, configName:Ljava/lang/String;
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, configValue:Ljava/lang/String;
    const-string v20, "UseModIcon"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    goto/16 :goto_2

    .end local v4           #configName:Ljava/lang/String;
    .end local v5           #configValue:Ljava/lang/String;
    :cond_9
    const-string v20, "ScaleX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_2

    :cond_a
    const-string v20, "ScaleY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_2

    :cond_b
    const-string v20, "SkewX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_2

    :cond_c
    const-string v20, "SkewY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_2

    :cond_d
    const-string v20, "TransX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_2

    :cond_e
    const-string v20, "TransY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_2

    :cond_f
    const-string v20, "RotateX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_2

    :cond_10
    const-string v20, "RotateY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto/16 :goto_2

    :cond_11
    const-string v20, "RotateZ"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto/16 :goto_2

    :cond_12
    const-string v20, "CameraX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto/16 :goto_2

    :cond_13
    const-string v20, "CameraY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto/16 :goto_2

    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    :cond_14
    const/16 v20, 0x1

    sput-boolean v20, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 17
    .parameter "configs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/imagefilters/IImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "ignoreWhenNotSupported"

    .local v1, IGNORE_WHEN_NOT_SUPPORT:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lmiui/imagefilters/IImageFilter;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_6

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v2}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    .local v2, builder:Lmiui/imagefilters/ImageFilterBuilder;
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .local v4, ele:Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    .local v10, name:Ljava/lang/String;
    const-string v14, "Filter"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .local v6, filterChildren:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v8, v14, :cond_5

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .local v11, paramEle:Lorg/w3c/dom/Element;
    const-string v14, "Param"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "ignoreWhenNotSupported"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, strParamIgnoreWhenNotSupported:Ljava/lang/String;
    const-string v14, "name"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v14, "value"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v14}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    goto :goto_4

    .end local v11           #paramEle:Lorg/w3c/dom/Element;
    .end local v13           #strParamIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_5
    const-string v14, "name"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    const-string v14, "ignoreWhenNotSupported"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v2, v14}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    :try_start_0
    invoke-virtual {v2}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v5

    .local v5, filter:Lmiui/imagefilters/IImageFilter;
    if-eqz v5, :cond_0

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v5           #filter:Lmiui/imagefilters/IImageFilter;
    :catch_0
    move-exception v3

    .local v3, e:Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    invoke-virtual {v3}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .end local v2           #builder:Lmiui/imagefilters/ImageFilterBuilder;
    .end local v3           #e:Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    .end local v4           #ele:Lorg/w3c/dom/Element;
    .end local v6           #filterChildren:Lorg/w3c/dom/NodeList;
    .end local v8           #j:I
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_6
    return-object v9

    .restart local v2       #builder:Lmiui/imagefilters/ImageFilterBuilder;
    .restart local v4       #ele:Lorg/w3c/dom/Element;
    .restart local v6       #filterChildren:Lorg/w3c/dom/NodeList;
    .restart local v8       #j:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v12       #strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_7
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    goto :goto_5
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, matrix:Landroid/graphics/Matrix;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .local v6, camera:Landroid/graphics/Camera;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v1, v2

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v1, v2

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V

    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 9
    .parameter "context"
    .parameter "l"

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, launcherIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p1, v7}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    :cond_0
    const/4 v5, 0x1

    .local v5, taskCnt:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    add-int/lit8 v6, v5, 0x1

    .end local v5           #taskCnt:I
    .local v6, taskCnt:I
    invoke-interface {p1, v5}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move v5, v6

    .end local v6           #taskCnt:I
    .restart local v5       #taskCnt:I
    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    :cond_3
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 5
    .parameter "fileName"
    .parameter "icon"
    .parameter "context"

    .prologue
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .local v1, outputStream:Ljava/io/FileOutputStream;
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "dr"
    .parameter "context"

    .prologue
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "icon"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method private static setHue(IF[I)I
    .locals 12
    .parameter "color"
    .parameter "hue"
    .parameter "RGB"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x43b4

    const/high16 v8, 0x4270

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, min:I
    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, max:I
    sub-int v3, v1, v2

    .local v3, range:I
    if-nez v3, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    :goto_1
    cmpg-float v4, p1, v9

    if-gez v4, :cond_1

    add-float/2addr p1, v7

    goto :goto_1

    :cond_1
    :goto_2
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    sub-float/2addr p1, v7

    goto :goto_2

    :cond_2
    const/high16 v4, 0x42f0

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, index:I
    mul-int/lit8 v4, v0, 0x78

    int-to-float v4, v4

    sub-float/2addr p1, v4

    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v0, v4, 0x3

    aput v2, p2, v0

    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v1

    int-to-float v6, v3

    sub-float v7, p1, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setSaturation(IF[I)I
    .locals 9
    .parameter "color"
    .parameter "saturation"
    .parameter "RGB"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, min:I
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, max:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    const/high16 v3, 0x3f80

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float v0, v3, v4

    .local v0, currentSaturation:F
    int-to-float v3, v1

    aget v4, p2, v6

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v6

    int-to-float v3, v1

    aget v4, p2, v7

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v7

    int-to-float v3, v1

    aget v4, p2, v8

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v8

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setValue(IF[I)I
    .locals 8
    .parameter "color"
    .parameter "value"
    .parameter "RGB"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    aget v2, p2, v5

    aget v3, p2, v6

    aget v4, p2, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, max:I
    if-nez v1, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/high16 v2, 0x3f80

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f

    div-float v0, v2, v3

    .local v0, currentValue:F
    aget v2, p2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v5

    aget v2, p2, v6

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v6

    aget v2, p2, v7

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v7

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "base"
    .parameter "matrix"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, outBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    sget-object v1, Lmiui/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lmiui/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method
