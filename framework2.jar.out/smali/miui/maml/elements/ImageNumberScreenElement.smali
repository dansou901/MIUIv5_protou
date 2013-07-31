.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mPreNumber:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 19
    const-string v0, "ImageNumberScreenElement"

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 35
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageNumberScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 36
    return-void
.end method

.method private getNumberBitmap(C)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "c"

    .prologue
    .line 117
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_2

    .line 103
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 105
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_4

    .line 107
    :cond_1
    :goto_1
    iput p2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 108
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 113
    :cond_2
    return-object v0

    .line 104
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    .line 105
    :cond_4
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 47
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v9}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v9

    double-to-int v5, v9

    .line 49
    .local v5, number:I
    iget v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    if-eq v5, v9, :cond_3

    .line 50
    iput v5, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 51
    iput v11, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 53
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, numStr:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, bmp0:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 57
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Fail to get bitmap for number 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1           #bmp0:Landroid/graphics/Bitmap;
    .end local v4           #numStr:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 61
    .restart local v1       #bmp0:Landroid/graphics/Bitmap;
    .restart local v4       #numStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    mul-int v7, v9, v10

    .line 62
    .local v7, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 63
    .local v2, height:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    invoke-direct {p0, v7, v2, v9}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    .line 65
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 67
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 70
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to get bitmap for number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v7, v9, v10

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 76
    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 77
    .local v6, oldBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    invoke-direct {p0, v7, v2, v9}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 78
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    :cond_2
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v10, v10

    invoke-virtual {v9, v0, v10, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    goto :goto_2

    .line 86
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmp0:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #numStr:Ljava/lang/String;
    .end local v6           #oldBmp:Landroid/graphics/Bitmap;
    .end local v7           #width:I
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 42
    const-string v0, "number"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    .line 43
    return-void
.end method
