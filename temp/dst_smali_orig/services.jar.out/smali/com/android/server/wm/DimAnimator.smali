.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimAnimator$Parameters;
    }
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimAnimator"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 12
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .local v3, dw:I
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .local v0, dh:I
    iget-object v7, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v7, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v5, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .local v5, target:F
    iget-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  DIM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": SHOW pos=(0,0) ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    :try_start_0
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/Surface;->setLayer(I)V

    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v8, :cond_2

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  DIM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": layer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_5

    iput-wide p3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    iget-boolean v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    .local v1, duration:J
    :goto_1
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .local v6, tv:Landroid/util/TypedValue;
    const/high16 v8, 0x112

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v6, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_9

    long-to-float v8, v1

    long-to-float v9, v1

    invoke-virtual {v6, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    float-to-long v1, v8

    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_3
    :goto_2
    const-wide/16 v8, 0x1

    cmp-long v8, v1, v8

    if-gez v8, :cond_4

    const-wide/16 v1, 0x1

    :cond_4
    iput v5, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v9, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v8, v9

    long-to-float v9, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .end local v1           #duration:J
    :cond_5
    return-void

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    const-string v9, "Failure showing dim surface"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v8, v3, :cond_7

    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v8, v0, :cond_1

    :cond_7
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v1, 0xc8

    goto :goto_1

    .restart local v1       #duration:J
    .restart local v6       #tv:Landroid/util/TypedValue;
    :cond_9
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_3

    iget v8, v6, Landroid/util/TypedValue;->data:I

    int-to-long v1, v8

    goto :goto_2
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .local v0, animating:Z
    :goto_0
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    if-eqz p4, :cond_5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  DIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    :cond_3
    :goto_2
    return v0

    .end local v0           #animating:Z
    :cond_4
    move v0, v2

    goto :goto_0

    .restart local v0       #animating:Z
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_9

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": final alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    if-nez p1, :cond_3

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": HIDE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
