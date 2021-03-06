.class public Lcom/android/internal/policy/impl/MagnifyingGlassView;
.super Landroid/view/View;
.source "MagnifyingGlassView.java"


# instance fields
.field private contentBitmap:Landroid/graphics/Bitmap;

.field private contentCanvas:Landroid/graphics/Canvas;

.field private contourBitmap:Landroid/graphics/Bitmap;

.field private decorView:Landroid/view/ViewGroup;

.field private height:I

.field private innerShadowBitmap:Landroid/graphics/Bitmap;

.field private position:Landroid/graphics/Point;

.field private width:I

.field private yOffset:I

.field private zoom:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;II)V
    .locals 3
    .parameter "decorView"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iput p3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->decorView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    const/4 v0, 0x1

    const/high16 v1, 0x4170

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->yOffset:I

    return-void
.end method

.method private updateScreenshot()V
    .locals 15

    .prologue
    const/high16 v4, 0x4000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->decorView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .local v12, firstView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->position:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v13, v0, v2

    .local v13, translateX:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->position:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v14, v0, v2

    .local v14, translateY:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    neg-float v2, v13

    neg-float v3, v14

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paint:Landroid/graphics/Paint;
    const v0, -0xcccccd

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    cmpg-float v0, v13, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    neg-float v3, v13

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    cmpg-float v0, v14, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v3, v2

    neg-float v4, v14

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v0, v0

    add-float/2addr v0, v13

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v0, v2

    sub-float v7, v0, v13

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v9, v0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v10, v0

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v0, v0

    add-float/2addr v0, v14

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    mul-float/2addr v2, v3

    sub-float/2addr v2, v14

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v12           #firstView:Landroid/view/View;
    .end local v13           #translateX:F
    .end local v14           #translateY:F
    :cond_4
    return-void

    .restart local v12       #firstView:Landroid/view/View;
    .restart local v13       #translateX:F
    .restart local v14       #translateY:F
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createContour()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v4, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, contourCanvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    const v3, 0x22ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    const v3, -0xcc4a1b

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Rect;->inset(II)V

    const v3, -0x7b7b7c

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public createInnerShadow()V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x1

    const/high16 v10, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v8, innerShadowCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .local v7, bounds:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .local v9, paint:Landroid/graphics/Paint;
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    div-float/2addr v3, v10

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .local v0, radialPaint:Landroid/graphics/RadialGradient;
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v8, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3et 0x2et 0x0t 0x55t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7bt 0x14t 0x6et 0x3ft
        0x9at 0x99t 0x99t 0x3ft
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->position:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->createContour()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->createInnerShadow()V

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .local v9, saveCount:I
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    invoke-virtual {p1, v10, v10, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .local v8, paint:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    invoke-direct {v7, v10, v10, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v7, bounds:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contourBitmap:Landroid/graphics/Bitmap;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->updateScreenshot()V

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->contentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->innerShadowBitmap:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public getPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->position:Landroid/graphics/Point;

    return-object v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .parameter "position"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->position:Landroid/graphics/Point;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->yOffset:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->yOffset:I

    sub-int v0, v2, v3

    .local v0, overflow:I
    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .end local v0           #overflow:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->yOffset:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MagnifyingGlassView;->zoom:F

    return-void
.end method
