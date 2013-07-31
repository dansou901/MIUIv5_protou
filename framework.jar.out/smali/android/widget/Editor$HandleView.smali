.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private mConfirmMove:Z

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mDrawableTop:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field private mHorizontalEdgeAdj:Z

.field private mHorizontalOffset:I

.field protected mHotspotX:I

.field protected mHotspotY:F

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field protected mIsInsertionHandle:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field protected mPos:I

.field private mPositionHasChanged:Z

.field protected mPositionOnTop:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4246
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4247
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4204
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    .line 4210
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:I

    .line 4211
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalEdgeAdj:Z

    .line 4215
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    .line 4240
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4242
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4308
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4309
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4310
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4311
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4248
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4250
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4251
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4252
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4253
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4255
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4256
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4259
    invoke-virtual {p1}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4260
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->setOrientationHTC()V

    .line 4268
    :goto_0
    return-void

    .line 4262
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4264
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4265
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4266
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method static synthetic access$3300(Landroid/widget/Editor$HandleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4201
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/Editor$HandleView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 4201
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 4319
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4320
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4321
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4322
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4323
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 4326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4327
    .local v3, now:J
    const/4 v0, 0x0

    .line 4328
    .local v0, i:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4329
    .local v2, index:I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4330
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 4331
    add-int/lit8 v0, v0, 0x1

    .line 4332
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 4335
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 4337
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4339
    :cond_1
    return-void
.end method

.method private findBestPosition(II)V
    .locals 21
    .parameter "lineTop"
    .parameter "lineBottom"

    .prologue
    .line 4522
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 4523
    .local v3, actionbarHeightValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x10102eb

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4524
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 4527
    .local v11, mStatusBarWindowOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPos:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 4570
    :cond_0
    :goto_0
    return-void

    .line 4529
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 4530
    .local v10, hostView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v18

    if-nez v18, :cond_2

    .line 4531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v19}, Landroid/widget/Editor;->access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 4533
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    .line 4534
    .local v7, clip:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 4535
    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    invoke-virtual {v10}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 4536
    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v18

    add-int v14, p1, v18

    .line 4537
    .local v14, posTopY:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v14, v0, :cond_4

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v14, v0, :cond_4

    const/16 v16, 0x1

    .line 4538
    .local v16, topVisible:Z
    :goto_1
    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v18

    add-int v13, p2, v18

    .line 4539
    .local v13, posBotomY:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_5

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v13, v0, :cond_5

    const/4 v6, 0x1

    .line 4540
    .local v6, bottomVisible:Z
    :goto_2
    invoke-static {}, Landroid/widget/Editor;->access$3800()Landroid/graphics/Rect;

    move-result-object v4

    .line 4541
    .local v4, anchorRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v17

    .line 4542
    .local v17, windowRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/widget/Editor;->mTempCoords:[I

    .line 4543
    .local v8, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 4544
    .local v9, handleHeight:I
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4545
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4546
    sub-int v18, v14, v9

    const/16 v19, 0x1

    aget v19, v8, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4547
    const/16 v18, 0x1

    aget v18, v8, v18

    add-int v18, v18, v14

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4549
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v11

    add-int v18, v18, v9

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/4 v15, 0x1

    .line 4551
    .local v15, topAllVisible:Z
    :goto_3
    const/16 v18, 0x1

    aget v18, v8, v18

    add-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4552
    add-int v18, v13, v9

    const/16 v19, 0x1

    aget v19, v8, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4553
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/4 v5, 0x1

    .line 4554
    .local v5, bottomAllVisible:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPos:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    const/4 v12, 0x1

    .line 4555
    .local v12, newPosIsTop:Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPos:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 4556
    if-eqz v16, :cond_9

    if-eqz v15, :cond_9

    .line 4565
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_0

    .line 4566
    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    .line 4567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mHotspotY:F

    .line 4568
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    goto/16 :goto_0

    .line 4537
    .end local v4           #anchorRect:Landroid/graphics/Rect;
    .end local v5           #bottomAllVisible:Z
    .end local v6           #bottomVisible:Z
    .end local v8           #coords:[I
    .end local v9           #handleHeight:I
    .end local v12           #newPosIsTop:Z
    .end local v13           #posBotomY:I
    .end local v15           #topAllVisible:Z
    .end local v16           #topVisible:Z
    .end local v17           #windowRect:Landroid/graphics/Rect;
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 4539
    .restart local v13       #posBotomY:I
    .restart local v16       #topVisible:Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 4549
    .restart local v4       #anchorRect:Landroid/graphics/Rect;
    .restart local v6       #bottomVisible:Z
    .restart local v8       #coords:[I
    .restart local v9       #handleHeight:I
    .restart local v17       #windowRect:Landroid/graphics/Rect;
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 4553
    .restart local v15       #topAllVisible:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 4554
    .restart local v5       #bottomAllVisible:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 4557
    .restart local v12       #newPosIsTop:Z
    :cond_9
    if-eqz v6, :cond_3

    if-nez v5, :cond_a

    if-nez v16, :cond_3

    .line 4558
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 4561
    :cond_b
    if-eqz v6, :cond_c

    if-nez v5, :cond_3

    .line 4562
    :cond_c
    if-eqz v16, :cond_3

    if-nez v15, :cond_d

    if-nez v6, :cond_3

    .line 4563
    :cond_d
    const/4 v12, 0x1

    goto :goto_6

    .line 4567
    :cond_e
    const/16 v18, 0x0

    goto :goto_7
.end method

.method private isVisible()Z
    .locals 4

    .prologue
    .line 4451
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4452
    const/4 v0, 0x1

    .line 4459
    :goto_0
    return v0

    .line 4455
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4456
    const/4 v0, 0x0

    goto :goto_0

    .line 4459
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mStatusBarWindowOffset:I
    invoke-static {v3}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)I

    move-result v3

    sub-int/2addr v2, v3

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 4314
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4315
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4316
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 4368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4369
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4371
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4372
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 4374
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4375
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4378
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4380
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4381
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 4418
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4419
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4423
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4424
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 4429
    :cond_1
    :goto_0
    return-void

    .line 4426
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4427
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0
.end method

