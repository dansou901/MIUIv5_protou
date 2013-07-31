.class public Lmiui/widget/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SlideBar"
.end annotation


# instance fields
.field private mPadding:Landroid/graphics/Rect;

.field private mPos:Landroid/graphics/Rect;

.field private mSlidePoint:Landroid/graphics/NinePatch;

.field private mSlidePointBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "slideDrawableId"
    .parameter "backgroundDrawableId"

    .prologue
    .line 493
    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->this$0:Lmiui/widget/ScreenView;

    .line 494
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    .line 491
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    .line 495
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    .line 496
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 501
    .local v2, npChunk:[B
    if-eqz v2, :cond_0

    .line 502
    new-instance v3, Landroid/graphics/NinePatch;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    .line 506
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, background:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 508
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 512
    .local v1, backgroundParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView$SlideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 514
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 515
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 516
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 517
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 518
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 529
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 532
    :cond_0
    return-void
.end method

.method public fastOffset(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 555
    iget v0, p0, Lmiui/widget/ScreenView$SlideBar;->mLeft:I

    if-eq v0, p1, :cond_0

    .line 556
    iget v0, p0, Lmiui/widget/ScreenView$SlideBar;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView$SlideBar;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView$SlideBar;->mRight:I

    .line 557
    iput p1, p0, Lmiui/widget/ScreenView$SlideBar;->mLeft:I

    .line 558
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlideWidth()I
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 537
    .local v0, r:Z
    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 539
    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 541
    :cond_0
    return v0
.end method

.method public setPosition(II)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 545
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 546
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 547
    return-void
.end method
