.class public Lmiui/v5/app/MiuiTabActivity;
.super Lmiui/v5/app/MiuiActivity;
.source "MiuiTabActivity.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiTabActivity"


# instance fields
.field private final mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

.field protected mContainer:Landroid/view/ViewGroup;

.field private final mLayoutObserverFactory:Lmiui/v5/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/app/LayoutObserver;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageScrollListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

.field private final mPageEffectFactory:Lmiui/v5/util/Factory$CachedFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory$CachedFactory",
            "<",
            "Lmiui/v5/widget/PageScrollEffect;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageScrollListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

.field private mScrollPageItem:I

.field private mScrollPercent:F

.field private mScrollState:I

.field private mTabContainer:Lmiui/v5/widget/TabContainerLayout;

.field protected mTabController:Lmiui/v5/widget/TabController;

.field private mTabIndicatorShadow:Landroid/view/View;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Lmiui/v5/widget/CooperativeViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/v5/app/MiuiTabActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/v5/app/MiuiActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollState:I

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$1;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$1;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    invoke-static {v0}, Lmiui/v5/util/Factory$CachedFactory;->newFactory(Lmiui/v5/util/Factory;)Lmiui/v5/util/Factory$CachedFactory;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mPageEffectFactory:Lmiui/v5/util/Factory$CachedFactory;

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$2;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$2;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mPageScrollListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$4;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$4;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$3;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$3;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    invoke-static {v0}, Lmiui/v5/util/Factory$CachedFactory;->newFactory(Lmiui/v5/util/Factory;)Lmiui/v5/util/Factory$CachedFactory;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mLayoutObserverFactory:Lmiui/v5/util/Factory;

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$5;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$5;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mOnPageScrollListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lmiui/v5/app/MiuiTabActivity$6;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiTabActivity$6;-><init>(Lmiui/v5/app/MiuiTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method static synthetic access$000(Lmiui/v5/app/MiuiTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    return v0
.end method

.method static synthetic access$002(Lmiui/v5/app/MiuiTabActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    return p1
.end method

.method static synthetic access$102(Lmiui/v5/app/MiuiTabActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollState:I

    return p1
.end method

.method private initTabPlaceholder()V
    .locals 3

    .prologue
    const v2, 0x601009d

    invoke-static {p0, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v2}, Lmiui/v5/widget/CooperativeViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v2}, Lmiui/v5/widget/CooperativeViewPager;->requestLayout()V

    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addViewPagerListeners(Lmiui/v5/widget/Views$ComposedPageChangeListener;)V
    .locals 0
    .parameter "listeners"

    .prologue
    return-void
.end method

.method protected createPageScrollEffect(I)Lmiui/v5/widget/PageScrollEffect;
    .locals 2
    .parameter "position"

    .prologue
    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v1, p1}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    instance-of v1, v0, Lmiui/v5/widget/PageScrollEffect$Creator;

    if-eqz v1, :cond_0

    check-cast v0, Lmiui/v5/widget/PageScrollEffect$Creator;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffect$Creator;->createPageScrollEffect()Lmiui/v5/widget/PageScrollEffect;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0       #fragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget v3, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v1, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    .local v1, index:I
    :goto_1
    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v3, v1}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    instance-of v3, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v3, :cond_2

    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #fragment:Landroid/app/Fragment;
    :goto_2
    move-object v2, v0

    goto :goto_0

    .end local v1           #index:I
    :cond_1
    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v3}, Lmiui/v5/widget/CooperativeViewPager;->getCurrentItem()I

    move-result v1

    .restart local v1       #index:I
    goto :goto_1

    .restart local v0       #fragment:Landroid/app/Fragment;
    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    const v0, 0x603004f

    return v0
.end method

.method protected getLayoutObserver()Lmiui/v5/app/LayoutObserver;
    .locals 3

    .prologue
    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I

    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity;->mLayoutObserverFactory:Lmiui/v5/util/Factory;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/app/LayoutObserver;

    goto :goto_0

    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v1}, Lmiui/v5/widget/CooperativeViewPager;->getCurrentItem()I

    move-result v0

    .restart local v0       #index:I
    goto :goto_1
.end method

.method public getTabController()Lmiui/v5/widget/TabController;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    return-object v0
.end method

