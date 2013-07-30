.class Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;
.super Landroid/view/animation/Animation;
.source "HtcAnimationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HtcAnimationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeOutAnimation"
.end annotation


# instance fields
.field mIsEnter:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "isEnter"

    .prologue
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;->setDuration(J)V

    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;->mIsEnter:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    move v0, p1

    .local v0, x:F
    iget-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;->mIsEnter:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    sub-float v0, v1, v2

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;->mIsEnter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 1
    .parameter "scale"

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_0
    return-void
.end method
