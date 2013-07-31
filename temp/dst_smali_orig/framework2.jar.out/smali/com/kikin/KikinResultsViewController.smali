.class public Lcom/kikin/KikinResultsViewController;
.super Ljava/lang/Object;
.source "KikinResultsViewController.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;,
        Lcom/kikin/KikinResultsViewController$IncomingHandler;
    }
.end annotation


# static fields
.field public static final KIKIN_RESULTS_CONTAINER_HEIGHT:I = 0x104

.field public static final KIKIN_RESULTS_CONTAINER_PADDING:I = 0x1e

.field public static final KIKIN_RESULTS_CONTAINER_SHADOW_HEIGHT:I = 0x6

.field public static final MSG_ACTIVITY_RESTARTED:I = 0xb

.field public static final MSG_BRING_KIKIN_BAR_TO_FRONT:I = 0xc

.field public static final MSG_DO_SEARCH:I = 0x7

.field public static final MSG_GET_VISIBILITY:I = 0xe

.field public static final MSG_HIDE_ACTION_BAR:I = 0x1

.field public static final MSG_HIDE_KIKIN_BAR:I = 0x6

.field public static final MSG_KIKIN_BAR_HEIGHT_CHANGED:I = 0xd

.field public static final MSG_KIKIN_BAR_IS_HIDING:I = 0xa

.field public static final MSG_ON_ACTION_BAR_HEIGHT_CHANGE:I = 0x10

.field public static final MSG_ON_QUERY_CHANGED:I = 0x3

.field public static final MSG_ON_QUERY_REWRITTEN:I = 0x2

.field public static final MSG_ON_VISIBILITY_RECEIVED:I = 0xf

.field public static final MSG_SAVE_KIKIN_BAR_STATE:I = 0x8

.field public static final MSG_SET_CHILD_MESSENGER:I = 0x4

.field public static final MSG_SET_TUTORIAL_MESSENGER:I = 0x9

.field public static final MSG_SHOW_KIKIN_BAR:I = 0x5

.field public static final SELECTION_TOP_PADDING:I = 0x14

.field private static final TAG:Ljava/lang/String; = "KikinResultsViewController"


# instance fields
.field private mActionBarContainer:Landroid/view/View;

.field private mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

.field private mActionBarHeight:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mHandler:Ljava/lang/Object;

.field private mIsOverflowMenuItemClicked:Z

.field private mIsVisible:I

.field private mKikinPaddingViewHeight:I

.field private mKikinResultsContainerState:Landroid/os/Bundle;

.field private mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

.field private mKikinSearchActivityMessenger:Landroid/os/Messenger;

.field final mMessenger:Landroid/os/Messenger;

.field private mParentContentView:Landroid/view/KikinContentLayout;

.field private mRequestSettings:Landroid/os/Bundle;

.field private mSelection:Landroid/os/Bundle;

.field private mSelectionPadding:I

.field private mSelectionTopPosition:I

.field private mShouldStoreResultsViewState:Z

.field private mSplitActionBarContainer:Landroid/view/View;

.field private mThemeDetector:Lcom/kikin/theme/ThemeDetector;

.field private mTutorialActivityMessenger:Landroid/os/Messenger;

.field private mView:Landroid/view/View;

