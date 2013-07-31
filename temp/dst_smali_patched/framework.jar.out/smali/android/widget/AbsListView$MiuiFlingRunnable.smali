.class Landroid/widget/AbsListView$MiuiFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiFlingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView$MiuiFlingRunnable;->getScroller()Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isSpringOverScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setSpringOverScrollEnable(Z)V

    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 7
    .parameter "delta"

    .prologue
    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    .local v2, savedOverflingDistance:I
    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isSpringOverScrollEnabled()Z

    move-result v0

    .local v0, enable:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$MiuiFlingRunnable;->getScroller()Landroid/widget/OverScroller;

    move-result-object v1

    .local v1, overScroller:Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrYVelocity()F

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMaximumVelocity:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .local v4, t:F
    const/high16 v5, 0x4370

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f80

    add-float v3, v5, v6

    .local v3, scale:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/OverScroller;->setDecelerationScale(F)V

    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/OverScroller;->setTotalOverDistance(I)V

    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    .end local v1           #overScroller:Landroid/widget/OverScroller;
    .end local v3           #scale:F
    .end local v4           #t:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    if-eqz v0, :cond_1

    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iput v2, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    :cond_1
    return-void
.end method

.method startOverfling(I)V
    .locals 8
    .parameter "initialVelocity"

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsListView$MiuiFlingRunnable;->getScroller()Landroid/widget/OverScroller;

    move-result-object v1

    .local v1, overScroller:Landroid/widget/OverScroller;
    iget-object v4, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isSpringOverScrollEnabled()Z

    move-result v0

    .local v0, enable:Z
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .local v3, t:F
    float-to-double v4, v3

    const-wide/high16 v6, 0x4008

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034

    mul-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x4040

    add-float v2, v4, v5

    .local v2, scale:F
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setFriction(F)V

    .end local v2           #scale:F
    .end local v3           #t:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/OverScroller;->setFriction(F)V

    :cond_1
    return-void
.end method

.method startSpringback()V
    .locals 6

    .prologue
    iget-object v2, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isSpringOverScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsListView$MiuiFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .local v1, t:F
    float-to-double v2, v1

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4034

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float v0, v2, v3

    .local v0, scale:F
    invoke-virtual {p0}, Landroid/widget/AbsListView$MiuiFlingRunnable;->getScroller()Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/OverScroller;->setDecelerationScale(F)V

    .end local v0           #scale:F
    .end local v1           #t:F
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    return-void
.end method
