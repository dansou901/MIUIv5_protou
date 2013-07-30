.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private actionBarArea:Landroid/graphics/Rect;

.field private backgroundShadow:Landroid/graphics/drawable/Drawable;

.field private defaultDisplay:Landroid/view/Display;

.field private enableHTCActionBar:Z

.field private enableLandscape:Z

.field private isPortrait:Z

.field private mActionBarView:Lcom/android/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private marginOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    const v4, 0x102031c

    if-ne v3, v4, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, orientation:I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v1

    .local v1, contentWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .local v0, contentHeight:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .local v2, shadowWidth:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    sub-int v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #shadowWidth:I
    :cond_0
    return-void
.end method

.method public enableHTCActionBar()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public enableHTCLandscape(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContainer;->updateContainerLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public getActionBarArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, screenLocation:[I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102031a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    const/4 v4, 0x1

    .local v4, hasTabs:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .local v2, containerHeight:I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, tabHeight:I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1           #child:Landroid/view/View;
    .end local v2           #containerHeight:I
    .end local v3           #count:I
    .end local v4           #hasTabs:Z
    .end local v5           #i:I
    .end local v7           #tabHeight:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #containerHeight:I
    .restart local v3       #count:I
    .restart local v4       #hasTabs:Z
    .restart local v5       #i:I
    .restart local v7       #tabHeight:I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .end local v2           #containerHeight:I
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v7           #tabHeight:I
    :cond_4
    :goto_3
    const/4 v6, 0x0

    .local v6, needsInvalidate:Z
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x1

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    :cond_6
    return-void

    .end local v6           #needsInvalidate:Z
    .restart local v2       #containerHeight:I
    .restart local v7       #tabHeight:I
    :cond_7
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .end local v2           #containerHeight:I
    .end local v7           #tabHeight:I
    .restart local v6       #needsInvalidate:Z
    :cond_8
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/android/internal/widget/ActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v11}, Lcom/android/internal/widget/ActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v12}, Lcom/android/internal/widget/ActionBarView;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x1

    :cond_9
    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContainer;->updateContainerLayout()V

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .local v3, measuremode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, measuresize:I
    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    sub-int v6, v4, v6

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .end local v3           #measuremode:I
    .end local v4           #measuresize:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    .local v0, actionBarViewHeight:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, mode:I
    const/high16 v6, -0x8000

    if-ne v5, v6, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, maxHeight:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .end local v0           #actionBarViewHeight:I
    .end local v2           #maxHeight:I
    .end local v5           #mode:I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v6

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setContainerMarginRatio(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .parameter "tabView"

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .parameter "isTransitioning"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    return-void

    :cond_0
    const/high16 v0, 0x4

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "child"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