.field private orientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8
    .parameter "handler"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    sget-object v4, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/kikin/KikinResultsViewController$IncomingHandler;

    invoke-direct {v5, p0}, Lcom/kikin/KikinResultsViewController$IncomingHandler;-><init>(Lcom/kikin/KikinResultsViewController;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    new-instance v4, Lcom/kikin/theme/HtcThemeDetector;

    invoke-direct {v4}, Lcom/kikin/theme/HtcThemeDetector;-><init>()V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v4, p1, Landroid/widget/Editor;

    if-eqz v4, :cond_4

    check-cast p1, Landroid/widget/Editor;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    :cond_0
    :goto_0
    new-instance v4, Lcom/kikin/KikinResultsViewController$1;

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/kikin/KikinResultsViewController$1;-><init>(Lcom/kikin/KikinResultsViewController;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    new-instance v2, Lcom/kikin/requests/RequestSettings;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .local v2, requestSettings:Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v2}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, rootView:Landroid/view/View;
    const v4, 0x1020319

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    const v4, 0x102031c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/KikinContentLayout;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    const v5, 0x102031b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    :cond_1
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    const/4 v1, 0x0

    .local v1, application:Landroid/app/Application;
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    return-void

    .end local v1           #application:Landroid/app/Application;
    .end local v2           #requestSettings:Lcom/kikin/requests/RequestSettings;
    .end local v3           #rootView:Landroid/view/View;
    .restart local p1
    :cond_4
    instance-of v4, p1, Landroid/webkit/WebViewClassic;

    if-eqz v4, :cond_0

    check-cast p1, Landroid/webkit/WebViewClassic;

    .end local p1
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    goto/16 :goto_0

    .restart local v1       #application:Landroid/app/Application;
    .restart local v2       #requestSettings:Lcom/kikin/requests/RequestSettings;
    .restart local v3       #rootView:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Application;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1           #application:Landroid/app/Application;
    check-cast v1, Landroid/app/Application;

    .restart local v1       #application:Landroid/app/Application;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/kikin/KikinResultsViewController;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/kikin/KikinResultsViewController;->onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->onQueryChanges(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kikin/KikinResultsViewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    return v0
.end method

.method static synthetic access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kikin/KikinResultsViewController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/kikin/KikinResultsViewController;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kikin/KikinResultsViewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    return-void
.end method

.method public static dpToPixels(FLandroid/content/Context;)I
    .locals 2
    .parameter "dip"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private findActivityCABTheme()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kikin/theme/ThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    :cond_0
    return-void
.end method

.method private getMaxKikinResContainerRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v3

    .local v3, statusBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getSplitActionBarHeight()I

    move-result v2

    .local v2, splitActionBarHeight:I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1
.end method

.method private getScalingFactor()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private hideKikinPaddingView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/KikinContentLayout;->setContentOffsetY(I)V

    return-void
.end method

.method private onQueryChanges(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->updateSelectionInCAB(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateSelectionInCAB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldQuery"
    .parameter "newQuery"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setResultsConatinerVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    goto :goto_0
.end method

.method private show(Landroid/view/ActionMode;ZZ)Z
    .locals 8
    .parameter "mode"
    .parameter "restore"
    .parameter "shouldForceToCreate"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v4, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v4, v6

    :goto_0
    return v4

    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, rootView:Landroid/view/View;
    const v4, 0x1020315

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .end local v3           #rootView:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v4, :cond_4

    invoke-virtual {p0, v5}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    :cond_4
    invoke-direct {p0, v5}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.kikin"

    const-string v7, "com.kikin.KikinSearchActivity"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.kikin.maxKikinResultsContainerRect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.kikin.messenger"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.kikin.selection"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "com.kikin.requestSettings"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "com.kikin.barState"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "com.kikin.theme"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    invoke-virtual {v7}, Lcom/kikin/theme/ThemeDetector$KikinTheme;->ordinal()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-eqz p2, :cond_7

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(F)V

    :cond_7
    move v4, v5

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Application;

    if-eqz v4, :cond_6

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .local v1, application:Landroid/app/Application;
    invoke-virtual {v1, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1           #application:Landroid/app/Application;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    invoke-direct {p0, v6}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    move v4, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public bringKikinBarToFront()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v3, :cond_2

    move v0, v1

    .local v0, shouldRestoreResults:Z
    :goto_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, v2, v1, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    :cond_1
    return-void

    .end local v0           #shouldRestoreResults:Z
    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 4
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-nez v1, :cond_1

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public enableDoneInActionBarContextView(Landroid/view/View;Z)Z
    .locals 7
    .parameter "view"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v1, 0x0

    .local v1, actionBarContextView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, rootView:Landroid/view/View;
    const v6, 0x1020319

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, actionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_2

    const v6, 0x102031b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #actionBarContextView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, doneView:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    move v4, v5

    goto :goto_0

    .end local v2           #doneView:Landroid/view/View;
    .restart local v1       #actionBarContextView:Landroid/view/View;
    :cond_2
    const v6, 0x1020315

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getActionBarHeight()I
    .locals 8

    .prologue
    const/high16 v5, 0x4260

    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .local v0, actionBarHeight:I
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .local v4, ver:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->htcsdkVer:Ljava/lang/String;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x40a0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    int-to-float v5, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    return v0

    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #ver:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getContentHeight()I

    move-result v0

    goto :goto_0

    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #ver:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public getActionBarTop()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x41c8

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .local v0, actionBarTop:I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->top:I

    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    int-to-float v4, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    return v0

    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .local v1, location:[I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    aget v0, v1, v6

    goto :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getKikinSearchActivityMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    .local v2, scalingFactor:F
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getSplitActionBarHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, splitActionBarHeight:I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public hide(Z)V
    .locals 7
    .parameter "isFinished"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    move v4, v2

    :goto_0
    :try_start_0
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "com.kikin.shouldRestore"

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    if-eqz p1, :cond_1

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    iput v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    :cond_1
    return-void

    :cond_2
    move v4, v3

    goto :goto_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    move v2, v3

    goto :goto_1

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeSelectionVisible(F)V
    .locals 6
    .parameter "maxYPositionOfKikinBar"

    .prologue
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v2

    .local v2, statusBarHeight:I
    add-int v3, v0, v2

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int v1, v3, v4

    .local v1, overHeight:I
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    if-ge v3, v1, :cond_2

    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    :goto_1
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/KikinContentLayout;->setContentOffsetY(I)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/KikinContentLayout;->setContentOffsetY(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v2, v2, Landroid/webkit/WebViewClassic;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v2, v2, Landroid/widget/Editor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v2, Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0xb

    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    const-string v3, "rect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "KikinResultsViewController"

    const-string v4, "failed to transmit the orientation change to the bar"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOverFlowMenuClosed()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onOverflowMenuClosed()V

    :cond_1
    return-void
.end method

.method public onOverFlowMenuCreated()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onOverflowMenuCreated()V

    :cond_0
    return-void
.end method

.method public onOverFlowMenuItemClciked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    iput v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    return-void
.end method

.method public sendMessage(I)V
    .locals 3
    .parameter "message"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setKikinResultsViewControllerVisibility(Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;)V
    .locals 0
    .parameter "instance"

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    return-void
.end method

.method public setResultsViewState(Ljava/io/Serializable;)V
    .locals 3
    .parameter "resultsViewState"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kikin.view.bar.ResultsViewState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.kikin.barViewState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public setSelectionTopPosition(I)V
    .locals 2
    .parameter "minYPosition"

    .prologue
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    int-to-float v0, p1

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    const/high16 v0, 0x41a0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    return-void
.end method

.method public setTutorialMessenger(Landroid/os/Messenger;)Z
    .locals 3
    .parameter "messenger"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public show(Landroid/view/ActionMode;Z)Z
    .locals 1
    .parameter "mode"
    .parameter "restore"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    move-result v0

    return v0
.end method
