.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$SeekBarIndicator;,
        Lmiui/widget/ScreenView$ArrowIndicator;,
        Lmiui/widget/ScreenView$Indicator;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/widget/ScreenView$GestureVelocityTracker;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x12c

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

#the value of this static final field might be set in the static constructor
.field protected static final INDICATOR_MEASURE_SPEC:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_SCREEN:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x4

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mAutoHideTimer:Ljava/lang/Runnable;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mIsSlideBarAutoHide:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lmiui/widget/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lmiui/widget/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 54
    const v0, 0x602008b

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 55
    const v0, 0x602008c

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 56
    const v0, 0x602008d

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 57
    const v0, 0x602008e

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 59
    const v0, 0x602008f

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 69
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 85
    iput v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 87
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 92
    iput v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 95
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 99
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 111
    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 116
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 127
    iput v3, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 134
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 136
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 153
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 156
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 292
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 1556
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 324
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 54
    const v0, 0x602008b

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 55
    const v0, 0x602008c

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 56
    const v0, 0x602008d

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 57
    const v0, 0x602008e

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 59
    const v0, 0x602008f

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 69
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 85
    iput v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 87
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 92
    iput v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 95
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 99
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 111
    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 116
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 127
    iput v3, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 134
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 136
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 153
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 156
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 292
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 1556
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 346
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/widget/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$700(Lmiui/widget/ScreenView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1479
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1480
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1481
    iget v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1483
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 354
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 355
    new-instance v1, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 356
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 359
    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 360
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 363
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 364
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 1095
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1097
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 1098
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1100
    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

    .prologue
    .line 788
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    .line 789
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 790
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 1089
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1090
    .local v0, dx:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1091
    .local v1, dy:F
    iget v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private showSlideBar()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 600
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 602
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAlpha(F)V

    .line 603
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 605
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private snapByVelocity(I)V
    .locals 5
    .parameter "pointerId"

    .prologue
    .line 1194
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v2, v3, v4, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v2

    float-to-int v1, v2

    .line 1199
    .local v1, velocityX:I
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 1200
    .local v0, flingDirection:I
    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    goto :goto_0
.end method

.method private startHideSlideBar()V
    .locals 3

    .prologue
    .line 611
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 770
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    .line 771
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-gtz p1, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 775
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 780
    :cond_0
    return-void

    .line 771
    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 775
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 17
    .parameter "scrollX"
    .parameter "requestLayout"

    .prologue
    .line 681
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_3

    .line 682
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 683
    .local v4, indexOffset:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v12

    .line 684
    .local v12, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v11

    .line 686
    .local v11, screenHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_3

    .line 687
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 688
    .local v5, indicator:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 691
    .local v9, indicatorWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 693
    .local v6, indicatorHeight:I
    const/4 v7, 0x0

    .line 694
    .local v7, indicatorLeft:I
    const/4 v8, 0x0

    .line 696
    .local v8, indicatorTop:I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    .local v1, gravity:I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 699
    and-int/lit8 v2, v1, 0x7

    .line 700
    .local v2, horizontalGravity:I
    and-int/lit8 v13, v1, 0x70

    .line 702
    .local v13, verticalGravity:I
    packed-switch v2, :pswitch_data_0

    .line 714
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 717
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 729
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 732
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_0
    :goto_2
    if-nez p2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_2

    move-object v14, v5

    .line 733
    check-cast v14, Lmiui/widget/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lmiui/widget/ScreenView$Indicator;->fastOffset(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 734
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 686
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .restart local v2       #horizontalGravity:I
    .restart local v13       #verticalGravity:I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 705
    goto :goto_1

    .line 707
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 709
    goto :goto_1

    .line 711
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 712
    goto :goto_1

    .line 719
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 720
    goto :goto_2

    .line 722
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 724
    goto :goto_2

    .line 726
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 727
    goto :goto_2

    .line 737
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_2
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 745
    .end local v1           #gravity:I
    .end local v3           #i:I
    .end local v4           #indexOffset:I
    .end local v5           #indicator:Landroid/view/View;
    .end local v6           #indicatorHeight:I
    .end local v7           #indicatorLeft:I
    .end local v8           #indicatorTop:I
    .end local v9           #indicatorWidth:I
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    :cond_3
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 717
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 677
    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    iget v1, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    .line 678
    return-void

    .line 665
    :pswitch_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 668
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 671
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 674
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1487
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_1

    .line 1488
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1489
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 1490
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1495
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    if-ge v2, v0, :cond_1

    .line 1496
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1499
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .parameter "scrollX"

    .prologue
    .line 749
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 750
    .local v0, screenCount:I
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 751
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 752
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 756
    .local v3, slidePointWidth:I
    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 757
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    .line 762
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    .line 763
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 764
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->invalidate()V

    .line 767
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 757
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "indicator"
    .parameter "params"

    .prologue
    .line 1385
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1386
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    return-void
.end method

.method public addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .parameter "indicator"
    .parameter "params"
    .parameter "index"

    .prologue
    .line 1390
    const/4 v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1391
    if-ltz p3, :cond_0

    .line 1392
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1395
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1396
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1341
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1342
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 1343
    move p2, v0

    .line 1349
    :goto_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1355
    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    .line 1357
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    return-void

    .line 1346
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1453
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, 0x4e6e6b28

    .line 816
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 817
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 818
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 819
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollY:I

    .line 820
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    .line 840
    :cond_0
    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3, v7}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 841
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 842
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 843
    return-void

    .line 821
    :cond_1
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    if-eq v3, v6, :cond_2

    .line 822
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 823
    iput v6, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 824
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v3, :cond_0

    .line 825
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v3, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    .line 826
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    .line 828
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 829
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 830
    .local v2, now:F
    iget v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 831
    .local v1, e:F
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 832
    .local v0, dx:F
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    .line 833
    iput v2, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 835
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 836
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 985
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 986
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 987
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 996
    :goto_0
    return v0

    .line 990
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 991
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 992
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 996
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 966
    invoke-virtual {p0, p2}, Lmiui/widget/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 967
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1220
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1292
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1294
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1330
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1331
    :cond_0
    const/4 v0, 0x0

    .line 1333
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 847
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 848
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 849
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 850
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1080
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 1081
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1084
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 1040
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1041
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    invoke-virtual {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1048
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1049
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1052
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1053
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 1059
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1060
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 1068
    :cond_4
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1069
    invoke-virtual {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1076
    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 937
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiui/widget/ScreenView;->setFrame(IIII)Z

    .line 939
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr p2, v4

    .line 940
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    sub-int/2addr p4, v4

    .line 942
    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 945
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 946
    .local v2, count:I
    const/4 v1, 0x0

    .line 947
    .local v1, childLeft:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 948
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 949
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 950
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v5, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v7, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 947
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 959
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 960
    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 962
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 862
    iput p1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    .line 863
    iput p2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    .line 864
    const/4 v8, 0x0

    .line 865
    .local v8, maxHeight:I
    const/4 v9, 0x0

    .line 867
    .local v9, maxWidth:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    .line 870
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v10, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    .line 871
    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 873
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 875
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 877
    .local v2, childWidthMeasureSpec:I
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 882
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 883
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 884
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 870
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 888
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v6, 0x0

    .line 889
    .local v6, maxChildHeight:I
    const/4 v7, 0x0

    .line 890
    .local v7, maxChildWidth:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 891
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 893
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 895
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 897
    .restart local v2       #childWidthMeasureSpec:I
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 902
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 903
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 904
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 890
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 906
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 907
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 910
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 911
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 913
    invoke-static {v9, p1}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v10

    invoke-static {v8, p2}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 917
    if-lez v3, :cond_3

    .line 918
    iput v7, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 919
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 920
    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    .line 921
    iget v10, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    .line 922
    const/4 v10, 0x1

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 924
    :cond_2
    iget v10, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 927
    :cond_3
    iget-boolean v10, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_4

    .line 928
    const/4 v10, 0x0

    iput-boolean v10, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 929
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 930
    iget v10, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 931
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 933
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1507
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1509
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1733
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1736
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1785
    move-object v0, p1

    check-cast v0, Lmiui/widget/ScreenView$SavedState;

    .line 1786
    .local v0, savedState:Lmiui/widget/ScreenView$SavedState;
    invoke-virtual {v0}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1787
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1788
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1790
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1502
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1778
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1779
    .local v0, state:Lmiui/widget/ScreenView$SavedState;
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    .line 1780
    return-object v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1165
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1166
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 1167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 1168
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1169
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1170
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1171
    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1180
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1181
    .local v1, x:F
    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v2, v1

    .line 1182
    .local v0, deltaX:F
    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1184
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 1185
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 1190
    :goto_0
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1191
    return-void

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1174
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 1175
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1176
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1104
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    .line 1161
    :goto_0
    return v5

    .line 1106
    :cond_0
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 1107
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1110
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 1160
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    goto :goto_0

    .line 1115
    :pswitch_1
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1116
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1119
    :cond_3
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 1121
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1122
    .local v3, pointerIndex:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1123
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1124
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1126
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1127
    .local v4, x:F
    iget v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 1128
    .local v0, deltaX:F
    iput v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1130
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_5

    .line 1131
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1133
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1139
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 1140
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 1142
    :cond_6
    invoke-virtual {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1145
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 1147
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1148
    .local v2, pointerId:I
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 1152
    if-nez v3, :cond_7

    move v1, v5

    .line 1153
    .local v1, newPointerIndex:I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1154
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1155
    iget-object v6, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1434
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1435
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1436
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1381
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1382
    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1400
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1401
    .local v0, index:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1402
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1405
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1406
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1407
    return-void
.end method

.method public removeScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1410
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1411
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1415
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_3

    .line 1416
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1425
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1426
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    .line 1428
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1429
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1430
    return-void

    .line 1418
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1420
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1439
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1442
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1443
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1445
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1446
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1377
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 973
    .local v0, screen:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 974
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 975
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 976
    const/4 v1, 0x1

    .line 980
    :goto_0
    return v1

    .line 978
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 980
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1558
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1559
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1560
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1561
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1562
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1563
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1564
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1565
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1566
    iget v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1567
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1568
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1569
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 808
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 809
    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 810
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 811
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 812
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 799
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 800
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 802
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->measure(II)V

    .line 803
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 804
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1462
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 372
    if-eqz p1, :cond_2

    .line 376
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v2, :cond_1

    .line 377
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 381
    .local v0, leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 382
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 383
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 385
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 389
    .local v1, rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 390
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 391
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 398
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 399
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 407
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 394
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    .restart local v0       #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 401
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 403
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 404
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 405
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .parameter "leftOn"
    .parameter "leftOff"
    .parameter "rightOn"
    .parameter "rightOff"

    .prologue
    .line 414
    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 415
    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 416
    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 417
    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 418
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 178
    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 179
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    const/4 v2, 0x0

    .line 1308
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    .line 1309
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1310
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1315
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1316
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1318
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->scrollToScreen(I)V

    .line 1319
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1321
    :cond_1
    return-void

    .line 1312
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1324
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    .line 1325
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1326
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1327
    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 626
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 627
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 186
    iput p1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    .line 187
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1471
    iput-object p1, p0, Lmiui/widget/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1472
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1473
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1474
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 783
    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 784
    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    .line 785
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 167
    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 168
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    #setter for: Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F
    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$102(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 171
    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 653
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 654
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 657
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 659
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 660
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    .line 648
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    .line 649
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 650
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 182
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 183
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x10e

    const/16 v3, 0x14a

    const v2, 0x3fa66666

    const/4 v1, 0x0

    .line 1512
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_0

    .line 1513
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 1514
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1550
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1516
    :pswitch_1
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1517
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1521
    :pswitch_2
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1522
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1525
    :pswitch_3
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1526
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1529
    :pswitch_4
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1530
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1533
    :pswitch_5
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1534
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1539
    :pswitch_6
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1540
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1543
    :pswitch_7
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1544
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0
    .parameter "wholeScreen"

    .prologue
    .line 190
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 191
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 433
    if-eqz p1, :cond_2

    .line 434
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Lmiui/widget/ScreenView$SeekBarIndicator;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    .line 436
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 437
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 438
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    goto :goto_0
.end method

.method public setSeekBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 630
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .parameter "seekPointResId"

    .prologue
    .line 425
    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 426
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 569
    const v0, 0x6020092

    const v1, 0x6020093

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 570
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 3
    .parameter "params"
    .parameter "slideDrawableId"
    .parameter "backgroundDrawableId"
    .parameter "isAutoHide"

    .prologue
    const/4 v2, 0x0

    .line 577
    iput-boolean p4, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    .line 578
    if-eqz p1, :cond_2

    .line 579
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    .line 581
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance v1, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 583
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 590
    iput-object v2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 637
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "slop"

    .prologue
    .line 174
    iput p1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 175
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1004
    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1006
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1007
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 1008
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1009
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1010
    iget-object v1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1034
    :cond_0
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 1035
    return-void

    :cond_1
    move v1, v3

    .line 1006
    goto :goto_0

    .line 1013
    :cond_2
    if-eqz p1, :cond_3

    .line 1014
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1018
    :cond_3
    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 1019
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1023
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1024
    .local v0, currentScreen:Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1027
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 1028
    iget v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1029
    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 1030
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 857
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 858
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5
    .parameter "velocity"
    .parameter "flingDirection"

    .prologue
    const/4 v3, 0x1

    .line 1204
    if-ne p2, v3, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_0

    .line 1205
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1215
    :goto_0
    return-void

    .line 1206
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 1207
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1208
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 1209
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1211
    :cond_2
    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v0, v4, v2

    .line 1212
    .local v0, snapUnit:I
    iget v2, p0, Lmiui/widget/ScreenView;->mScrollX:I

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int v1, v2, v4

    .line 1213
    .local v1, whichScreen:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v0           #snapUnit:I
    .end local v1           #whichScreen:I
    :cond_3
    move v2, v3

    .line 1211
    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 1223
    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1224
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 1278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1279
    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"
    .parameter "notification"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1231
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_6

    .line 1236
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1237
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1242
    :goto_1
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1243
    .local v7, screenDelta:I
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1244
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    .line 1247
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1249
    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .line 1250
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1252
    if-eqz p3, :cond_7

    .line 1253
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1258
    :goto_2
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1259
    .local v6, newX:I
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1260
    .local v3, delta:I
    if-eqz v3, :cond_0

    .line 1263
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    .line 1264
    .local v5, duration:I
    if-lez p2, :cond_4

    .line 1265
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1269
    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1270
    if-gt v7, v8, :cond_5

    .line 1271
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1273
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1274
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1239
    .end local v3           #delta:I
    .end local v5           #duration:I
    .end local v6           #newX:I
    .end local v7           #screenDelta:I
    :cond_6
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto/16 :goto_1

    .line 1255
    .restart local v7       #screenDelta:I
    :cond_7
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_2
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1
    .parameter "whichScreen"
    .parameter "notification"

    .prologue
    const/4 v0, 0x0

    .line 1227
    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1228
    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 14
    .parameter "child"

    .prologue
    const v13, 0x459c4000

    const/high16 v10, 0x4000

    const v11, 0x3e99999a

    const/high16 v12, 0x3f80

    const/4 v8, 0x0

    .line 1571
    instance-of v9, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v9, :cond_0

    .line 1697
    :goto_0
    :pswitch_0
    return-void

    .line 1574
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 1575
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 1576
    .local v0, childH:F
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 1577
    .local v4, halfScreenW:F
    div-float v3, v1, v10

    .line 1578
    .local v3, halfChildW:F
    div-float v2, v0, v10

    .line 1579
    .local v2, halfChildH:F
    iget v9, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    .line 1580
    .local v5, interpolation:F
    iget v9, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1582
    :pswitch_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1585
    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1588
    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_2

    .line 1589
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1592
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1593
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1594
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1595
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1596
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1597
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1598
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1599
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1600
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1601
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1602
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1605
    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_4

    .line 1606
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1609
    :cond_4
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1610
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1611
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1612
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1613
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1614
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1615
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1616
    neg-float v9, v5

    const/high16 v10, 0x41f0

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1617
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1618
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1619
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1622
    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    .line 1623
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1626
    :cond_6
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1627
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1628
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1629
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1630
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1631
    cmpg-float v9, v5, v8

    if-gez v9, :cond_7

    move v1, v8

    .end local v1           #childW:F
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1632
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1633
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1634
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1635
    const/high16 v8, -0x3d4c

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1636
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1639
    .restart local v1       #childW:F
    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_9

    .line 1640
    :cond_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1643
    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1644
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1645
    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1646
    mul-float v9, v11, v5

    add-float v6, v12, v9

    .line 1647
    .local v6, scale1:F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1648
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1649
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1650
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1651
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1652
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1653
    const/high16 v8, 0x4234

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1654
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1659
    .end local v6           #scale1:F
    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_a

    .line 1660
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1663
    :cond_a
    sub-float v9, v12, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1664
    const v9, 0x3f19999a

    const v10, 0x3ecccccd

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1665
    .local v7, scale2:F
    sub-float v9, v12, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1666
    sub-float v9, v12, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1667
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1668
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1669
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1670
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1671
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1672
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1673
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1674
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1677
    .end local v7           #scale2:F
    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_c

    .line 1678
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1681
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1682
    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1683
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1684
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1685
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1686
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1687
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1688
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1689
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1690
    const/high16 v8, 0x42b4

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1691
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1694
    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .parameter "child"
    .parameter "interpolation"

    .prologue
    .line 1700
    return-void
.end method