.method public hidePasteWidow()V
    .locals 2

    .prologue
    .line 4385
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4386
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4387
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4860
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4432
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4342
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4868
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4869
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 4616
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4617
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4618
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    if-eqz v0, :cond_0

    .line 4619
    iget v0, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mHeight:I

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4621
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4626
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4649
    :goto_1
    return-void

    .line 4623
    :cond_0
    iget v0, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4624
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4631
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4634
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    if-eqz v0, :cond_2

    .line 4635
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4636
    const/high16 v0, 0x4334

    iget v1, p0, Landroid/widget/Editor$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mTop:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4640
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 4645
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4864
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4865
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4348
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4349
    iget v0, p0, Landroid/widget/Editor$HandleView;->mWidth:I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4353
    :goto_0
    return-void

    .line 4352
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 4653
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4856
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 4655
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    #setter for: Landroid/widget/Editor;->mPreviousX:F
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4002(Landroid/widget/Editor;F)F

    .line 4663
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v21

    .line 4664
    .local v21, selectionStart:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v20

    .line 4665
    .local v20, selectionEnd:I
    sub-int v2, v20, v21

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4666
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Editor;->mSelectAChar:Z

    .line 4671
    :goto_2
    const/4 v12, 0x0

    .line 4672
    .local v12, isAllDownAnchor:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v12

    .line 4674
    :cond_1
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mSelectAChar:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 4675
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    #setter for: Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4102(Landroid/widget/Editor;Z)Z

    .line 4676
    const/4 v2, 0x0

    goto :goto_1

    .line 4668
    .end local v12           #isAllDownAnchor:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/widget/Editor;->mSelectAChar:Z

    goto :goto_2

    .line 4678
    .restart local v12       #isAllDownAnchor:Z
    :cond_3
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 4679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    #setter for: Landroid/widget/Editor;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;Z)Z

    .line 4683
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v16

    .line 4687
    .local v16, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4688
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4689
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4692
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_5

    .line 4693
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 4694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 4695
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    .line 4697
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4302(Landroid/widget/Editor;Z)Z

    goto/16 :goto_0

    .line 4704
    .end local v12           #isAllDownAnchor:Z
    .end local v16           #positionListener:Landroid/widget/Editor$PositionListener;
    .end local v20           #selectionEnd:I
    .end local v21           #selectionStart:I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    .line 4705
    .local v18, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    .line 4711
    .local v19, rawY:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mFirstDirection:I
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 4712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    #setter for: Landroid/widget/Editor;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;Z)Z

    .line 4714
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4715
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move/from16 v0, v18

    #setter for: Landroid/widget/Editor;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/Editor;->access$4002(Landroid/widget/Editor;F)F

    .line 4716
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4717
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mPreviousX:F
    invoke-static {v2}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)F

    move-result v2

    cmpl-float v2, v2, v18

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mDonotPassToLeft:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    #setter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4502(Landroid/widget/Editor;Z)Z

    .line 4719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move/from16 v0, v18

    #setter for: Landroid/widget/Editor;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/Editor;->access$4002(Landroid/widget/Editor;F)F

    .line 4720
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4721
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move/from16 v0, v18

    #setter for: Landroid/widget/Editor;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/Editor;->access$4002(Landroid/widget/Editor;F)F

    .line 4725
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v17, v2, v3

    .line 4726
    .local v17, previousVerticalOffset:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    sub-float v2, v19, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    .line 4728
    .local v11, currentVerticalOffset:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v2, v17, v2

    if-gez v2, :cond_9

    .line 4729
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 4730
    .local v15, newVerticalOffset:F
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 4735
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v2, v2

    add-float/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4739
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4740
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4732
    .end local v15           #newVerticalOffset:F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 4733
    .restart local v15       #newVerticalOffset:F
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_3

    .line 4743
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v2, v18, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v3, v3

    add-float v13, v2, v3

    .line 4744
    .local v13, newPosX:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v2, v19, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mHotspotY:F

    add-float v14, v2, v3

    .line 4748
    .local v14, newPosY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4749
    const/16 v22, 0x0

    .line 4750
    .local v22, showMagnifier:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4752
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v22

    .line 4753
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkAutoScroll(FF)V

    .line 4754
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->isAutoScrolling()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4755
    const/16 v22, 0x0

    .line 4757
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 4759
    .local v8, before:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    .line 4761
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_5
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 4763
    .local v10, currLine:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mLastLine:I
    invoke-static {v2}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 4764
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    #setter for: Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4302(Landroid/widget/Editor;Z)Z

    .line 4766
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #setter for: Landroid/widget/Editor;->mLastLine:I
    invoke-static {v2, v10}, Landroid/widget/Editor;->access$4702(Landroid/widget/Editor;I)I

    .line 4767
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_6
    if-eq v8, v2, :cond_15

    const/4 v9, 0x1

    .line 4768
    .local v9, changed:Z
    :goto_7
    if-nez v9, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 4769
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    .line 4772
    :cond_e
    if-eqz v9, :cond_f

    .line 4773
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Landroid/widget/Editor;->mAnchorLastMovedMilli:J
    invoke-static {v2, v3, v4}, Landroid/widget/Editor;->access$4802(Landroid/widget/Editor;J)J

    .line 4774
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #setter for: Landroid/widget/Editor;->mAnchorLastMovedIndex:I
    invoke-static {v2, v8}, Landroid/widget/Editor;->access$4902(Landroid/widget/Editor;I)I

    .line 4776
    :cond_f
    invoke-static {}, Landroid/widget/Editor;->access$5000()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4777
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 4778
    const/16 v22, 0x0

    .line 4781
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mFlags:I
    invoke-static {v2}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    .line 4782
    const/16 v22, 0x0

    .line 4784
    :cond_11
    if-eqz v22, :cond_18

    .line 4785
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    float-to-int v4, v13

    float-to-int v5, v14

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Editor$HandleView;->mPos:I

    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    if-eqz v7, :cond_17

    sget-object v7, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    :goto_9
    invoke-virtual/range {v2 .. v7}, Lcom/htc/textselection/HtcTextSelectionManager;->showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    goto/16 :goto_0

    .line 4757
    .end local v8           #before:I
    .end local v9           #changed:Z
    .end local v10           #currLine:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    goto/16 :goto_4

    .line 4761
    .restart local v8       #before:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_5

    .line 4767
    .restart local v10       #currLine:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_6

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 4785
    .restart local v9       #changed:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    goto :goto_8

    :cond_17
    sget-object v7, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    goto :goto_9

    .line 4789
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    goto/16 :goto_0

    .line 4793
    .end local v8           #before:I
    .end local v9           #changed:Z
    .end local v10           #currLine:I
    .end local v22           #showMagnifier:Z
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4806
    .end local v11           #currentVerticalOffset:F
    .end local v13           #newPosX:F
    .end local v14           #newPosY:F
    .end local v15           #newVerticalOffset:F
    .end local v17           #previousVerticalOffset:F
    .end local v18           #rawX:F
    .end local v19           #rawY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4807
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4808
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragging()V

    .line 4809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4502(Landroid/widget/Editor;Z)Z

    .line 4810
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4811
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4812
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragging()V

    .line 4817
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4102(Landroid/widget/Editor;Z)Z

    .line 4818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4502(Landroid/widget/Editor;Z)Z

    .line 4819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;Z)Z

    .line 4820
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    #setter for: Landroid/widget/Editor;->mChangeTimes:I
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$5202(Landroid/widget/Editor;I)I

    .line 4821
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, -0x1

    #setter for: Landroid/widget/Editor;->mCurrentDirection:I
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$5302(Landroid/widget/Editor;I)I

    .line 4822
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, -0x1

    #setter for: Landroid/widget/Editor;->mPreDirection:I
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$5402(Landroid/widget/Editor;I)I

    .line 4823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, -0x1

    #setter for: Landroid/widget/Editor;->mFirstDirection:I
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$4402(Landroid/widget/Editor;I)I

    .line 4826
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4830
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4831
    invoke-static {}, Landroid/widget/Editor;->access$5000()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 4832
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 4833
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 4835
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4837
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsInTextSelectionMode:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->canReplaceActionMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 4838
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->showQuickAction()V
    invoke-static {v2}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)V

    .line 4841
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAnchorLastMovedMilli:J
    invoke-static {v4}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;)J

    move-result-wide v4

    sub-long v23, v2, v4

    .line 4842
    .local v23, t:J
    const-wide/16 v2, 0x3c

    cmp-long v2, v23, v2

    if-gez v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 4843
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAnchorLastMovedIndex:I
    invoke-static {v3}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 4844
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x64

    cmp-long v2, v23, v2

    if-gez v2, :cond_0

    .line 4845
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 4846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->flyToEnd(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 4848
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->flyToStart(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 4653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 9
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4471
    const/4 v8, -0x1

    if-ne p1, v8, :cond_1

    .line 4472
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 4473
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v6, v6, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v6, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 4516
    :cond_0
    :goto_0
    return-void

    .line 4477
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4478
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_2

    .line 4480
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    .line 4484
    :cond_2
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v8, :cond_6

    move v5, v6

    .line 4485
    .local v5, offsetChanged:Z
    :goto_1
    if-nez v5, :cond_3

    if-eqz p2, :cond_0

    .line 4486
    :cond_3
    if-eqz v5, :cond_4

    .line 4487
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4488
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4490
    :cond_4
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4493
    .local v2, line:I
    const/4 v0, 0x1

    .line 4494
    .local v0, bottom:Z
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 4495
    .local v4, lineTop:I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 4496
    .local v3, lineBottom:I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4497
    invoke-direct {p0, v4, v3}, Landroid/widget/Editor$HandleView;->findBestPosition(II)V

    .line 4498
    iget-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionOnTop:Z

    if-nez v8, :cond_7

    move v0, v6

    .line 4501
    :cond_5
    :goto_2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4502
    if-eqz v0, :cond_8

    .end local v3           #lineBottom:I
    :goto_3
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4505
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4506
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4508
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4509
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4512
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mStatusBarWindowOffset:I
    invoke-static {v7}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto/16 :goto_0

    .end local v0           #bottom:Z
    .end local v2           #line:I
    .end local v4           #lineTop:I
    .end local v5           #offsetChanged:Z
    :cond_6
    move v5, v7

    .line 4484
    goto :goto_1

    .restart local v0       #bottom:Z
    .restart local v2       #line:I
    .restart local v3       #lineBottom:I
    .restart local v4       #lineTop:I
    .restart local v5       #offsetChanged:Z
    :cond_7
    move v0, v7

    .line 4498
    goto :goto_2

    .line 4502
    :cond_8
    iget v7, p0, Landroid/widget/Editor$HandleView;->mHeight:I

    sub-int v3, v4, v7

    goto :goto_3
.end method

.method public resetDragging()V
    .locals 1

    .prologue
    .line 4437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4438
    return-void
.end method

.method public setOrientationHTC()V
    .locals 3

    .prologue
    .line 4274
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4275
    .local v0, density:F
    const/high16 v1, 0x4220

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mWidth:I

    .line 4276
    const/high16 v1, 0x4270

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mHeight:I

    .line 4278
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->getAnchorBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4279
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->getAnchorBarDrawableTop(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 4280
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4281
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    #setter for: Landroid/widget/Editor;->mAnchorHeight:I
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$2902(Landroid/widget/Editor;I)I

    .line 4282
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #setter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4284
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4285
    iget v1, p0, Landroid/widget/Editor$HandleView;->mWidth:I

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:I

    .line 4286
    iget v1, p0, Landroid/widget/Editor$HandleView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4287
    const v1, 0x3f333333

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4288
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 4290
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "touchable"

    .prologue
    .line 4442
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isTouchable()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4443
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4444
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 4446
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 4356
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4365
    :goto_0
    return-void

    .line 4358
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4361
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4362
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4364
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 5
    .parameter "delay"

    .prologue
    .line 4392
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v1, :cond_0

    .line 4393
    new-instance v1, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4396
    :cond_0
    move-object v0, p0

    .line 4398
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 4399
    new-instance v1, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4414
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4415
    return-void

    .line 4412
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 4294
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4295
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4296
    .local v0, isRtlCharAtOffset:Z
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4297
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4298
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4300
    :cond_0
    return-void

    .line 4297
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 4574
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v3, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4575
    if-nez p3, :cond_0

    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v3, :cond_5

    .line 4576
    :cond_0
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v3, :cond_3

    .line 4578
    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v3, :cond_2

    .line 4579
    :cond_1
    iget v3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4580
    iget v3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4581
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4582
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4585
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4588
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4589
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v1, p1, v3

    .line 4590
    .local v1, positionX:I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v2, p2, v3

    .line 4591
    .local v2, positionY:I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4592
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4609
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    :cond_4
    :goto_0
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4611
    :cond_5
    return-void

    .line 4595
    .restart local v1       #positionX:I
    .restart local v2       #positionY:I
    :cond_6
    :try_start_0
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4597
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Editor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in HandleView::updatePosition():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4600
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4602
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-eqz v3, :cond_8

    .line 4603
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    goto :goto_0

    .line 4605
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
