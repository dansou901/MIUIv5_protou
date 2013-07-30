.class public Landroid/widget/OnDemandButton;
.super Landroid/widget/Button;
.source "OnDemandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;

.field private scaleXDifference:I

.field private scaleYDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "OnDemandButton"

    iput-object v0, p0, Landroid/widget/OnDemandButton;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->DEBUG:Z

    iput v1, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    iput v1, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    iput-object v2, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/OnDemandButton;->initAnimationEnv(Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OnDemandButton"

    iput-object v0, p0, Landroid/widget/OnDemandButton;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandButton;->DEBUG:Z

    iput v1, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    iput v1, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    iput-object v2, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/OnDemandButton;->initAnimationEnv(Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iput-object v1, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private get2DPressAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .local v6, width:F
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .local v0, height:F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .local v4, scaleX:F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .local v5, scaleY:F
    const-string v7, "scaleX"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, pressAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x3c

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private get2DReleaseAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .local v6, width:F
    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .local v0, height:F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .local v5, scaleY:F
    iget v7, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .local v4, scaleX:F
    const-string v7, "scaleX"

    new-array v8, v11, [F

    aput v4, v8, v9

    aput v12, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v12, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v9

    aput-object v2, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, releaseAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x3c

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private initAnimationEnv(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resource"

    .prologue
    const/16 v1, 0xa

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x20e00bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    const v0, 0x20e00bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    iget v0, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    if-gez v0, :cond_0

    :cond_2
    iput v1, p0, Landroid/widget/OnDemandButton;->scaleXDifference:I

    iput v1, p0, Landroid/widget/OnDemandButton;->scaleYDifference:I

    const-string v0, "OnDemandButton"

    const-string v1, "!!!!!incorrect load scale resource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    invoke-virtual {p0}, Landroid/widget/OnDemandButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    invoke-direct {p0}, Landroid/widget/OnDemandButton;->get2DPressAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/widget/OnDemandButton;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    invoke-direct {p0}, Landroid/widget/OnDemandButton;->get2DReleaseAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/widget/OnDemandButton;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Landroid/widget/OnDemandButton;->cancelAnimator()V

    invoke-virtual {p0, v1}, Landroid/widget/OnDemandButton;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/OnDemandButton;->setScaleY(F)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
