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

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 130
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    .line 133
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 136
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 139
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 142
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 145
    sget-object v4, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 151
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    .line 154
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 157
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    .line 160
    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/kikin/KikinResultsViewController$IncomingHandler;

    invoke-direct {v5, p0}, Lcom/kikin/KikinResultsViewController$IncomingHandler;-><init>(Lcom/kikin/KikinResultsViewController;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    .line 163
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    .line 166
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 169
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 172
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 175
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 178
    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 181
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    .line 184
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    .line 187
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 190
    new-instance v4, Lcom/kikin/theme/HtcThemeDetector;

    invoke-direct {v4}, Lcom/kikin/theme/HtcThemeDetector;-><init>()V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    .line 673
    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 207
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    .line 210
    instance-of v4, p1, Landroid/widget/Editor;

    if-eqz v4, :cond_4

    .line 211
    check-cast p1, Landroid/widget/Editor;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 217
    :cond_0
    :goto_0
    new-instance v4, Lcom/kikin/KikinResultsViewController$1;

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/kikin/KikinResultsViewController$1;-><init>(Lcom/kikin/KikinResultsViewController;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    .line 222
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 225
    new-instance v2, Lcom/kikin/requests/RequestSettings;

    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 226
    .local v2, requestSettings:Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v2}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 229
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 230
    .local v3, rootView:Landroid/view/View;
    const v4, 0x1020319

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 233
    const v4, 0x102031c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 236
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/KikinContentLayout;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    .line 239
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    const v5, 0x102031b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, application:Landroid/app/Application;
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_5

    .line 257
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 258
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 263
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 264
    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 266
    :cond_3
    return-void

    .line 212
    .end local v1           #application:Landroid/app/Application;
    .end local v2           #requestSettings:Lcom/kikin/requests/RequestSettings;
    .end local v3           #rootView:Landroid/view/View;
    .restart local p1
    :cond_4
    instance-of v4, p1, Landroid/webkit/WebViewClassic;

    if-eqz v4, :cond_0

    .line 213
    check-cast p1, Landroid/webkit/WebViewClassic;

    .end local p1
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 259
    .restart local v1       #application:Landroid/app/Application;
    .restart local v2       #requestSettings:Lcom/kikin/requests/RequestSettings;
    .restart local v3       #rootView:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Application;

    if-eqz v4, :cond_2

    .line 260
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
    .line 61
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kikin/KikinResultsViewController;->onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->onQueryChanges(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kikin/KikinResultsViewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    return v0
.end method

.method static synthetic access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kikin/KikinResultsViewController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/kikin/KikinResultsViewController;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kikin/KikinResultsViewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    return-void
.end method

.method public static dpToPixels(FLandroid/content/Context;)I
    .locals 2
    .parameter "dip"
    .parameter "context"

    .prologue
    .line 118
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
    .line 1052
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kikin/theme/ThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 1055
    :cond_0
    return-void
.end method

.method private getMaxKikinResContainerRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v1

    .line 996
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .line 997
    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v3

    .line 998
    .local v3, statusBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getSplitActionBarHeight()I

    move-result v2

    .line 1000
    .local v2, splitActionBarHeight:I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1002
    return-object v1
.end method

.method private getScalingFactor()F
    .locals 2

    .prologue
    .line 1058
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

    .line 1059
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

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private hideKikinPaddingView()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/KikinContentLayout;->setContentOffsetY(I)V

    .line 1044
    return-void
.end method

.method private onQueryChanges(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 1035
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
    .line 1015
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setResultsConatinerVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 1067
    if-eqz p1, :cond_1

    .line 1068
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 1071
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gez v0, :cond_0

    .line 1072
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

    .line 912
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

    .line 988
    :goto_0
    return v4

    .line 922
    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v4, :cond_3

    .line 923
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 924
    .local v3, rootView:Landroid/view/View;
    const v4, 0x1020315

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 929
    .end local v3           #rootView:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 933
    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v4, :cond_4

    .line 934
    invoke-virtual {p0, v5}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 939
    :cond_4
    invoke-direct {p0, v5}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    .line 942
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 949
    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_5

    .line 950
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 953
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 954
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.kikin"

    const-string v7, "com.kikin.KikinSearchActivity"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const/high16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 956
    const-string v4, "com.kikin.maxKikinResultsContainerRect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 957
    const-string v4, "com.kikin.messenger"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 958
    const-string v4, "com.kikin.selection"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 959
    const-string v4, "com.kikin.requestSettings"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 960
    const-string v4, "com.kikin.barState"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 961
    const-string v4, "com.kikin.theme"

    iget-object v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    invoke-virtual {v7}, Lcom/kikin/theme/ThemeDetector$KikinTheme;->ordinal()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_8

    .line 967
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 968
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 976
    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 979
    if-eqz p2, :cond_7

    .line 980
    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(F)V

    :cond_7
    move v4, v5

    .line 983
    goto/16 :goto_0

    .line 969
    :cond_8
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Application;

    if-eqz v4, :cond_6

    .line 970
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 972
    .local v1, application:Landroid/app/Application;
    invoke-virtual {v1, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 985
    .end local v1           #application:Landroid/app/Application;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 987
    invoke-direct {p0, v6}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    move v4, v6

    .line 988
    goto/16 :goto_0
.end method


# virtual methods
.method public bringKikinBarToFront()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 650
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v3, :cond_2

    move v0, v1

    .line 653
    .local v0, shouldRestoreResults:Z
    :goto_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 654
    invoke-virtual {p0, v2}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 658
    :cond_0
    if-eqz v0, :cond_1

    .line 659
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, v2, v1, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    .line 661
    :cond_1
    return-void

    .end local v0           #shouldRestoreResults:Z
    :cond_2
    move v0, v2

    .line 650
    goto :goto_0
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 4
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 409
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 416
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 423
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-nez v1, :cond_1

    .line 433
    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 435
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 409
    goto :goto_0

    .line 424
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

    .line 804
    if-nez p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v4

    .line 810
    :cond_1
    const/4 v1, 0x0

    .line 813
    .local v1, actionBarContextView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 816
    .local v3, rootView:Landroid/view/View;
    const v6, 0x1020319

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, actionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 823
    const v6, 0x102031b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 830
    :goto_1
    if-eqz v1, :cond_0

    .line 831
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #actionBarContextView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 832
    .local v2, doneView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 833
    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    move v4, v5

    .line 834
    goto :goto_0

    .line 825
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
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getActionBarHeight()I
    .locals 8

    .prologue
    .line 447
    const/high16 v5, 0x4260

    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 451
    .local v0, actionBarHeight:I
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 452
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 458
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 459
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 460
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 462
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

    .line 467
    :goto_1
    if-eqz v3, :cond_1

    .line 468
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->htcsdkVer:Ljava/lang/String;

    .line 469
    :cond_1
    if-eqz v4, :cond_2

    .line 470
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x40a0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 475
    :cond_2
    int-to-float v5, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 477
    return v0

    .line 453
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #ver:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_0

    .line 454
    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getContentHeight()I

    move-result v0

    goto :goto_0

    .line 463
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #ver:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 464
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public getActionBarTop()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 490
    const/high16 v4, 0x41c8

    iget-object v5, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 492
    .local v0, actionBarTop:I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 493
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 494
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 495
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 496
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 511
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    int-to-float v4, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 513
    return v0

    .line 500
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 501
    .local v1, location:[I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 502
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 503
    aget v0, v1, v6

    goto :goto_0

    .line 504
    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    .line 506
    aget v0, v1, v6

    goto :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getKikinSearchActivityMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 545
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 546
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 548
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 549
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 551
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    .line 553
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
    .line 524
    const/4 v0, 0x0

    .line 528
    .local v0, splitActionBarHeight:I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 533
    :cond_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 535
    return v0
.end method

.method public hide(Z)V
    .locals 7
    .parameter "isFinished"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 340
    invoke-direct {p0, v3}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    .line 349
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    .line 353
    if-nez p1, :cond_2

    move v4, v2

    :goto_0
    :try_start_0
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 354
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 355
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "com.kikin.shouldRestore"

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 358
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 359
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    .line 369
    if-eqz p1, :cond_1

    .line 370
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 371
    iput v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 373
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 353
    goto :goto_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    move v2, v3

    .line 356
    goto :goto_1

    .line 360
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 396
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
    .line 579
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gtz v3, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .line 593
    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v2

    .line 595
    .local v2, statusBarHeight:I
    add-int v3, v0, v2

    iget v4, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    add-int v1, v3, v4

    .line 609
    .local v1, overHeight:I
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/view/KikinContentLayout;

    if-eqz v3, :cond_0

    .line 610
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    .line 613
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    if-ge v3, v1, :cond_2

    .line 614
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

    .line 631
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

    .line 619
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

    .line 635
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
    .line 740
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 780
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 768
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 772
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 784
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 747
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

    .line 751
    :cond_1
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_3

    .line 755
    const/4 v2, 0x0

    const/16 v3, 0xb

    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 756
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0

    .line 761
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 776
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 274
    :try_start_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "rect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 281
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 282
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "KikinResultsViewController"

    const-string v4, "failed to transmit the orientation change to the bar"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOverFlowMenuClosed()V
    .locals 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    .line 710
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 715
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onOverflowMenuClosed()V

    .line 718
    :cond_1
    return-void
.end method

.method public onOverFlowMenuCreated()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 684
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mHandler:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onOverflowMenuCreated()V

    .line 687
    :cond_0
    return-void
.end method

.method public onOverFlowMenuItemClciked()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 727
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 382
    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 383
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 384
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 385
    iput v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 386
    return-void
.end method

.method public sendMessage(I)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1224
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setKikinResultsViewControllerVisibility(Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    .line 1213
    return-void
.end method

.method public setResultsViewState(Ljava/io/Serializable;)V
    .locals 3
    .parameter "resultsViewState"

    .prologue
    .line 876
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kikin.view.bar.ResultsViewState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.kikin.barViewState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 879
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 880
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 882
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public setSelectionTopPosition(I)V
    .locals 2
    .parameter "minYPosition"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    .line 566
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    .line 567
    const/high16 v0, 0x41a0

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 569
    return-void
.end method

.method public setTutorialMessenger(Landroid/os/Messenger;)Z
    .locals 3
    .parameter "messenger"

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 855
    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 860
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    .line 863
    :goto_1
    return v1

    .line 858
    :cond_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v1

    .line 863
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public show(Landroid/view/ActionMode;Z)Z
    .locals 1
    .parameter "mode"
    .parameter "restore"

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    move-result v0

    return v0
.end method
