.class public Lmiui/imagefilters/ImageFilterUtils;
.super Ljava/lang/Object;
.source "ImageFilterUtils.java"


# static fields
.field static final COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HslToRgb(FFF)I
    .locals 12
    .parameter "h"
    .parameter "s"
    .parameter "l"

    .prologue
    .line 22
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_0

    .line 25
    const/high16 v8, 0x437f

    mul-float/2addr v8, p2

    float-to-int v2, v8

    .local v2, b:I
    move v3, v2

    .local v3, g:I
    move v7, v2

    .line 63
    .local v7, r:I
    :goto_0
    const/high16 v8, -0x100

    shl-int/lit8 v9, v7, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v3, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v2

    return v8

    .line 29
    .end local v2           #b:I
    .end local v3           #g:I
    .end local v7           #r:I
    :cond_0
    const/high16 v8, 0x3f00

    cmpg-float v8, p2, v8

    if-gez v8, :cond_2

    const/high16 v8, 0x3f80

    add-float/2addr v8, p1

    mul-float v6, p2, v8

    .line 30
    .local v6, q:F
    :goto_1
    const/high16 v8, 0x4000

    mul-float/2addr v8, p2

    sub-float v5, v8, v6

    .line 32
    .local v5, p:F
    const/high16 v8, 0x43b4

    div-float v0, p0, v8

    .line 33
    .local v0, Hk:F
    const/4 v8, 0x3

    new-array v1, v8, [F

    .line 34
    .local v1, T:[F
    const/4 v8, 0x0

    const v9, 0x3eaaaaab

    add-float/2addr v9, v0

    aput v9, v1, v8

    .line 35
    const/4 v8, 0x1

    aput v0, v1, v8

    .line 36
    const/4 v8, 0x2

    const v9, 0x3eaaaaab

    sub-float v9, v0, v9

    aput v9, v1, v8

    .line 38
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/4 v8, 0x3

    if-ge v4, v8, :cond_7

    .line 40
    aget v8, v1, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v1, v4

    .line 43
    :cond_1
    :goto_3
    aget v8, v1, v4

    const/high16 v9, 0x40c0

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f80

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 45
    sub-float v8, v6, v5

    const/high16 v9, 0x40c0

    mul-float/2addr v8, v9

    aget v9, v1, v4

    mul-float/2addr v8, v9

    add-float/2addr v8, v5

    aput v8, v1, v4

    .line 38
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 29
    .end local v0           #Hk:F
    .end local v1           #T:[F
    .end local v4           #i:I
    .end local v5           #p:F
    .end local v6           #q:F
    :cond_2
    add-float v8, p2, p1

    mul-float v9, p2, p1

    sub-float v6, v8, v9

    goto :goto_1

    .line 41
    .restart local v0       #Hk:F
    .restart local v1       #T:[F
    .restart local v4       #i:I
    .restart local v5       #p:F
    .restart local v6       #q:F
    :cond_3
    aget v8, v1, v4

    const/high16 v9, 0x3f80

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v1, v4

    goto :goto_3

    .line 47
    :cond_4
    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 49
    aput v6, v1, v4

    goto :goto_4

    .line 51
    :cond_5
    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 53
    sub-float v8, v6, v5

    const v9, 0x3f2aaaab

    aget v10, v1, v4

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x40c0

    mul-float/2addr v8, v9

    add-float/2addr v8, v5

    aput v8, v1, v4

    goto :goto_4

    .line 55
    :cond_6
    aput v5, v1, v4

    goto :goto_4

    .line 58
    :cond_7
    const/4 v8, 0x0

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 59
    .restart local v7       #r:I
    const/4 v8, 0x1

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 60
    .restart local v3       #g:I
    const/4 v8, 0x2

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .restart local v2       #b:I
    goto/16 :goto_0
.end method

.method public static HslToRgb([F)I
    .locals 3
    .parameter "hsl"

    .prologue
    .line 15
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static HsvToRgb(FFF)I
    .locals 14
    .parameter "h"
    .parameter "s"
    .parameter "v"

    .prologue
    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, r:F
    const/4 v2, 0x0

    .line 70
    .local v2, g:F
    const/4 v0, 0x0

    .line 72
    .local v0, b:F
    const/4 v12, 0x0

    cmpl-float v12, p1, v12

    if-nez v12, :cond_0

    .line 74
    move/from16 v0, p2

    move/from16 v2, p2

    move/from16 v8, p2

    .line 125
    :goto_0
    const/high16 v12, 0x437f

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 126
    .local v5, nr:I
    const/high16 v12, 0x437f

    mul-float/2addr v12, v2

    float-to-int v4, v12

    .line 127
    .local v4, ng:I
    const/high16 v12, 0x437f

    mul-float/2addr v12, v0

    float-to-int v3, v12

    .line 128
    .local v3, nb:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v5, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v3

    return v12

    .line 79
    .end local v3           #nb:I
    .end local v4           #ng:I
    .end local v5           #nr:I
    :cond_0
    const/high16 v12, 0x4270

    div-float v10, p0, v12

    .line 80
    .local v10, sectorPos:F
    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 82
    .local v9, sectorNumber:I
    int-to-float v12, v9

    sub-float v1, v10, v12

    .line 85
    .local v1, fractionalSector:F
    const/high16 v12, 0x3f80

    sub-float/2addr v12, p1

    mul-float v6, p2, v12

    .line 86
    .local v6, p:F
    const/high16 v12, 0x3f80

    mul-float v13, p1, v1

    sub-float/2addr v12, v13

    mul-float v7, p2, v12

    .line 87
    .local v7, q:F
    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    sub-float/2addr v13, v1

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    mul-float v11, p2, v12

    .line 90
    .local v11, t:F
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    move/from16 v8, p2

    .line 94
    move v2, v11

    .line 95
    move v0, v6

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    move v8, v7

    .line 99
    move/from16 v2, p2

    .line 100
    move v0, v6

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    move v8, v6

    .line 104
    move/from16 v2, p2

    .line 105
    move v0, v11

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    move v8, v6

    .line 109
    move v2, v7

    .line 110
    move/from16 v0, p2

    .line 111
    goto :goto_0

    .line 113
    :pswitch_4
    move v8, v11

    .line 114
    move v2, v6

    .line 115
    move/from16 v0, p2

    .line 116
    goto :goto_0

    .line 118
    :pswitch_5
    move/from16 v8, p2

    .line 119
    move v2, v6

    .line 120
    move v0, v7

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static RgbToHsl(III[F)V
    .locals 12
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "hsl"

    .prologue
    .line 138
    const/4 v2, 0x0

    .local v2, h:F
    const/4 v7, 0x0

    .local v7, s:F
    const/4 v3, 0x0

    .line 141
    .local v3, l:F
    int-to-float v8, p0

    const/high16 v9, 0x437f

    div-float v6, v8, v9

    .line 142
    .local v6, r:F
    int-to-float v8, p1

    const/high16 v9, 0x437f

    div-float v1, v8, v9

    .line 143
    .local v1, g:F
    int-to-float v8, p2

    const/high16 v9, 0x437f

    div-float v0, v8, v9

    .line 145
    .local v0, b:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 146
    .local v4, max:F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 149
    .local v5, min:F
    cmpl-float v8, v4, v5

    if-nez v8, :cond_3

    .line 151
    const/4 v2, 0x0

    .line 171
    :cond_0
    :goto_0
    add-float v8, v4, v5

    const/high16 v9, 0x4000

    div-float v3, v8, v9

    .line 174
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_1

    cmpl-float v8, v4, v5

    if-nez v8, :cond_7

    .line 176
    :cond_1
    const/4 v7, 0x0

    .line 187
    :cond_2
    :goto_1
    const/4 v8, 0x0

    aput v2, p3, v8

    .line 188
    const/4 v8, 0x1

    aput v7, p3, v8

    .line 189
    const/4 v8, 0x2

    aput v3, p3, v8

    .line 190
    return-void

    .line 153
    :cond_3
    cmpl-float v8, v4, v6

    if-nez v8, :cond_4

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_4

    .line 155
    const/high16 v8, 0x4270

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float v2, v8, v9

    goto :goto_0

    .line 157
    :cond_4
    cmpl-float v8, v4, v6

    if-nez v8, :cond_5

    cmpg-float v8, v1, v0

    if-gez v8, :cond_5

    .line 159
    const/high16 v8, 0x4270

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x43b4

    add-float v2, v8, v9

    goto :goto_0

    .line 161
    :cond_5
    cmpl-float v8, v4, v1

    if-nez v8, :cond_6

    .line 163
    const/high16 v8, 0x4270

    sub-float v9, v0, v6

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x42f0

    add-float v2, v8, v9

    goto :goto_0

    .line 165
    :cond_6
    cmpl-float v8, v4, v0

    if-nez v8, :cond_0

    .line 167
    const/high16 v8, 0x4270

    sub-float v9, v6, v1

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x4370

    add-float v2, v8, v9

    goto :goto_0

    .line 178
    :cond_7
    const/4 v8, 0x0

    cmpg-float v8, v8, v3

    if-gez v8, :cond_8

    float-to-double v8, v3

    const-wide/high16 v10, 0x3fe0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_8

    .line 180
    sub-float v8, v4, v5

    add-float v9, v4, v5

    div-float v7, v8, v9

    goto :goto_1

    .line 182
    :cond_8
    float-to-double v8, v3

    const-wide/high16 v10, 0x3fe0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 184
    sub-float v8, v4, v5

    const/high16 v9, 0x4000

    add-float v10, v4, v5

    sub-float/2addr v9, v10

    div-float v7, v8, v9

    goto :goto_1
.end method

.method public static RgbToHsl(I[F)V
    .locals 3
    .parameter "color"
    .parameter "hsl"

    .prologue
    .line 133
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(III[F)V

    .line 134
    return-void
.end method

.method public static RgbToHsv(III[F)V
    .locals 11
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "hsv"

    .prologue
    const/high16 v10, 0x437f

    const/high16 v9, 0x4270

    .line 199
    const/4 v2, 0x0

    .local v2, h:F
    const/4 v6, 0x0

    .local v6, s:F
    const/4 v7, 0x0

    .line 202
    .local v7, v:F
    int-to-float v8, p0

    div-float v5, v8, v10

    .line 203
    .local v5, r:F
    int-to-float v8, p1

    div-float v1, v8, v10

    .line 204
    .local v1, g:F
    int-to-float v8, p2

    div-float v0, v8, v10

    .line 206
    .local v0, b:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 207
    .local v3, max:F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 210
    .local v4, min:F
    cmpl-float v8, v3, v4

    if-nez v8, :cond_1

    .line 212
    const/4 v2, 0x0

    .line 232
    :cond_0
    :goto_0
    move v7, v3

    .line 235
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-nez v8, :cond_5

    .line 237
    const/4 v6, 0x0

    .line 243
    :goto_1
    const/4 v8, 0x0

    aput v2, p3, v8

    .line 244
    const/4 v8, 0x1

    aput v6, p3, v8

    .line 245
    const/4 v8, 0x2

    aput v7, p3, v8

    .line 246
    return-void

    .line 214
    :cond_1
    cmpl-float v8, v3, v5

    if-nez v8, :cond_2

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_2

    .line 216
    sub-float v8, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float v2, v8, v9

    goto :goto_0

    .line 218
    :cond_2
    cmpl-float v8, v3, v5

    if-nez v8, :cond_3

    cmpg-float v8, v1, v0

    if-gez v8, :cond_3

    .line 220
    sub-float v8, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x43b4

    add-float v2, v8, v9

    goto :goto_0

    .line 222
    :cond_3
    cmpl-float v8, v3, v1

    if-nez v8, :cond_4

    .line 224
    sub-float v8, v0, v5

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x42f0

    add-float v2, v8, v9

    goto :goto_0

    .line 226
    :cond_4
    cmpl-float v8, v3, v0

    if-nez v8, :cond_0

    .line 228
    sub-float v8, v5, v1

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x4370

    add-float v2, v8, v9

    goto :goto_0

    .line 240
    :cond_5
    sub-float v8, v3, v4

    div-float v6, v8, v3

    goto :goto_1
.end method

.method public static RgbToHsv(I[F)V
    .locals 3
    .parameter "color"
    .parameter "hsv"

    .prologue
    .line 194
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(III[F)V

    .line 195
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "min"
    .parameter "value"
    .parameter "max"

    .prologue
    .line 267
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    .line 269
    .end local p0
    :goto_0
    return p0

    .line 268
    .restart local p0
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    move p0, p1

    .line 269
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "min"
    .parameter "value"
    .parameter "max"

    .prologue
    .line 261
    if-gt p1, p0, :cond_0

    .line 263
    .end local p0
    :goto_0
    return p0

    .line 262
    .restart local p0
    :cond_0
    if-lt p1, p2, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    move p0, p1

    .line 263
    goto :goto_0
.end method

.method public static convertColorToGrayscale(I)I
    .locals 3
    .parameter "color"

    .prologue
    .line 273
    const v0, 0x3e991687

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f1645a2

    const v2, 0xff00

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3de978d5

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate(IIIII)I
    .locals 3
    .parameter "inMin"
    .parameter "inMax"
    .parameter "outMin"
    .parameter "outMax"
    .parameter "value"

    .prologue
    .line 257
    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate([F[FF[F)V
    .locals 5
    .parameter "hsl1"
    .parameter "hsl2"
    .parameter "amount"
    .parameter "hslOut"

    .prologue
    .line 250
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 251
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 252
    aget v2, p0, v0

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method
