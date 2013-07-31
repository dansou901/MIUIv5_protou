.class public Lmiui/maml/elements/ImageScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageScreenElement$1;,
        Lmiui/maml/elements/ImageScreenElement$pair;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"


# instance fields
.field private mAniHeight:F

.field private mAniWidth:F

.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mBmpHeight:F

.field private mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mBmpWidth:F

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpSrcH:Lmiui/maml/data/Expression;

.field private mExpSrcW:Lmiui/maml/data/Expression;

.field private mExpSrcX:Lmiui/maml/data/Expression;

.field private mExpSrcY:Lmiui/maml/data/Expression;

.field private mHasSrcRect:Z

.field private mHeight:F

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 101
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 104
    iput-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 105
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 106
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 108
    const-string/jumbo v2, "srcX"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    .line 109
    const-string/jumbo v2, "srcY"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    .line 110
    const-string/jumbo v2, "srcW"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    .line 111
    const-string/jumbo v2, "srcH"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    .line 112
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    .line 113
    iput-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 118
    :cond_0
    const-string/jumbo v2, "useVirtualScreen"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 119
    .local v1, useVirtualScreen:Z
    const-string/jumbo v2, "srcType"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, srcType:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v0, "VirtualScreen"

    .end local v0           #srcType:Ljava/lang/String;
    :cond_1
    invoke-static {p2, v0}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 122
    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 123
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v4, "bmp_width"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 124
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v4, "bmp_height"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 126
    :cond_2
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 283
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 141
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 143
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 144
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/animation/AnimatedElement;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Lmiui/maml/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/animation/AnimatedElement;II)V
    .locals 46
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 310
    .local v38, rawMask:Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 362
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v30, v0

    .line 314
    .local v30, maskX:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getY()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 315
    .local v32, maskY:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getRotationAngle()F

    move-result v29

    .line 316
    .local v29, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v17

    .line 318
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 319
    move/from16 v0, p3

    int-to-double v9, v0

    sub-double v30, v30, v9

    .line 320
    move/from16 v0, p4

    int-to-double v9, v0

    sub-double v32, v32, v9

    .line 348
    .end local v17           #angle:F
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v30

    double-to-float v2, v9

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getPivotY()F

    move-result v9

    float-to-double v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v9

    float-to-double v9, v9

    add-double v9, v9, v32

    double-to-float v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 350
    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v34, v0

    .line 351
    .local v34, mx:I
    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v35, v0

    .line 352
    .local v35, my:I
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getWidth()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 353
    .local v43, width:I
    if-gez v43, :cond_2

    .line 354
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    .line 355
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getHeight()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 356
    .local v28, height:I
    if-gez v28, :cond_3

    .line 357
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v9, v34, v43

    add-int v10, v35, v28

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getAlpha()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 322
    .end local v28           #height:I
    .end local v34           #mx:I
    .end local v35           #my:I
    .end local v43           #width:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v29, v29, v17

    .line 323
    const-wide v36, 0x400921fb54442c46L

    .line 324
    .local v36, pi:D
    move/from16 v0, v17

    float-to-double v9, v0

    const-wide v11, 0x400921fb54442c46L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double v7, v9, v11

    .line 325
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v2

    float-to-double v3, v2

    .line 326
    .local v3, cx:D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v2

    float-to-double v5, v2

    .line 327
    .local v5, cy:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 328
    new-instance v2, Lmiui/maml/elements/ImageScreenElement$pair;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lmiui/maml/elements/ImageScreenElement$pair;-><init>(Lmiui/maml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    .line 330
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 332
    move/from16 v0, p3

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v39, v9, v11

    .line 333
    .local v39, rx:D
    move/from16 v0, p4

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v41, v9, v11

    .line 336
    .local v41, ry:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getPivotY()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/animation/AnimatedElement;->getRotationAngle()F

    move-result v2

    float-to-double v14, v2

    const-wide v44, 0x400921fb54442c46L

    mul-double v14, v14, v44

    const-wide v44, 0x4066800000000000L

    div-double v14, v14, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v30, v30, v9

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v32, v32, v9

    .line 339
    sub-double v24, v30, v39

    .line 340
    .local v24, dx:D
    sub-double v26, v32, v41

    .line 341
    .local v26, dy:D
    mul-double v9, v24, v24

    mul-double v11, v26, v26

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 342
    .local v22, dm:D
    div-double v9, v24, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 343
    .local v18, angleB:D
    const-wide/16 v9, 0x0

    cmpl-double v2, v26, v9

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 344
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v30, v22, v9

    .line 345
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v32, v22, v9

    goto/16 :goto_1

    .line 343
    .end local v20           #angleC:D
    :cond_6
    const-wide v9, 0x400921fb54442c46L

    add-double/2addr v9, v7

    sub-double v20, v9, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p7, pr:Lmiui/maml/elements/ImageScreenElement$pair;,"Lmiui/maml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v9, p1, p1

    mul-double v11, p3, p3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 294
    .local v5, cm:D
    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_0

    .line 295
    const-wide v7, 0x400921fb54442c46L

    .line 296
    .local v7, pi:D
    div-double v9, p1, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 297
    .local v1, angle1:D
    const-wide v9, 0x400921fb54442c46L

    sub-double/2addr v9, v1

    sub-double v3, v9, p5

    .line 298
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 299
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    sub-double v9, p3, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 304
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    .end local v7           #pi:D
    :goto_0
    return-void

    .line 301
    :cond_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 302
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 416
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 420
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 423
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 425
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 426
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 427
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 430
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniWidth:F

    .line 431
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpWidth:F

    .line 432
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniWidth:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 433
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniWidth:F

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    .line 439
    :goto_0
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniHeight:F

    .line 440
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpHeight:F

    .line 441
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniHeight:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 442
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mAniHeight:F

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    .line 448
    :goto_1
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mX:F

    .line 449
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mY:F

    .line 450
    return-void

    .line 434
    :cond_2
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v0, :cond_3

    .line 435
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    goto :goto_0

    .line 437
    :cond_3
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpWidth:F

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    goto :goto_0

    .line 443
    :cond_4
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v0, :cond_5

    .line 444
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    goto :goto_1

    .line 446
    :cond_5
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpHeight:F

    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    goto :goto_1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 195
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v5

    .line 199
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v14

    .line 201
    .local v14, oldDensity:I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 207
    .local v15, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 208
    .local v16, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_7

    .line 211
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v17

    if-eqz v17, :cond_3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v13

    .line 213
    .local v13, np:Landroid/graphics/NinePatch;
    if-eqz v13, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    .end local v13           #np:Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 217
    .restart local v13       #np:Landroid/graphics/NinePatch;
    :cond_2
    const-string v17, "ImageScreenElement"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    .end local v13           #np:Landroid/graphics/NinePatch;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 222
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 228
    :cond_6
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 232
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v12

    .line 233
    .local v12, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v11

    .line 234
    .local v11, maxHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 236
    float-to-double v0, v12

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v8, v0

    .line 237
    .local v8, bufferWidth:I
    float-to-double v0, v11

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v7, v0

    .line 238
    .local v7, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    if-le v7, v0, :cond_9

    .line 239
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v7, v1}, Lmiui/maml/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 241
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 243
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 246
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 250
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/maml/animation/AnimatedElement;

    .line 256
    .local v10, mask:Lmiui/maml/animation/AnimatedElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v10, v15, v2}, Lmiui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/animation/AnimatedElement;II)V

    goto :goto_3

    .line 252
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mask:Lmiui/maml/animation/AnimatedElement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 259
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 383
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 387
    :cond_0
    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 388
    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 389
    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 390
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 277
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lmiui/maml/elements/ImageScreenElement;->mY:F

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 153
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 156
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/AnimatedElement;

    .line 158
    .local v1, mask:Lmiui/maml/animation/AnimatedElement;
    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->init()V

    goto :goto_0

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v3}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 164
    :cond_1
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lmiui/maml/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 135
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 395
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/AnimatedElement;

    .line 397
    .local v1, mask:Lmiui/maml/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/animation/AnimatedElement;->reset(J)V

    goto :goto_0

    .line 400
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 403
    :cond_1
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 267
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 268
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    .line 270
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->tick(J)V

    .line 367
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/AnimatedElement;

    .line 372
    .local v1, mask:Lmiui/maml/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/animation/AnimatedElement;->tick(J)V

    goto :goto_1

    .line 376
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/animation/AnimatedElement;
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    goto :goto_0
.end method
