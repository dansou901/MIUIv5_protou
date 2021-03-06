.class public Lcom/miui/internal/v5/widget/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"


# instance fields
.field protected mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field protected mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

.field protected mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mUpdateContentMargin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    .line 40
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 176
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    or-int/2addr v0, v2

    .line 177
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v2

    or-int/2addr v0, v2

    .line 180
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getActionBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    .line 119
    .local v0, height:I
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, tabContainer:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 124
    :cond_2
    if-lez v0, :cond_0

    .line 125
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/util/UiUtils;->getActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 126
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSplitActionBarHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v7

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    const/4 v2, 0x0

    .line 139
    .local v2, height:I
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v0

    .line 142
    .local v0, actionBarImpl:Lcom/miui/internal/v5/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 143
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 144
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6, v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 146
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 147
    check-cast v6, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 149
    check-cast v5, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 144
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v3           #i:I
    :cond_3
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v1

    .line 157
    .local v1, actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    .line 158
    .local v4, isContextViewVisible:Z
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v6

    if-nez v6, :cond_4

    .line 159
    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v2

    .line 163
    .end local v1           #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    .end local v4           #isContextViewVisible:Z
    :cond_4
    if-lez v2, :cond_0

    .line 164
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiui/util/UiUtils;->getSplitActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v2, v6

    .line 165
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .restart local v1       #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_5
    move v4, v7

    .line 157
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0007

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 53
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0027

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 56
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v2, 0x60b0009

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    .line 60
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v2, 0x60b0006

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 63
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 64
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getChildCount()I

    move-result v10

    .line 70
    .local v10, count:I
    const/4 v13, 0x0

    .line 71
    .local v13, maxHeight:I
    const/4 v14, 0x0

    .line 72
    .local v14, maxWidth:I
    const/4 v9, 0x0

    .line 75
    .local v9, childState:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 76
    invoke-virtual {p0, v11}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_0

    .line 78
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/miui/internal/v5/widget/ActionBarLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 75
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 89
    .end local v2           #child:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getActionBarHeight()I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSplitActionBarHeight()I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 95
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 97
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 99
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/miui/internal/v5/widget/ActionBarLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 103
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 104
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 107
    move/from16 v0, p1

    invoke-static {v14, v0, v9}, Lcom/miui/internal/v5/widget/ActionBarLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v9, 0x10

    move/from16 v0, p2

    invoke-static {v13, v0, v3}, Lcom/miui/internal/v5/widget/ActionBarLayout;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/internal/v5/widget/ActionBarLayout;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public setUpdateContentMarginEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    .line 44
    return-void
.end method
