.class public Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimAnimator"
.end annotation


# instance fields
.field private mDimActionBarOrSplitActionBar:Z

.field private mDimHidingAnimator:Landroid/animation/Animator;

.field private mDimShowingAnimator:Landroid/animation/Animator;

.field private mDimViewClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/miui/internal/v5/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/miui/internal/v5/app/ActionBarImpl;ZLandroid/view/View$OnClickListener;)V
    .locals 4
    .parameter
    .parameter "fromActionBar"
    .parameter "listener"

    .prologue
    const/4 v3, 0x2

    .line 425
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimViewClickListener:Landroid/view/View$OnClickListener;

    .line 426
    iput-object p3, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimViewClickListener:Landroid/view/View$OnClickListener;

    .line 427
    iput-boolean p2, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimActionBarOrSplitActionBar:Z

    .line 428
    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimShowingAnimator:Landroid/animation/Animator;

    .line 429
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimHidingAnimator:Landroid/animation/Animator;

    .line 431
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimHidingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    return-void

    .line 428
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 430
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getDimHidingAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimHidingAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getDimShowingAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimShowingAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimHidingAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_1

    .line 476
    iget-boolean v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimActionBarOrSplitActionBar:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #calls: Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$500(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->bringToFront()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimHidingAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_1

    .line 464
    iget-boolean v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimActionBarOrSplitActionBar:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #calls: Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$400(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->bringToFront()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 458
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimShowingAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 447
    iget-boolean v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimActionBarOrSplitActionBar:Z

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #calls: Lcom/miui/internal/v5/app/ActionBarImpl;->getContainerView()Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$200(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->bringToFront()V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->mDimViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    :cond_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #calls: Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$300(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->bringToFront()V

    goto :goto_0
.end method
