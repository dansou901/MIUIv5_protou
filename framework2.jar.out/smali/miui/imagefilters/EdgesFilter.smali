.class public Lmiui/imagefilters/EdgesFilter;
.super Ljava/lang/Object;
.source "EdgesFilter.java"

# interfaces
.implements Lmiui/imagefilters/IImageFilter;


# static fields
.field private static sTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lmiui/imagefilters/EdgesFilter;->sTempHsl:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiui/imagefilters/ImageData;)V
    .locals 17
    .parameter "imgData"

    .prologue
    .line 8
    move-object/from16 v0, p1

    iget v10, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 9
    .local v10, width:I
    move-object/from16 v0, p1

    iget v5, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 10
    .local v5, height:I
    move-object/from16 v0, p1

    iget-object v9, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 12
    .local v9, pixels:[I
    filled-new-array {v10, v5}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 13
    .local v6, luminance:[[I
    const/4 v12, 0x0

    .local v12, y:I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 14
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    if-ge v11, v10, :cond_0

    .line 15
    mul-int v13, v12, v10

    add-int/2addr v13, v11

    aget v1, v9, v13

    .line 16
    .local v1, color:I
    aget-object v13, v6, v11

    invoke-static {v1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v14

    aput v14, v13, v12

    .line 14
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 13
    .end local v1           #color:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 22
    .end local v11           #x:I
    :cond_1
    const/4 v12, 0x1

    :goto_2
    add-int/lit8 v13, v5, -0x1

    if-ge v12, v13, :cond_3

    .line 23
    const/4 v11, 0x1

    .restart local v11       #x:I
    :goto_3
    add-int/lit8 v13, v10, -0x1

    if-ge v11, v13, :cond_2

    .line 24
    mul-int v13, v12, v10

    add-int v2, v13, v11

    .line 26
    .local v2, colorIndex:I
    add-int/lit8 v13, v11, -0x1

    aget-object v13, v6, v13

    add-int/lit8 v14, v12, -0x1

    aget v13, v13, v14

    neg-int v13, v13

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    add-int v3, v13, v14

    .line 28
    .local v3, grayX:I
    add-int/lit8 v13, v11, -0x1

    aget-object v13, v6, v13

    add-int/lit8 v14, v12, -0x1

    aget v13, v13, v14

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v14, v6, v14

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    sub-int v4, v13, v14

    .line 31
    .local v4, grayY:I
    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v13

    rsub-int v7, v13, 0xff

    .line 33
    .local v7, magnitude:I
    aget v13, v9, v2

    sget-object v14, Lmiui/imagefilters/EdgesFilter;->sTempHsl:[F

    invoke-static {v13, v14}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 34
    sget-object v13, Lmiui/imagefilters/EdgesFilter;->sTempHsl:[F

    const/4 v14, 0x2

    int-to-float v15, v7

    const/high16 v16, 0x437f

    div-float v15, v15, v16

    aput v15, v13, v14

    .line 35
    sget-object v13, Lmiui/imagefilters/EdgesFilter;->sTempHsl:[F

    invoke-static {v13}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb([F)I

    move-result v8

    .line 36
    .local v8, newRgb:I
    const v13, 0xffffff

    and-int/2addr v13, v8

    aget v14, v9, v2

    const/high16 v15, -0x100

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    aput v13, v9, v2

    .line 23
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 22
    .end local v2           #colorIndex:I
    .end local v3           #grayX:I
    .end local v4           #grayY:I
    .end local v7           #magnitude:I
    .end local v8           #newRgb:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 39
    .end local v11           #x:I
    :cond_3
    return-void
.end method
