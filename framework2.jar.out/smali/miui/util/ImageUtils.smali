.class public Lmiui/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ImageUtils$CropOption;
    }
.end annotation


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    .line 319
    const-string v0, "imageutilities_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    return-void

    .line 280
    nop

    :array_0
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method public static computeSampleSize(Lmiui/util/InputStreamLoader;I)I
    .locals 8
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 33
    const/4 v1, 0x1

    .line 34
    .local v1, roundedSize:I
    if-lez p1, :cond_0

    .line 35
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 36
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v4

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 37
    .local v2, size:D
    :goto_0
    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 38
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #size:D
    :cond_0
    return v1
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/util/ImageUtils$CropOption;Z)Z
    .locals 22
    .parameter "srcBmp"
    .parameter "destBmp"
    .parameter "cOpt"
    .parameter "recycleSrcBmp"

    .prologue
    .line 174
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 176
    .local v14, srcWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 177
    .local v11, srcHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 178
    .local v6, destWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 180
    .local v5, destHeight:I
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    .line 181
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    invoke-static {v6, v6}, Ljava/lang/Math;->min(II)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    .line 182
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->rx:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->rx:I

    .line 183
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->rx:I

    move/from16 v17, v0

    div-int/lit8 v18, v6, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->rx:I

    .line 184
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->ry:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->ry:I

    .line 185
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->ry:I

    move/from16 v17, v0

    div-int/lit8 v18, v5, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lmiui/util/ImageUtils$CropOption;->ry:I

    .line 187
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v4, canvas:Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 190
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .local v8, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 192
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 195
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->rx:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->ry:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-lez v17, :cond_0

    .line 196
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v21, v0

    sub-int v21, v5, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->rx:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->ry:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 202
    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v16, v6, v17

    .line 203
    .local v16, visibleWidth:I
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v15, v5, v17

    .line 204
    .local v15, visibleHeight:I
    const/high16 v17, 0x3f80

    int-to-float v0, v14

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 205
    .local v9, ratio:F
    int-to-float v0, v14

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 206
    .local v12, srcLeft:I
    int-to-float v0, v11

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 207
    .local v13, srcTop:I
    new-instance v10, Landroid/graphics/Rect;

    sub-int v17, v14, v12

    sub-int v18, v11, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v12, v13, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .local v10, src:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v19, v0

    sub-int v19, v6, v19

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v20, v0

    sub-int v20, v5, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 209
    .local v7, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    move/from16 v17, v0

    if-lez v17, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    move/from16 v17, v0

    ushr-int/lit8 v17, v17, 0x18

    if-eqz v17, :cond_1

    .line 212
    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 214
    new-instance v17, Landroid/graphics/RectF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    int-to-float v0, v6

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->rx:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lmiui/util/ImageUtils$CropOption;->ry:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    :cond_1
    if-eqz p3, :cond_2

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    :cond_2
    const/16 v17, 0x1

    .line 222
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #destHeight:I
    .end local v6           #destWidth:I
    .end local v7           #dst:Landroid/graphics/Rect;
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v9           #ratio:F
    .end local v10           #src:Landroid/graphics/Rect;
    .end local v11           #srcHeight:I
    .end local v12           #srcLeft:I
    .end local v13           #srcTop:I
    .end local v14           #srcWidth:I
    .end local v15           #visibleHeight:I
    .end local v16           #visibleWidth:I
    :goto_0
    return v17

    :cond_3
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 2
    .parameter "srcBmp"
    .parameter "destBmp"
    .parameter "recycleSrcBmp"

    .prologue
    const/4 v1, 0x0

    .line 170
    new-instance v0, Lmiui/util/ImageUtils$CropOption;

    invoke-direct {v0, v1, v1, v1, v1}, Lmiui/util/ImageUtils$CropOption;-><init>(IIII)V

    invoke-static {p0, p1, v0, p2}, Lmiui/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/util/ImageUtils$CropOption;Z)Z

    move-result v0

    return v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "bmpIn"
    .parameter "bmpOut"
    .parameter "radius"

    .prologue
    .line 313
    invoke-static {p0, p1, p2}, Lmiui/util/ImageUtils;->native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 314
    return-void
.end method

