.class Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandCollapseAnimator"
.end annotation


# instance fields
.field mCollapseAnimator:Landroid/animation/Animator;

.field mExpandAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/v5/view/menu/ActionMenuView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method collapse()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->initialize()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method expand()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->initialize()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method initialize()V
    .locals 8

    .prologue
    const/high16 v7, 0x10e

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mCollapseAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-static {v3}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionBarByView(Landroid/view/View;)Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/v5/app/ActionBarImpl;->getDimAnimator(ZLandroid/view/View$OnClickListener;)Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;

    move-result-object v1

    .local v1, dimAnimator:Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, set:Landroid/animation/AnimatorSet;
    const-string v3, "Value"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .local v0, builder:Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v1}, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->getDimShowingAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/animation/AnimatorSet;

    .end local v2           #set:Landroid/animation/AnimatorSet;
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .restart local v2       #set:Landroid/animation/AnimatorSet;
    const-string v3, "Value"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->getDimHidingAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mCollapseAnimator:Landroid/animation/Animator;

    .end local v0           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v1           #dimAnimator:Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    .end local v2           #set:Landroid/animation/AnimatorSet;
    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    const/4 v1, 0x3

    #setter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I
    invoke-static {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$502(Lcom/miui/internal/v5/view/menu/ActionMenuView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$300(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$600(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    const/4 v1, 0x0

    #setter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I
    invoke-static {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$502(Lcom/miui/internal/v5/view/menu/ActionMenuView;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$300(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$300(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$400(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$400(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public setValue(F)V
    .locals 3
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$200(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$200(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setTranslationY(F)V

    goto :goto_0
.end method