.method protected isBottomPlaceholderEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, enabled:Z
    invoke-virtual {p0}, Lmiui/v5/app/MiuiTabActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v1

    .local v1, fragment:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmiui/v5/app/MiuiViewPagerItem;->isBottomPlaceholderEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabController;->setCooperative(Z)V

    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabController;->setCooperative(Z)V

    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/v5/app/MiuiTabActivity;->getLayoutId()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/v5/app/MiuiTabActivity;->setMiuiContentView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mContainer:Landroid/view/ViewGroup;

    const v3, 0x60b0089

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/TabContainerLayout;

    iput-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mContainer:Landroid/view/ViewGroup;

    const v3, 0x60b00b5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/CooperativeViewPager;

    iput-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mContainer:Landroid/view/ViewGroup;

    const v3, 0x60b00ac

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabIndicatorShadow:Landroid/view/View;

    invoke-direct {p0}, Lmiui/v5/app/MiuiTabActivity;->initTabPlaceholder()V

    new-instance v1, Lmiui/v5/widget/TranslateIndicator;

    const v2, 0x601009a

    invoke-direct {v1, p0, v2}, Lmiui/v5/widget/TranslateIndicator;-><init>(Landroid/content/Context;I)V

    .local v1, ti:Lmiui/v5/widget/TabIndicator;
    new-instance v2, Lmiui/v5/widget/TabController;

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-direct {v2, p0, v3, v4, v1}, Lmiui/v5/widget/TabController;-><init>(Landroid/app/Activity;Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/widget/CooperativeViewPager;Lmiui/v5/widget/TabIndicator;)V

    iput-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

    invoke-virtual {v2, v3}, Lmiui/v5/widget/TabController;->setPagerAdapterChangedListener(Lmiui/v5/widget/TabController$PagerAdapterChangedListener;)V

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v2, v3}, Lmiui/v5/widget/TabController;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)V

    new-instance v0, Lmiui/v5/widget/Views$ComposedPageChangeListener;

    invoke-direct {v0}, Lmiui/v5/widget/Views$ComposedPageChangeListener;-><init>()V

    .local v0, listeners:Lmiui/v5/widget/Views$ComposedPageChangeListener;
    invoke-virtual {p0, v0}, Lmiui/v5/app/MiuiTabActivity;->addViewPagerListeners(Lmiui/v5/widget/Views$ComposedPageChangeListener;)V

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mPageEffectFactory:Lmiui/v5/util/Factory$CachedFactory;

    invoke-static {v2, v3}, Lmiui/v5/widget/PageScrollEffects;->makePageChangeAdapter(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/util/Factory;)Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/v5/widget/Views$ComposedPageChangeListener;->add(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lmiui/v5/widget/PageChangeAdapter;

    iget-object v3, p0, Lmiui/v5/app/MiuiTabActivity;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity;->mPageScrollListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    invoke-direct {v2, v3, v4}, Lmiui/v5/widget/PageChangeAdapter;-><init>(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;)V

    invoke-virtual {v0, v2}, Lmiui/v5/widget/Views$ComposedPageChangeListener;->add(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mOnPageScrollListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Lmiui/v5/widget/Views$ComposedPageChangeListener;->add(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V

    iget-object v2, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v2, v0}, Lmiui/v5/widget/TabController;->setViewPagerListener(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onViewPagerAdapterChanged(Z)V
    .locals 1
    .parameter "selectedChanged"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mPageEffectFactory:Lmiui/v5/util/Factory$CachedFactory;

    invoke-virtual {v0}, Lmiui/v5/util/Factory$CachedFactory;->clear()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/app/MiuiTabActivity;->updateMenuBar(Z)V

    :cond_0
    return-void
.end method

.method protected onViewPagerReset(Lmiui/v5/android/support/view/ViewPager;II)V
    .locals 0
    .parameter "pager"
    .parameter "from"
    .parameter "to"

    .prologue
    return-void
.end method

.method protected onViewPagerScroll(Lmiui/v5/android/support/view/ViewPager;IIF)V
    .locals 9
    .parameter "pager"
    .parameter "from"
    .parameter "to"
    .parameter "percent"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, fromHasMenuBar:Z
    const/4 v3, 0x0

    .local v3, toHasMenuBar:Z
    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v5, p2}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    instance-of v5, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v5, :cond_2

    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/app/MiuiViewPagerItem;->isMenuBarEnabled()Z

    move-result v1

    :cond_2
    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v5, p3}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .restart local v0       #fragment:Landroid/app/Fragment;
    instance-of v5, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v5, :cond_3

    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/app/MiuiViewPagerItem;->isMenuBarEnabled()Z

    move-result v3

    :cond_3
    sget-boolean v5, Lmiui/v5/app/MiuiTabActivity;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "MiuiTabActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onViewPagerScroll from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " percent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mLayoutObserverFactory:Lmiui/v5/util/Factory;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/v5/app/LayoutObserver;

    invoke-interface {v5}, Lmiui/v5/app/LayoutObserver;->isContentFilled()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v4

    .local v2, fromHasTopLine:Z
    :goto_1
    if-eqz v3, :cond_7

    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mLayoutObserverFactory:Lmiui/v5/util/Factory;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/v5/app/LayoutObserver;

    invoke-interface {v5}, Lmiui/v5/app/LayoutObserver;->isContentFilled()Z

    move-result v5

    if-eqz v5, :cond_7

    .local v4, toHasTopLine:Z
    :goto_2
    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v5}, Lmiui/v5/widget/menubar/MenuBar;->getMenuBarSrollHandler()Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

    move-result-object v5

    invoke-interface {v5, p4, v1, v3}, Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;->onScroll(FZZ)V

    goto/16 :goto_0

    .end local v2           #fromHasTopLine:Z
    .end local v4           #toHasTopLine:Z
    :cond_6
    move v2, v6

    goto :goto_1

    .restart local v2       #fromHasTopLine:Z
    :cond_7
    move v4, v6

    goto :goto_2
.end method

.method public setBottomPlaceholderEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiTabActivity;->updateContentBorder(Z)V

    return-void
.end method

.method public setTabIndicatorShadowEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mTabIndicatorShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity;->mTabIndicatorShadow:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateContentBorder(Z)V
    .locals 2
    .parameter "bottomBarEnabled"

    .prologue
    iget v0, p0, Lmiui/v5/app/MiuiTabActivity;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->updateContentBorder(Z)V

    :cond_0
    return-void
.end method

.method protected updateMenuBar(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/menubar/MenuBar;->reopen(Z)V

    :cond_0
    return-void
.end method
