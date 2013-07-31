.class public Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/ActionMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;
    }
.end annotation


# static fields
.field static final MAX_PRIMARY_ITEMS:I = 0x4


# instance fields
.field private mId:I

.field private mIsEditMode:Z

.field private mLayoutResId:I

.field private mMaxPrimaryItems:I

.field private mMenuItems:I

.field private mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

.field private mPrimaryItemResId:I

.field private mSecondaryItemResId:I

.field private mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "layoutResId"
    .parameter "primaryItemResid"
    .parameter "secondaryItemResId"

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "layoutResId"
    .parameter "primaryItemResid"
    .parameter "secondaryItemResId"
    .parameter "isEditMode"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    iput p2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mLayoutResId:I

    iput p3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    iput p4, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSecondaryItemResId:I

    iput-boolean p5, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mIsEditMode:Z

    return-void
.end method


# virtual methods
.method addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .parameter "parent"
    .parameter "itemView"
    .parameter "index"

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .local v0, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public flagActionItems()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-object v4, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->miuiGetVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    return v5
.end method

.method public getMenuItems()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .parameter "root"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method getPrimaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    .locals 4
    .parameter "item"
    .parameter "convertView"

    .prologue
    instance-of v1, p2, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    .local v0, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object v0

    .end local v0           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getSecondaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    .locals 4
    .parameter "item"
    .parameter "convertView"

    .prologue
    instance-of v1, p2, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    .local v0, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object v0

    .end local v0           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSecondaryItemResId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .local v1, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .local v2, primaryContainer:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mIsEditMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const v4, 0x601005e

    invoke-static {v3, v4}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setPrimaryContainerCollapsedBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #primaryContainer:Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .restart local v2       #primaryContainer:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const v4, 0x6010044

    invoke-static {v3, v4}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public setUpdateListener(Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 17
    .parameter "cleared"

    .prologue
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .local v9, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v15, :cond_3

    invoke-virtual {v9}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v14

    .local v14, secondaryContainer:Landroid/view/ViewGroup;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    .end local v14           #secondaryContainer:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;->onMenuUpdated(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuBuilder;->miuiGetActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    .local v8, itemsSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    if-le v8, v15, :cond_6

    const/4 v11, 0x1

    .local v11, needsMore:Z
    :goto_1
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    add-int/lit8 v13, v15, -0x1

    .local v13, primaryCount:I
    :goto_2
    invoke-virtual {v9}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    .local v3, container:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v6, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, convertView:Landroid/view/View;
    instance-of v15, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v15, :cond_8

    move-object v15, v4

    check-cast v15, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v15}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v12

    .local v12, oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->getPrimaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-result-object v7

    .local v7, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    move-object v15, v7

    check-cast v15, Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v6, v12, :cond_4

    move-object v15, v7

    check-cast v15, Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setPressed(Z)V

    move-object v15, v7

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_4
    if-eq v7, v4, :cond_5

    move-object v15, v7

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-interface {v7, v9}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v3           #container:Landroid/view/ViewGroup;
    .end local v4           #convertView:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v7           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    .end local v11           #needsMore:Z
    .end local v12           #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v13           #primaryCount:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11       #needsMore:Z
    :cond_7
    move v13, v8

    goto :goto_2

    .restart local v3       #container:Landroid/view/ViewGroup;
    .restart local v4       #convertView:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v6       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v13       #primaryCount:I
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .end local v4           #convertView:Landroid/view/View;
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_9
    if-eqz v11, :cond_10

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .local v10, moreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-ne v10, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-nez v15, :cond_b

    :cond_a
    move-object v15, v10

    check-cast v15, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->createMoreItemView(Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;I)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-eq v15, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_b
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v2, 0x0

    .local v2, childIndex:I
    :goto_5
    if-ge v5, v8, :cond_f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    .restart local v6       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .restart local v4       #convertView:Landroid/view/View;
    instance-of v15, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v15, :cond_e

    move-object v15, v4

    check-cast v15, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v15}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v12

    .restart local v12       #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->getSecondaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    move-result-object v7

    .local v7, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    if-eq v6, v12, :cond_c

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->setPressed(Z)V

    invoke-virtual {v7}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->jumpDrawablesToCurrentState()V

    :cond_c
    if-eq v7, v4, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v7, v9}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    :cond_d
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v7           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    .end local v12           #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_e
    const/4 v12, 0x0

    goto :goto_6

    .end local v4           #convertView:Landroid/view/View;
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v2

    invoke-virtual {v3, v2, v15}, Landroid/view/ViewGroup;->removeViews(II)V

    goto/16 :goto_0

    .end local v2           #childIndex:I
    .end local v10           #moreView:Landroid/view/View;
    :cond_10
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual {v3, v5, v15}, Landroid/view/ViewGroup;->removeViews(II)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v14

    .restart local v14       #secondaryContainer:Landroid/view/ViewGroup;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_0
.end method
