.class public Lcom/android/internal/policy/impl/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;,
        Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/impl/PhoneWindow$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CURRENT_CID:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final DEBUG_NAV_BAR:Z = false

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final IS_KIKIN_ENABLED:Z = false

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final isWVGA:Z

.field static mAppSwitchType:I

.field static mFirstCheck:Z

.field static sNavigationBarBlackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private fakescreenBackgroundColor:I

.field private final fakescreenDebug:Z

.field private fakescreenFooterEnable:Z

.field private fakescreenHeaderEnable:Z

.field private isPortrait:Z

.field private isRecentAP:Z

.field private mActionBar:Lcom/android/internal/widget/ActionBarView;

.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field private mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mRightIconView:Landroid/widget/ImageView;

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I

.field private simpleLayout:Z

.field private thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v0, "4.0a"

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    const-string v0, "debug_nav_bar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.books"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.maps"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.location"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.youtube"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.translate"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.melimots.WordSearch"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.mobilityware.solitaire"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "net.cdeguet.smartkeyboardpro"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.rubicon.dev.glwg"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.sinovatech.unicom.ui"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.neusoft.td.android.wo116114"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->CURRENT_CID:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenDebug:Z

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->showNavigationBarTips(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "panel"
    .parameter "menu"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    if-nez p2, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .parameter "st"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .parameter "shouldInstallDecor"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020317

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .locals 6
    .parameter "featureId"
    .parameter "required"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, ar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v1, nar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_4

    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v1           #nar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .parameter "shouldInstallDecor"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020318

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020232

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x51

    goto :goto_0
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "featureId"
    .parameter "required"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 6
    .parameter "featureId"
    .parameter "required"
    .parameter "convertPanelState"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, ar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v1, nar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_4

    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v1           #nar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_1
    aput-object v2, v0, p1

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_1
.end method

.method private getResource(I)I
    .locals 3
    .parameter "resouceId"

    .prologue
    move v0, p1

    .local v0, value:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x149

    if-ne v1, v2, :cond_0

    :cond_0
    return v0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020234

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .parameter "resource"
    .parameter "resourceName"

    .prologue
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .local v0, packageName:Ljava/lang/String;
    const-string v1, "drawable"

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.htc"

    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .parameter "horizontalProgressBar"
    .parameter "spinnyProgressBar"

    .prologue
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .local v1, features:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/high16 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    const v7, 0x1020235

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, titleContainer:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .end local v6           #titleContainer:Landroid/view/View;
    :cond_1
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x800

    and-int/2addr v7, v9

    if-eqz v7, :cond_d

    .local v2, needsMenuKey:Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindow$2;

    invoke-direct {v8, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .end local v2           #needsMenuKey:Z
    :cond_2
    return-void

    .restart local v6       #titleContainer:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v6           #titleContainer:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const v7, 0x102031a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .local v1, localFeatures:I
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->initProgress()V

    :cond_7
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->handleStartingWindow(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/widget/ActionBarView;)V

    const/4 v3, 0x0

    .local v3, splitActionBar:Z
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    move v5, v2

    .local v5, splitWhenNarrow:Z
    :goto_3
    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110002

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :goto_4
    const v7, 0x102031c

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContainer;

    .local v4, splitView:Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v4, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ActionBarView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    const v7, 0x102031b

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .local v0, cab:Lcom/android/internal/widget/ActionBarContextView;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .end local v0           #cab:Lcom/android/internal/widget/ActionBarContextView;
    :cond_9
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .end local v4           #splitView:Lcom/android/internal/widget/ActionBarContainer;
    .end local v5           #splitWhenNarrow:Z
    :cond_a
    move v5, v8

    goto :goto_3

    .restart local v5       #splitWhenNarrow:Z
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v9, 0x16

    invoke-virtual {v7, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_4

    .restart local v4       #splitView:Lcom/android/internal/widget/ActionBarContainer;
    :cond_c
    if-eqz v3, :cond_9

    const-string v7, "PhoneWindow"

    const-string v9, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #localFeatures:I
    .end local v3           #splitActionBar:Z
    .end local v4           #splitView:Lcom/android/internal/widget/ActionBarContainer;
    .end local v5           #splitWhenNarrow:Z
    :cond_d
    move v2, v8

    goto/16 :goto_2
.end method

.method private launchDefaultSearch()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    goto :goto_0
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .parameter "st"
    .parameter "event"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/htc/autotest/Recorder;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .local v12, config:Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .local v15, isXLarge:Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .local v14, isHoneycombApp:Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .end local v12           #config:Landroid/content/res/Configuration;
    .end local v13           #context:Landroid/content/Context;
    .end local v14           #isHoneycombApp:Z
    .end local v15           #isXLarge:Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .local v11, cb:Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .end local v11           #cb:Landroid/view/Window$Callback;
    .restart local v12       #config:Landroid/content/res/Configuration;
    .restart local v13       #context:Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .restart local v15       #isXLarge:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .end local v12           #config:Landroid/content/res/Configuration;
    .end local v13           #context:Landroid/content/Context;
    .end local v15           #isXLarge:Z
    .restart local v11       #cb:Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .local v17, wm:Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, -0x2

    .local v3, width:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_d

    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .local v10, backgroundResId:I
    const/4 v3, -0x1

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .local v16, shownPanelParent:Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    check-cast v16, Landroid/view/ViewGroup;

    .end local v16           #shownPanelParent:Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #backgroundResId:I
    :cond_a
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const v8, 0x821000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->handleAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_3

    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10       #backgroundResId:I
    goto/16 :goto_4

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #backgroundResId:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v3, -0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_miui_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    const/4 v3, -0x1

    goto/16 :goto_5

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_f

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :cond_10
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6

    :cond_miui_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_miui_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_miui_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0
.end method

.method private openPanelsAfterRestore()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v1, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, v1, v0

    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "st"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    .local v0, handled:Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_1

    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter "container"
    .parameter "level"

    .prologue
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->printViewTree(Landroid/view/ViewGroup;I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0       #child:Landroid/view/View;
    :cond_0
    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 8
    .parameter "toggleMenuMode"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/htc/utils/PerformanceLogUtil;->logShowActionBarOverflowMenu()V

    :cond_1
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .end local v0           #cb:Landroid/view/Window$Callback;
    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    :goto_0
    return-void

    .restart local v0       #cb:Landroid/view/Window$Callback;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .end local v0           #cb:Landroid/view/Window$Callback;
    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz p1, :cond_6

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_5

    move v1, v3

    .local v1, newExpandedMode:Z
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iget-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    invoke-static {v7, v3, v4}, Lcom/htc/autotest/Recorder;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    invoke-direct {p0, v2, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0

    .end local v1           #newExpandedMode:Z
    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, icicles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, curFeatureId:I
    :goto_0
    if-ltz v0, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, icicles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v1, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, curFeatureId:I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private showNavigationBarTips(Z)V
    .locals 13
    .parameter "needsMenuKey"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "persist.sys.navtips.nevershow"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .local v8, noShowMenuTips:Z
    if-nez v8, :cond_0

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v10, v11, :cond_0

    if-eqz p1, :cond_0

    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .local v1, black:Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-ne v10, v11, :cond_2

    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_0

    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, don\'t show top, pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in black list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "APP_SWITCH_KEY_BEHAVIOR"

    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x2

    :goto_1
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, appswitchDefault:I
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_3

    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, mAppSwitchType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", appswitchDefault="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget v10, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    if-eq v10, v0, :cond_4

    sput v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    :cond_4
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    if-nez v10, :cond_0

    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_5

    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, show dialog, title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v10, "layout_inflater"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x4030012

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .local v3, customView:Landroid/view/View;
    const v10, 0x4110013

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, message:Landroid/widget/TextView;
    sget v10, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    packed-switch v10, :pswitch_data_0

    :goto_2
    const v10, 0x4110014

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcCheckBox;

    iput-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    const v10, 0x4110015

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, remindMe:Landroid/widget/TextView;
    const v10, 0x407003a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindow$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v4, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v10, 0x4070036

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v10, 0x2040258

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, menuDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    :cond_6
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    goto/16 :goto_0

    .end local v0           #appswitchDefault:I
    .end local v3           #customView:Landroid/view/View;
    .end local v4           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #menuDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v7           #message:Landroid/widget/TextView;
    .end local v9           #remindMe:Landroid/widget/TextView;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .restart local v0       #appswitchDefault:I
    .restart local v3       #customView:Landroid/view/View;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #message:Landroid/widget/TextView;
    :pswitch_0
    const v10, 0x4070039

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    const v10, 0x4070038

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .parameter "horizontalProgressBar"
    .parameter "spinnyProgressBar"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .local v0, features:I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .parameter "featureId"
    .parameter "st"
    .parameter "fromResume"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .local v1, featureMask:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    const/4 v0, 0x0

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_7

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_0

    :cond_7
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .parameter "featureId"
    .parameter "value"
    .parameter "fromResume"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .local v0, featureMask:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .parameter "value"

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .local v0, circularProgressBar:Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .local v2, horizontalProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .local v1, features:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_4

    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .local v3, level:I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .local v4, visibility:I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .end local v3           #level:I
    .end local v4           #visibility:I
    :cond_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    .restart local v3       #level:I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .end local v3           #level:I
    :cond_4
    const/4 v6, -0x2

    if-ne p1, v6, :cond_6

    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_5

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v6, -0x3

    if-ne p1, v6, :cond_7

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_7
    const/4 v6, -0x4

    if-ne p1, v6, :cond_8

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_8
    if-ltz p1, :cond_a

    if-gt p1, v8, :cond_a

    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v8, :cond_9

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    :cond_a
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_1
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .local v4, wm:Landroid/view/ViewManager;
    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v3, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .local v0, N:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, v3, v1

    .local v2, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0
.end method

.method public final closePanel(I)V
    .locals 2
    .parameter "featureId"

    .prologue
    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .parameter "st"
    .parameter "doCallback"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .local v0, wm:Landroid/view/ViewManager;
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    :cond_2
    if-eqz p2, :cond_3

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    :cond_3
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_0
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 5
    .parameter "menu"

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v3, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .local v0, N:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, v3, v1

    .local v2, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_2
    return-object v2

    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 41
    .parameter "decor"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v38, 0x4

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    const v38, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v39

    xor-int/lit8 v39, v39, -0x1

    and-int v14, v38, v39

    .local v14, flagsToUpdate:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getFloatingWindowWidth(Landroid/content/Context;)I

    move-result v38

    const/16 v39, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    :goto_0
    const/16 v38, 0x3

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_1b

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    :cond_0
    :goto_1
    const/16 v38, 0x11

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_1

    const/16 v38, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    :cond_1
    const/16 v38, 0x10

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_2

    const/16 v38, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    :cond_2
    const/16 v38, 0x9

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_3

    const/16 v38, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v39

    xor-int/lit8 v39, v39, -0x1

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x400

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    :cond_3
    const/16 v38, 0xe

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_4

    const/high16 v38, 0x10

    const/high16 v39, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v40

    xor-int/lit8 v40, v40, -0x1

    and-int v39, v39, v40

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    :cond_4
    const/16 v39, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v40, 0xb

    move/from16 v0, v38

    move/from16 v1, v40

    if-lt v0, v1, :cond_1c

    const/16 v38, 0x1

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_5

    const/high16 v38, 0x80

    const/high16 v39, 0x80

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v40

    xor-int/lit8 v40, v40, -0x1

    and-int v39, v39, v40

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    :cond_5
    const/16 v38, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v38, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v38, 0x17

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_6

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    :cond_6
    const/16 v38, 0x17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_7
    const/16 v38, 0x19

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_8

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    :cond_8
    const/16 v38, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_9
    const/16 v38, 0x1a

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_a

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    :cond_a
    const/16 v38, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_b
    const/16 v38, 0x18

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_c

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :cond_c
    const/16 v38, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v11

    .local v11, context:Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v35, v0

    .local v35, targetSdk:I
    const/16 v38, 0xb

    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    const/16 v33, 0x1

    .local v33, targetPreHoneycomb:Z
    :goto_3
    const/16 v38, 0xe

    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    const/16 v34, 0x1

    .local v34, targetPreIcs:Z
    :goto_4
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x1110006

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v32

    .local v32, targetHcNeedsOptions:Z
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v38

    if-eqz v38, :cond_e

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v38

    if-eqz v38, :cond_1f

    :cond_e
    const/16 v24, 0x1

    .local v24, noActionBar:Z
    :goto_5
    if-nez v33, :cond_f

    if-eqz v34, :cond_20

    if-eqz v32, :cond_20

    if-eqz v24, :cond_20

    :cond_f
    const/high16 v38, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v39, 0xb

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_11

    :cond_10
    const/16 v38, 0x15

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_11

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    .local v25, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v38

    if-nez v38, :cond_12

    const/16 v38, 0xd

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_12
    const/16 v38, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-nez v38, :cond_13

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v38

    if-nez v38, :cond_14

    const/16 v38, 0x0

    const/high16 v39, 0x3f00

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_14
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v38, v0

    if-nez v38, :cond_15

    const/16 v38, 0x8

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v38

    if-nez v38, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v38, v0

    if-nez v38, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v38, v0

    if-nez v38, :cond_16

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v38, v0

    if-nez v38, :cond_17

    const/16 v38, 0x2

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    :cond_17
    const/16 v38, 0x7

    const/high16 v39, -0x100

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v13

    .local v13, features:I
    and-int/lit8 v38, v13, 0x18

    if-eqz v38, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_21

    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .local v29, res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cb

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .end local v29           #res:Landroid/util/TypedValue;
    .local v19, layoutResource:I
    :goto_7
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    const/16 v18, 0x0

    .local v18, in:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v19

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    new-instance v38, Landroid/view/ViewGroup$LayoutParams;

    const/16 v39, -0x1

    const/16 v40, -0x1

    invoke-direct/range {v38 .. v40}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_9
    const v38, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .local v10, contentParent:Landroid/view/ViewGroup;
    if-nez v10, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_34

    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "layoutResource: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_32

    const-string v38, "PhoneWindow"

    const-string v39, "LayoutInflater.inflate() = null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18           #in:Landroid/view/View;
    :goto_a
    new-instance v38, Ljava/lang/RuntimeException;

    const-string v39, "Window couldn\'t find content container view"

    invoke-direct/range {v38 .. v39}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v38

    .end local v10           #contentParent:Landroid/view/ViewGroup;
    .end local v11           #context:Landroid/content/Context;
    .end local v13           #features:I
    .end local v19           #layoutResource:I
    .end local v24           #noActionBar:Z
    .end local v25           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v32           #targetHcNeedsOptions:Z
    .end local v33           #targetPreHoneycomb:Z
    .end local v34           #targetPreIcs:Z
    .end local v35           #targetSdk:I
    :cond_1a
    const v38, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    :cond_1b
    const/16 v38, 0xf

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    :cond_1c
    const/16 v38, 0x0

    goto/16 :goto_2

    .restart local v11       #context:Landroid/content/Context;
    .restart local v35       #targetSdk:I
    :cond_1d
    const/16 v33, 0x0

    goto/16 :goto_3

    .restart local v33       #targetPreHoneycomb:Z
    :cond_1e
    const/16 v34, 0x0

    goto/16 :goto_4

    .restart local v32       #targetHcNeedsOptions:Z
    .restart local v34       #targetPreIcs:Z
    :cond_1f
    const/16 v24, 0x0

    goto/16 :goto_5

    .restart local v24       #noActionBar:Z
    :cond_20
    const/high16 v38, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    goto/16 :goto_6

    .restart local v13       #features:I
    .restart local v25       #params:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    const v38, 0x109009e

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_7

    .end local v19           #layoutResource:I
    :cond_22
    and-int/lit8 v38, v13, 0x24

    if-eqz v38, :cond_23

    and-int/lit16 v0, v13, 0x100

    move/from16 v38, v0

    if-nez v38, :cond_23

    const v38, 0x109009a

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_23
    and-int/lit16 v0, v13, 0x80

    move/from16 v38, v0

    if-eqz v38, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_24

    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .restart local v29       #res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cc

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .end local v29           #res:Landroid/util/TypedValue;
    .restart local v19       #layoutResource:I
    :goto_b
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_24
    const v38, 0x1090099

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto :goto_b

    .end local v19           #layoutResource:I
    :cond_25
    and-int/lit8 v38, v13, 0x2

    if-nez v38, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_26

    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .restart local v29       #res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cd

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    .end local v29           #res:Landroid/util/TypedValue;
    :cond_26
    and-int/lit16 v0, v13, 0x100

    move/from16 v38, v0

    if-eqz v38, :cond_28

    and-int/lit16 v0, v13, 0x200

    move/from16 v38, v0

    if-eqz v38, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getActionBarOverlayResourceId(Landroid/content/Context;)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getActionBarResourceId(Landroid/content/Context;)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_28
    const v38, 0x109009d

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_29
    and-int/lit16 v0, v13, 0x400

    move/from16 v38, v0

    if-eqz v38, :cond_2a

    const v38, 0x109009c

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    :cond_2a
    const v38, 0x109009b

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .restart local v18       #in:Landroid/view/View;
    :cond_2b
    sget-object v38, Lcom/htc/R$styleable;->HtcFakescreen:[I

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, attributeSet:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_19

    const/16 v38, 0x3

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    const/16 v38, 0x4

    const/high16 v39, -0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2c

    const/16 v38, 0x2

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_2c

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2d

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2d

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .local v30, resource:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2e

    const v37, 0x40a0024

    .local v37, tboundID:I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2f

    const v21, 0x40a0023

    .local v21, lboundID:I
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_30

    const v28, 0x40a0025

    .local v28, rboundID:I
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_31

    const v9, 0x40a0026

    .local v9, bboundID:I
    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .local v36, tbound:I
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .local v20, lbound:I
    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .local v27, rbound:I
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .local v8, bbound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v36

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "generateLayout: thumbnailDrawable:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #bbound:I
    .end local v9           #bboundID:I
    .end local v20           #lbound:I
    .end local v21           #lboundID:I
    .end local v27           #rbound:I
    .end local v28           #rboundID:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v36           #tbound:I
    .end local v37           #tboundID:I
    :cond_2d
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "generateLayout(): fakeheader:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " fakefooter:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " fakebackground:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " portrait:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .restart local v30       #resource:Landroid/content/res/Resources;
    :cond_2e
    const v37, 0x40a0028

    goto/16 :goto_c

    .restart local v37       #tboundID:I
    :cond_2f
    const v21, 0x40a0027

    goto/16 :goto_d

    .restart local v21       #lboundID:I
    :cond_30
    const v28, 0x40a0029

    goto/16 :goto_e

    .restart local v28       #rboundID:I
    :cond_31
    const v9, 0x40a002a

    goto/16 :goto_f

    .end local v6           #attributeSet:Landroid/content/res/TypedArray;
    .end local v21           #lboundID:I
    .end local v28           #rboundID:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v37           #tboundID:I
    .restart local v10       #contentParent:Landroid/view/ViewGroup;
    :cond_32
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v38, v0

    if-eqz v38, :cond_33

    check-cast v18, Landroid/view/ViewGroup;

    .end local v18           #in:Landroid/view/View;
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->printViewTree(Landroid/view/ViewGroup;I)V

    goto/16 :goto_a

    .restart local v18       #in:Landroid/view/View;
    :cond_33
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "LayoutInflater.inflate() = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_35

    and-int/lit8 v38, v13, 0x20

    if-eqz v38, :cond_35

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v26

    .local v26, progress:Landroid/widget/ProgressBar;
    if-eqz v26, :cond_35

    const/16 v38, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .end local v26           #progress:Landroid/widget/ProgressBar;
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v38

    if-nez v38, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_3a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .local v12, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v38, v0

    if-eqz v38, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v38, v0

    if-eqz v38, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v38, v0

    if-nez v38, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .end local v12           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3e

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .restart local v30       #resource:Landroid/content/res/Resources;
    const/16 v17, 0x0

    .local v17, frameBaseView:Landroid/widget/FrameLayout;
    const/16 v23, -0x1

    .local v23, matchParent:I
    new-instance v17, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;

    .end local v17           #frameBaseView:Landroid/widget/FrameLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;)V

    .restart local v17       #frameBaseView:Landroid/widget/FrameLayout;
    const/16 v38, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    new-instance v38, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v38, v0

    const/high16 v39, -0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3f

    const v38, -0xdadadb

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string v38, "PhoneWindow"

    const-string v39, "generateLayout: recent_background: 0XF252525"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    const/high16 v16, -0x8000

    .local v16, footerOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3c

    const-string v38, "common_app_bkg_top_src"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v31

    .local v31, resourceID:I
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v38, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v22, lparams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v38, 0x30

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v38, 0x40a0003

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-nez v38, :cond_3b

    const/high16 v38, 0x409

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_3b
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v5, actionBarView:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v31, :cond_42

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .end local v5           #actionBarView:Landroid/view/View;
    .end local v22           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v31           #resourceID:I
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3e

    if-gez v16, :cond_3d

    const/high16 v38, 0x409

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    :cond_3d
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v38, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v22       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_43

    const/16 v38, -0x1

    :goto_12
    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_44

    .end local v16           #footerOffset:I
    :goto_13
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_45

    const/16 v38, 0x50

    :goto_14
    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_46

    const-string v38, "common_app_bkg_down_src"

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v31

    .restart local v31       #resourceID:I
    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v15, footerBarView:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v31, :cond_47

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_16
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .end local v15           #footerBarView:Landroid/view/View;
    .end local v17           #frameBaseView:Landroid/widget/FrameLayout;
    .end local v22           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v23           #matchParent:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v31           #resourceID:I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    return-object v10

    .restart local v17       #frameBaseView:Landroid/widget/FrameLayout;
    .restart local v23       #matchParent:I
    .restart local v30       #resource:Landroid/content/res/Resources;
    :cond_3f
    const-string v38, "common_app_bkg"

    const-string v39, "drawable"

    const-string v40, "com.htc"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    .restart local v31       #resourceID:I
    if-eqz v31, :cond_40

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_10

    :cond_40
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .end local v31           #resourceID:I
    :cond_41
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v7, backgroundView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v38, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10

    .end local v7           #backgroundView:Landroid/view/View;
    .restart local v5       #actionBarView:Landroid/view/View;
    .restart local v16       #footerOffset:I
    .restart local v22       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v31       #resourceID:I
    :cond_42
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg_top_src resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .end local v5           #actionBarView:Landroid/view/View;
    .end local v31           #resourceID:I
    :cond_43
    move/from16 v38, v16

    goto/16 :goto_12

    :cond_44
    const/16 v16, -0x1

    goto/16 :goto_13

    .end local v16           #footerOffset:I
    :cond_45
    const/16 v38, 0x5

    goto/16 :goto_14

    :cond_46
    const-string v38, "common_app_bkg_down_land_src"

    goto/16 :goto_15

    .restart local v15       #footerBarView:Landroid/view/View;
    .restart local v31       #resourceID:I
    :cond_47
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg_down resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method getActionBarView()Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .parameter "st"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, menuView:Lcom/android/internal/view/menu/MenuView;
    :goto_1
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .local v0, defaultAnimations:I
    if-eqz v0, :cond_3

    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v0           #defaultAnimations:I
    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_1

    .restart local v1       #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 3
    .parameter "st"

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 9
    .parameter "st"

    .prologue
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_1

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .local v2, currentTheme:Landroid/content/res/Resources$Theme;
    const v6, 0x1010397

    invoke-virtual {v2, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .local v5, targetThemeRes:I
    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    if-eq v6, v5, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0           #context:Landroid/content/Context;
    .local v1, context:Landroid/content/Context;
    move-object v0, v1

    .end local v1           #context:Landroid/content/Context;
    .end local v2           #currentTheme:Landroid/content/res/Resources$Theme;
    .end local v4           #outValue:Landroid/util/TypedValue;
    .end local v5           #targetThemeRes:I
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    return v8
.end method

.method public invalidatePanelMenu(I)V
    .locals 5
    .parameter "featureId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    const/4 v0, 0x0

    .local v0, savedActionViewStates:Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #savedActionViewStates:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #savedActionViewStates:Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    :cond_1
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, state:Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v1           #state:Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .restart local v0       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"
    .parameter "alpha"

    .prologue
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, view:Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v0           #view:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0       #view:Landroid/widget/ImageView;
    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .parameter "featureId"
    .parameter "value"

    .prologue
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    const v1, 0x1020235

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .local v0, titleContainer:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .local v0, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .end local p1
    :cond_0
    :goto_1
    return v1

    .end local v0           #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v1, v2

    goto :goto_1

    :sswitch_1
    if-gez p1, :cond_2

    move p1, v1

    .end local p1
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move v1, v2

    goto :goto_1

    .restart local p1
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    if-ltz p1, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    move v1, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "featureId"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .local v0, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_0
    sparse-switch p2, :sswitch_data_0

    .end local p1
    :cond_1
    :goto_1
    return v2

    .end local v0           #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v2, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v2, v3

    goto :goto_1

    :sswitch_1
    if-gez p1, :cond_3

    move p1, v2

    .end local p1
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v2, v3

    goto :goto_1

    .restart local p1
    :sswitch_2
    if-ltz p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v2, v3

    goto :goto_1

    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v2, v3

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_5
    move v2, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .parameter "featureId"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_0

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, playSoundEffect:Z
    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .local v3, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    :cond_4
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1

    :cond_6
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .local v2, show:Z
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_7

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_7
    if-eqz v2, :cond_2

    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 v1, 0x1

    goto :goto_1

    .end local v2           #show:Z
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_8
    const-string v4, "PhoneWindow"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menu"
    .parameter "item"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .end local v1           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .local v2, wm:Landroid/view/ViewManager;
    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #wm:Landroid/view/ViewManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "featureId"
    .parameter "event"

    .prologue
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5
    .parameter "featureId"
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .local v0, res:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "st"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    :cond_4
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_b

    :cond_5
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v2, :cond_7

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_8
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    if-eqz v0, :cond_9

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v2, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {p1, v7}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    :cond_a
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    :cond_b
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    iput-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_c
    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v2, v5, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_d
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_1
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .local v1, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_11

    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .end local v1           #kmap:Landroid/view/KeyCharacterMap;
    :cond_f
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v4, v3

    goto/16 :goto_0

    :cond_10
    const/4 v2, -0x1

    goto :goto_1

    .restart local v1       #kmap:Landroid/view/KeyCharacterMap;
    :cond_11
    move v2, v4

    goto :goto_2
.end method

.method public requestFeature(I)Z
    .locals 4
    .parameter "featureId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "requestFeature() must be called before adding content"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .local v0, features:I
    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    if-eq p1, v2, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    if-ne p1, v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    :cond_4
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .local v4, savedStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, focusedViewId:I
    if-eq v1, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, needsFocus:Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .end local v2           #needsFocus:Landroid/view/View;
    :cond_3
    :goto_1
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .local v3, panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_0

    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .local v0, actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .end local v0           #actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3           #panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2       #needsFocus:Landroid/view/View;
    :cond_5
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #needsFocus:Landroid/view/View;
    .restart local v0       #actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3       #panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, outState:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .local v4, states:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .local v3, panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .local v0, actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .parameter "featureId"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .parameter "container"

    .prologue
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void

    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void

    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3
    .parameter "featureId"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .parameter "featureId"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .parameter "featureId"
    .parameter "attrs"
    .parameter "drawableAttr"
    .parameter "alphaAttr"

    .prologue
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .local v0, alpha:I
    if-ltz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .end local v0           #alpha:I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .parameter "featureId"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    return-void
.end method

.method public setSimpleDecorView(ZLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "enable"
    .parameter "thumbnail"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v3, wPixelsize:I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, hPixelsize:I
    if-ge v3, v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateLayout: thumbnailDrawable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .parameter "uiOptions"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .parameter "uiOptions"
    .parameter "mask"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return-void
.end method

.method public setWindowCrop(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .local v0, wm:Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManager;->setWindowCrop(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .parameter "get"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "featureId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .parameter "featureId"
    .parameter "fromActive"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method
