.class Lmiui/widget/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# static fields
.field private static final VALID_PINCH_IN_RATIO:F = 0.8f

.field private static final VALID_PINCH_OUT_RATIO:F = 1.2f

.field private static final VALID_PINCH_RATIO:F = 0.95f

.field private static final VALID_PINCH_TIME:F = 200.0f


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 1738
    iput-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1738
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 1754
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1756
    .local v0, scale:F
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v2}, Lmiui/widget/ScreenView;->access$800(Lmiui/widget/ScreenView;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x4348

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const v2, 0x3f733333

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    const v2, 0x3f86bca2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1760
    :cond_0
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1763
    :cond_1
    const v2, 0x3f4ccccd

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 1764
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 1773
    :goto_0
    return v1

    .line 1768
    :cond_2
    const v2, 0x3f99999a

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1769
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    .line 1773
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 1746
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$800(Lmiui/widget/ScreenView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1750
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->finishCurrentGesture()V

    .line 1751
    return-void
.end method
