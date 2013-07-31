.class public Lmiui/v5/view/ActionBarMovableLayout;
.super Lcom/miui/internal/v5/widget/ActionBarLayout;
.source "ActionBarMovableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;,
        Lmiui/v5/view/ActionBarMovableLayout$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

.field private mFlinging:Z

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mIsSpringBackEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScrollStart:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lmiui/v5/view/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/view/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    .line 44
    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    .line 46
    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    .line 77
    sget-object v2, Lmiui/R$styleable;->ActionBarMovableLayout:[I

    const v3, 0x60100be

    invoke-virtual {p1, p2, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 89
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTouchSlop:I

    .line 91
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 92
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 93
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 95
    invoke-virtual {p0, v5}, Lmiui/v5/view/ActionBarMovableLayout;->setOverScrollMode(I)V

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 387
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v5

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 392
    .local v4, top:I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 393
    .local v2, left:I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 394
    .local v0, bottom:I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 396
    .local v3, right:I
    iget-object v6, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 397
    iget-object v6, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTop()I

    move-result v1

    .line 398
    .local v1, containerTop:I
    add-int/2addr v4, v1

    .line 399
    add-int/2addr v0, v1

    .line 402
    .end local v1           #containerTop:I
    :cond_2
    if-lt p3, v4, :cond_0

    if-ge p3, v0, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 417
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 614
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 615
    .local v1, pointerId:I
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 616
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 617
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 619
    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 620
    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 623
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 616
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .locals 2
    .parameter "motion"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result v0

    .line 594
    .local v0, y:F
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 596
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 597
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 600
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    .line 273
    .local v11, oldMotionY:I
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 275
    .local v10, motionY:I
    if-eq v11, v10, :cond_0

    .line 276
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 277
    .local v6, range:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 278
    .local v8, distance:I
    sub-int v2, v10, v11

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Lmiui/v5/view/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 281
    .end local v6           #range:I
    .end local v8           #distance:I
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 288
    .end local v10           #motionY:I
    .end local v11           #oldMotionY:I
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mFlinging:Z

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->springBack()V

    .line 285
    iput-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mFlinging:Z

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 483
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 484
    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method ensureTabScrollView()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 429
    return-void
.end method

.method protected fling(I)V
    .locals 11
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 493
    .local v10, distance:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 494
    .local v8, range:I
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mFlinging:Z

    .line 497
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->postInvalidate()V

    .line 498
    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method public getScrollStart()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollStart:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 434
    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    if-eq p1, v3, :cond_0

    .line 435
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 449
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 442
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingLeft:I

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lmiui/v5/view/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 444
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingTop:I

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/v5/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollStart:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lmiui/v5/view/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 448
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected motionToTranslation(F)F
    .locals 3
    .parameter "motion"

    .prologue
    .line 582
    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollStart:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 584
    .local v0, translationY:F
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 585
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 586
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 589
    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->onFinishInflate()V

    .line 104
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0007

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 106
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    .line 107
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 113
    .local v0, action:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 162
    :goto_0
    return v1

    .line 117
    :cond_0
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 162
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    .line 121
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 123
    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    .line 124
    iget-object v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 125
    iget-object v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iput-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 136
    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 137
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 138
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_1

    .line 149
    :pswitch_3
    iput-boolean v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 151
    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->recycleVelocityTracker()V

    .line 152
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_1

    .line 157
    :pswitch_4
    invoke-direct {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 453
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/v5/widget/ActionBarLayout;->onLayout(ZIIII)V

    .line 455
    iget-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez v0, :cond_1

    .line 456
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez v0, :cond_0

    .line 457
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    .line 460
    :cond_0
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    .line 461
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 464
    :cond_1
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 327
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lmiui/v5/view/ActionBarMovableLayout;->onScroll(F)V

    .line 329
    iput p2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    .line 335
    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 336
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 338
    .local v0, velocity:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    neg-int v2, v0

    int-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onFling(FI)V

    .line 344
    .end local v0           #velocity:I
    :cond_0
    return-void
.end method

.method protected onScroll(F)V
    .locals 3
    .parameter "motionY"

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 568
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScroll(IF)V

    .line 571
    :cond_0
    return-void
.end method

.method protected onScrollBegin()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScrollBegin()V

    .line 563
    :cond_0
    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    .line 576
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScrollEnd()V

    .line 579
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "event"

    .prologue
    .line 167
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .line 171
    .local v18, action:I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 177
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 178
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    goto :goto_0

    .line 183
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 185
    .local v19, activePointerIndex:I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    .line 186
    const/4 v2, 0x0

    goto :goto_1

    .line 188
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    .line 194
    .local v24, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    move/from16 v23, v0

    .line 195
    .local v23, lastMotionY:F
    sub-float v2, v24, v23

    float-to-int v4, v2

    .line 196
    .local v4, deltaY:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 197
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 198
    .local v10, distance:I
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lmiui/v5/view/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v20

    .line 200
    .local v20, clamped:Z
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 202
    if-eqz v20, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v2, :cond_2

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 205
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 207
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 208
    invoke-virtual/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 213
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v10           #distance:I
    .end local v19           #activePointerIndex:I
    .end local v20           #clamped:Z
    .end local v23           #lastMotionY:F
    .end local v24           #y:F
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 215
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollBegin()V

    goto/16 :goto_0

    .line 225
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 227
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v22

    .line 235
    .local v22, initialVelocity:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_4

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/v5/view/ActionBarMovableLayout;->fling(I)V

    goto/16 :goto_0

    .line 238
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 239
    .restart local v8       #range:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->invalidate()V

    goto/16 :goto_0

    .line 242
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->springBack()V

    goto/16 :goto_0

    .line 253
    .end local v8           #range:I
    .end local v22           #initialVelocity:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 254
    .local v21, index:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 255
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 260
    .end local v21           #index:I
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 9
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 296
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollMode()I

    move-result v4

    .line 297
    .local v4, overScrollMode:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result v7

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result v8

    if-le v7, v8, :cond_3

    const/4 v1, 0x1

    .line 299
    .local v1, canScrollVertical:Z
    :goto_0
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    const/4 v5, 0x1

    .line 302
    .local v5, overScrollVertical:Z
    :goto_1
    add-int v3, p4, p2

    .line 303
    .local v3, newScrollY:I
    if-nez v5, :cond_1

    .line 304
    const/16 p8, 0x0

    .line 308
    :cond_1
    const/4 v6, 0x0

    .line 309
    .local v6, top:I
    add-int v0, p8, p6

    .line 311
    .local v0, bottom:I
    const/4 v2, 0x0

    .line 312
    .local v2, clampedY:Z
    if-le v3, v0, :cond_5

    .line 313
    move v3, v0

    .line 314
    const/4 v2, 0x1

    .line 320
    :cond_2
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v3, v8, v2}, Lmiui/v5/view/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 322
    return v2

    .line 297
    .end local v0           #bottom:I
    .end local v1           #canScrollVertical:Z
    .end local v2           #clampedY:Z
    .end local v3           #newScrollY:I
    .end local v5           #overScrollVertical:Z
    .end local v6           #top:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 299
    .restart local v1       #canScrollVertical:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 315
    .restart local v0       #bottom:I
    .restart local v2       #clampedY:Z
    .restart local v3       #newScrollY:I
    .restart local v5       #overScrollVertical:Z
    .restart local v6       #top:I
    :cond_5
    if-gez v3, :cond_2

    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 479
    return-void
.end method

.method public setCallback(Lmiui/v5/view/ActionBarMovableLayout$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 367
    iput-object p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    .line 368
    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 347
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    .line 348
    return-void
.end method

.method public setOnScrollListener(Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 371
    iput-object p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    .line 372
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 351
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 352
    return-void
.end method

.method public setScrollRange(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 359
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    .line 360
    return-void
.end method

.method public setScrollStart(I)V
    .locals 0
    .parameter "scrollStart"

    .prologue
    .line 375
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollStart:I

    .line 376
    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 383
    iput-boolean p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 384
    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .line 502
    .local v3, activePointerId:I
    const/4 v13, -0x1

    if-ne v3, v13, :cond_1

    .line 503
    const/4 v9, 0x0

    .line 556
    :cond_0
    :goto_0
    return v9

    .line 506
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 507
    .local v8, pointerIndex:I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_2

    .line 508
    sget-object v13, Lmiui/v5/view/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v14, "invalid pointer index"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v9, 0x0

    goto :goto_0

    .line 512
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 513
    .local v10, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 515
    .local v11, y:F
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v13, v11, v13

    float-to-int v12, v13

    .line 516
    .local v12, yDiff:I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 517
    .local v2, absYDiff:I
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v13, v10, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v1, v13

    .line 519
    .local v1, absXDiff:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    float-to-int v14, v10

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lmiui/v5/view/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v5

    .line 520
    .local v5, fitContentView:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    float-to-int v14, v10

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lmiui/v5/view/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v6

    .line 522
    .local v6, fitTabScrollView:Z
    if-nez v5, :cond_3

    if-eqz v6, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 524
    .local v4, fitContent:Z
    :goto_1
    const/4 v9, 0x0

    .line 525
    .local v9, retval:Z
    if-eqz v4, :cond_4

    .line 526
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mTouchSlop:I

    if-le v2, v13, :cond_4

    if-le v2, v1, :cond_4

    .line 527
    const/4 v9, 0x1

    .line 528
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v13, :cond_4

    .line 529
    if-gez v12, :cond_6

    .line 530
    const/4 v9, 0x0

    .line 540
    :cond_4
    :goto_2
    if-eqz v9, :cond_0

    .line 541
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    .line 542
    move-object/from16 v0, p0

    iput v10, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    .line 544
    if-lez v12, :cond_7

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    .line 546
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 547
    .local v7, parent:Landroid/view/ViewParent;
    if-eqz v7, :cond_0

    .line 548
    const/4 v13, 0x1

    invoke-interface {v7, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 522
    .end local v4           #fitContent:Z
    .end local v7           #parent:Landroid/view/ViewParent;
    .end local v9           #retval:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 532
    .restart local v4       #fitContent:Z
    .restart local v9       #retval:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    invoke-interface {v13}, Lmiui/v5/view/ActionBarMovableLayout$Callback;->isContentVerticalScrolled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 533
    const/4 v9, 0x0

    goto :goto_2

    .line 544
    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method protected springBack()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 605
    .local v6, range:I
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    div-int/lit8 v2, v6, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    sub-int v4, v6, v0

    .line 606
    .local v4, dy:I
    :goto_0
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/16 v5, 0x320

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 607
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 609
    .end local v4           #dy:I
    .end local v6           #range:I
    :cond_0
    return-void

    .line 605
    .restart local v6       #range:I
    :cond_1
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    neg-int v4, v0

    goto :goto_0
.end method
