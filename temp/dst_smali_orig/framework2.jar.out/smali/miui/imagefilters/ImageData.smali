.class public Lmiui/imagefilters/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field height:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/imagefilters/ImageData;->width:I

    iput p2, p0, Lmiui/imagefilters/ImageData;->height:I

    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    return-void
.end method

.method public static bitampToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    new-instance v8, Lmiui/imagefilters/ImageData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v0, v1}, Lmiui/imagefilters/ImageData;-><init>(II)V

    .local v8, imgData:Lmiui/imagefilters/ImageData;
    iget-object v1, v8, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v3, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v6, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v7, v8, Lmiui/imagefilters/ImageData;->height:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v8
.end method

.method public static imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "imgData"

    .prologue
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v1, p0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, p0, Lmiui/imagefilters/ImageData;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
