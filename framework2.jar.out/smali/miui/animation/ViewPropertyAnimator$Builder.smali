.class public Lmiui/animation/ViewPropertyAnimator$Builder;
.super Lmiui/animation/AnimatorBuilder;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/animation/ViewPropertyAnimator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lmiui/animation/AnimatorBuilder;-><init>(Landroid/animation/Animator;)V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/animation/Animator$AnimatorListener;)Lmiui/animation/AnimatorBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lmiui/animation/ViewPropertyAnimator$Builder;->addListener(Landroid/animation/Animator$AnimatorListener;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/animation/Animator$AnimatorListener;)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 93
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lmiui/animation/AnimatorBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "duration"

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 84
    return-object p0
.end method

.method public setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Lmiui/animation/ViewPropertyAnimator;->setFinalValue(F)V

    .line 69
    return-object p0
.end method

.method public setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "visibility"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Lmiui/animation/ViewPropertyAnimator;->setFinalVisibility(I)V

    .line 74
    return-object p0
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    return-object p0
.end method

.method public setRepeatCount(I)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Lmiui/animation/ViewPropertyAnimator;->setRepeatCount(I)V

    .line 59
    return-object p0
.end method

.method public setRepeatMode(I)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Lmiui/animation/ViewPropertyAnimator;->setRepeatMode(I)V

    .line 64
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Lmiui/animation/AnimatorBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lmiui/animation/ViewPropertyAnimator$Builder;->setStartDelay(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 78
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$Builder;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 79
    return-object p0
.end method
