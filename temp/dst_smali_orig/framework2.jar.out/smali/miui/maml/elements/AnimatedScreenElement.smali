.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field private mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mAni:Lmiui/maml/animation/AnimatedElement;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPivotZ:Lmiui/maml/data/Expression;

.field private mRotationX:Lmiui/maml/data/Expression;

.field private mRotationY:Lmiui/maml/data/Expression;

.field private mRotationZ:Lmiui/maml/data/Expression;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field private mScaleXExpression:Lmiui/maml/data/Expression;

.field private mScaleYExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lmiui/maml/animation/AnimatedElement;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    :cond_0
    const-string v0, "scale"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    const-string v0, "scaleX"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    const-string v0, "scaleY"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    const-string v0, "angleX"

    const-string v1, "rotationX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    const-string v0, "angleY"

    const-string v1, "rotationY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    const-string v0, "angleZ"

    const-string v1, "rotationZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    const-string v0, "centerZ"

    const-string v1, "pivotZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_2
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .local v0, exp:Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getAlpha()I

    move-result v0

    .local v0, a:I
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    .end local v0           #a:I
    :goto_0
    return v0

    .restart local v0       #a:I
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    return v0
.end method

.method protected getTop()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->init()V

    return-void
.end method

.method protected isVisibleInner()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "c"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v12

    add-float v1, v11, v12

    .local v1, pivotX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v12

    add-float v2, v11, v12

    .local v2, pivotY:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .local v7, sc:I
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    .local v10, var:Lmiui/maml/data/Variables;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v11}, Landroid/graphics/Camera;->save()V

    const/4 v4, 0x0

    .local v4, rx:F
    const/4 v5, 0x0

    .local v5, ry:F
    const/4 v6, 0x0

    .local v6, rz:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v4, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v5, v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v6, v11

    :cond_3
    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-eqz v11, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v11, v4, v5, v6}, Landroid/graphics/Camera;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    invoke-virtual {v14, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v12, v1

    neg-float v13, v2

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v11}, Landroid/graphics/Camera;->restore()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .end local v4           #rx:F
    .end local v5           #ry:F
    .end local v6           #rz:F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v3

    .local v3, rotation:F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_7
    const/4 v8, 0x0

    .local v8, scaleX:F
    const/4 v9, 0x0

    .local v9, scaleY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v9, v11

    move v8, v9

    :cond_8
    :goto_1
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-nez v11, :cond_9

    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-eqz v11, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v8, v9, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v11, :cond_d

    const/high16 v8, 0x3f80

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-nez v11, :cond_e

    const/high16 v9, 0x3f80

    :goto_3
    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v8, v11

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v9, v11

    goto :goto_3
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;->reset(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;->tick(J)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    :cond_0
    return-void
.end method
