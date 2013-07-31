.class public Lmiui/imagefilters/HslFilter;
.super Ljava/lang/Object;
.source "HslFilter.java"

# interfaces
.implements Lmiui/imagefilters/IImageFilter;


# static fields
.field private static sTempTriple:[F


# instance fields
.field private mHueAdjust:F

.field private mHueModify:F

.field private mLightnessAdjust:F

.field private mLightnessModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F

.field public useHsv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x7fc0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method


# virtual methods
.method public process(Lmiui/imagefilters/ImageData;)V
    .locals 18
    .parameter "imgData"

    .prologue
    move-object/from16 v0, p1

    iget v11, v0, Lmiui/imagefilters/ImageData;->width:I

    .local v11, width:I
    move-object/from16 v0, p1

    iget v4, v0, Lmiui/imagefilters/ImageData;->height:I

    .local v4, height:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .local v8, pixels:[I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    if-ge v12, v11, :cond_d

    const/4 v13, 0x0

    .local v13, y:I
    :goto_1
    if-ge v13, v4, :cond_c

    mul-int v14, v13, v11

    add-int v2, v14, v12

    .local v2, colorIndex:I
    aget v9, v8, v2

    .local v9, rgb:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v14, :cond_3

    sget-object v14, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    invoke-static {v9, v14}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(I[F)V

    :goto_2
    sget-object v14, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    const/4 v15, 0x0

    aget v3, v14, v15

    .local v3, h:F
    sget-object v14, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    const/4 v15, 0x1

    aget v10, v14, v15

    .local v10, s:F
    sget-object v14, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    const/4 v15, 0x2

    aget v5, v14, v15

    .local v5, l:F
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v14, :cond_b

    invoke-static {v3, v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->HsvToRgb(FFF)I

    move-result v7

    .local v7, newRgb:I
    :goto_6
    const v14, 0xffffff

    and-int/2addr v14, v7

    aget v15, v8, v2

    const/high16 v16, -0x100

    and-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v8, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v3           #h:F
    .end local v5           #l:F
    .end local v7           #newRgb:I
    .end local v10           #s:F
    :cond_3
    sget-object v14, Lmiui/imagefilters/HslFilter;->sTempTriple:[F

    invoke-static {v9, v14}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    goto :goto_2

    .restart local v3       #h:F
    .restart local v5       #l:F
    .restart local v10       #s:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    add-float/2addr v3, v14

    const/high16 v14, 0x43b4

    cmpl-float v14, v3, v14

    if-ltz v14, :cond_5

    const/high16 v14, 0x43b4

    sub-float/2addr v3, v14

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_0

    const/high16 v14, 0x43b4

    add-float/2addr v3, v14

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_8

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    add-float/2addr v14, v15

    mul-float/2addr v10, v14

    :cond_7
    :goto_7
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    invoke-static {v14, v10, v15}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v10

    goto :goto_4

    :cond_8
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .local v6, multipleFactor:F
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v15, 0x3f00

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    mul-float v1, v14, v15

    .local v1, additionFactor:F
    const/high16 v14, 0x3f80

    add-float/2addr v14, v6

    mul-float/2addr v10, v14

    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_7

    add-float/2addr v10, v1

    goto :goto_7

    .end local v1           #additionFactor:F
    .end local v6           #multipleFactor:F
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_a

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    add-float/2addr v14, v15

    mul-float/2addr v5, v14

    goto/16 :goto_5

    :cond_a
    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v5

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    sub-float v5, v14, v15

    goto/16 :goto_5

    :cond_b
    invoke-static {v3, v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v7

    .restart local v7       #newRgb:I
    goto/16 :goto_6

    .end local v2           #colorIndex:I
    .end local v3           #h:F
    .end local v5           #l:F
    .end local v7           #newRgb:I
    .end local v9           #rgb:I
    .end local v10           #s:F
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .end local v13           #y:I
    :cond_d
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 2
    .parameter "hue"

    .prologue
    const/high16 v0, -0x3ccc

    const/high16 v1, 0x4334

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    return-void
.end method

.method public setHueModify(F)V
    .locals 2
    .parameter "hue"

    .prologue
    const/4 v0, 0x0

    const v1, 0x43b3fffd

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 2
    .parameter "lightness"

    .prologue
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method

.method public setLightnessModify(F)V
    .locals 2
    .parameter "lightness"

    .prologue
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    return-void
.end method

.method public setSaturationAdjust(F)V
    .locals 2
    .parameter "saturation"

    .prologue
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    return-void
.end method

.method public setSaturationModify(F)V
    .locals 2
    .parameter "saturation"

    .prologue
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    return-void
.end method