.method public static final getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 65
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 66
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->computeSampleSize(Lmiui/util/InputStreamLoader;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, retry:I
    move v4, v3

    .line 71
    .end local v3           #retry:I
    .local v4, retry:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #retry:I
    .restart local v3       #retry:I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    :goto_1
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 86
    :cond_0
    return-object v0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 78
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    move v4, v3

    .end local v3           #retry:I
    .restart local v4       #retry:I
    goto :goto_0

    .line 79
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .end local v4           #retry:I
    .restart local v3       #retry:I
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .line 82
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v5
.end method

.method public static getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 90
    const/4 v0, 0x2

    .line 91
    .local v0, PIXEL_FACTOR_FOR_COMPUTING_SAMPLE_SIZE:I
    mul-int v3, p1, p2

    mul-int/lit8 v2, v3, 0x2

    .line 92
    .local v2, pixelSize:I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 93
    :cond_0
    const/4 v2, -0x1

    .line 95
    :cond_1
    invoke-static {p0, v2}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    .local v1, destBmp:Landroid/graphics/Bitmap;
    if-lez v2, :cond_2

    .line 97
    const/4 v3, 0x1

    invoke-static {v1, p1, p2, v3}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    :cond_2
    return-object v1
.end method

.method public static getBitmap(Lmiui/util/InputStreamLoader;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "reusedBitmap"

    .prologue
    const/4 v6, 0x1

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 110
    .local v2, sizeOp:Landroid/graphics/BitmapFactory$Options;
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 112
    :try_start_0
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 113
    .local v1, op:Landroid/graphics/BitmapFactory$Options;
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 114
    const/4 v4, 0x1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    .end local v1           #op:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 121
    :cond_0
    if-nez v3, :cond_1

    .line 122
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    .end local v2           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    move-object v0, v3

    .line 127
    .local v0, destBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 128
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 129
    invoke-static {v0, p1, p2, v6}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :cond_2
    :goto_1
    return-object v0

    .line 118
    .end local v0           #destBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v4

    .line 132
    .end local v2           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    .restart local v0       #destBitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p0, p1, p2}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 116
    .end local v0           #destBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 58
    new-instance v0, Lmiui/util/InputStreamLoader;

    invoke-direct {v0, p0}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static final getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "streamLoader"

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 54
    return-object v0

    .line 52
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v1

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 26
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 28
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 29
    return-object v0
.end method

.method public static isPngFormat(Lmiui/util/InputStreamLoader;)Z
    .locals 5
    .parameter "streamLoader"

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 285
    .local v3, ret:Z
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    .line 286
    .local v1, is:Ljava/io/InputStream;
    sget-object v4, Lmiui/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v4, v4

    new-array v0, v4, [B

    .line 287
    .local v0, head:[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 288
    .local v2, n:I
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 289
    invoke-static {v0}, Lmiui/util/ImageUtils;->isPngFormat([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 293
    :cond_0
    if-eqz p0, :cond_1

    .line 294
    .end local v0           #head:[B
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #n:I
    :goto_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 297
    :cond_1
    return v3

    .line 293
    :catchall_0
    move-exception v4

    if-eqz p0, :cond_2

    .line 294
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 293
    :cond_2
    throw v4

    .line 291
    :catch_0
    move-exception v4

    .line 293
    if-eqz p0, :cond_1

    goto :goto_0
.end method

.method public static isPngFormat([B)Z
    .locals 4
    .parameter "pngHead"

    .prologue
    const/4 v1, 0x0

    .line 301
    if-eqz p0, :cond_0

    array-length v2, p0

    sget-object v3, Lmiui/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lmiui/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 305
    aget-byte v2, p0, v0

    sget-object v3, Lmiui/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static native native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z
    .locals 4
    .parameter "streamLoader"
    .parameter "path"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    const/4 v3, 0x1

    .line 226
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p3, v3, :cond_2

    .line 227
    :cond_0
    const/4 v2, 0x0

    .line 245
    :cond_1
    :goto_0
    return v2

    .line 230
    :cond_2
    const/4 v2, 0x0

    .line 231
    .local v2, result:Z
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 232
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    .line 236
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v3, p2, :cond_3

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, p3, :cond_3

    .line 237
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 239
    :cond_3
    invoke-static {p0, p2, p3}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 241
    invoke-static {p0}, Lmiui/util/ImageUtils;->isPngFormat(Lmiui/util/InputStreamLoader;)Z

    move-result v3

    invoke-static {v0, p1, v3}, Lmiui/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v2

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .parameter "bitmap"
    .parameter "path"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "bitmap"
    .parameter "path"
    .parameter "saveToPng"

    .prologue
    .line 254
    if-eqz p0, :cond_1

    .line 255
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, outputStream:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 257
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 258
    const/4 v1, 0x1

    .line 262
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return v1

    .line 256
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z
    .locals 4
    .parameter "streamLoader"
    .parameter "path"

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v0

    .line 270
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 271
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 272
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v2, 0x1

    .line 276
    .end local v0           #inputStream:Ljava/io/InputStream;
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 274
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IILmiui/util/ImageUtils$CropOption;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "srcBmp"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "cropOption"
    .parameter "recycleSrcBmp"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, destBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 146
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 148
    .local v2, srcHeight:I
    if-ne v3, p1, :cond_0

    if-ne v2, p2, :cond_0

    iget v4, p3, Lmiui/util/ImageUtils$CropOption;->rx:I

    if-gtz v4, :cond_0

    iget v4, p3, Lmiui/util/ImageUtils$CropOption;->ry:I

    if-gtz v4, :cond_0

    iget v4, p3, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    if-gtz v4, :cond_0

    .line 150
    move-object v1, p0

    .line 163
    .end local v2           #srcHeight:I
    .end local v3           #srcWidth:I
    :goto_0
    return-object v1

    .line 152
    .restart local v2       #srcHeight:I
    .restart local v3       #srcWidth:I
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 153
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 156
    :cond_1
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 157
    invoke-static {p0, v1, p3, p4}, Lmiui/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/util/ImageUtils$CropOption;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 159
    .end local v0           #config:Landroid/graphics/Bitmap$Config;
    .end local v2           #srcHeight:I
    .end local v3           #srcWidth:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 160
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "srcBmp"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "recycleSrcBmp"

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v0, Lmiui/util/ImageUtils$CropOption;

    invoke-direct {v0, v1, v1, v1, v1}, Lmiui/util/ImageUtils$CropOption;-><init>(IIII)V

    invoke-static {p0, p1, p2, v0, p3}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IILmiui/util/ImageUtils$CropOption;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
