.class public Lcom/htc/widget/internal/ListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupBubbleWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const v1, 0x201006b

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x201006b

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    iput v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    iput v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    iput-boolean v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    const v5, 0x7fffffff

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    iput v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x20501ca

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    const v5, 0x20501cb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    .local v3, width:I
    :goto_1
    const/high16 v5, 0x205

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    const v5, 0x2050012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, popDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    goto :goto_0

    .end local v0           #popDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #width:I
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/internal/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .locals 25

    .prologue
    const/16 v21, 0x0

    .local v21, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .local v8, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v8, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    .local v18, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v9           #count:I
    .end local v16           #i:I
    .end local v18           #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v9       #count:I
    .restart local v16       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, count2:I
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    .restart local v18       #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v18           #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    new-instance v2, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .local v11, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .local v15, hintView:Landroid/view/View;
    if-eqz v15, :cond_5

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v13, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v14, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v14, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ListPopupBubbleWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hint position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .local v24, widthSpec:I
    const/4 v12, 0x0

    .local v12, heightSpec:I
    move/from16 v0, v24

    invoke-virtual {v15, v0, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    move-object v11, v13

    .end local v12           #heightSpec:I
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #widthSpec:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1, v11}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/16 v17, 0x1

    .local v17, ignoreBottomDecorations:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v20

    .local v20, maxHeight:I
    const/16 v22, 0x0

    .local v22, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v22, v1, v2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    :cond_8
    add-int v1, v20, v22

    :goto_6
    return v1

    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v17           #ignoreBottomDecorations:Z
    .end local v20           #maxHeight:I
    .end local v22           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    .restart local v9       #count:I
    .restart local v10       #count2:I
    .restart local v13       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15       #hintView:Landroid/view/View;
    .restart local v16       #i:I
    :pswitch_0
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v11           #dropDownView:Landroid/view/ViewGroup;
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .restart local v11       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v23, v0

    .local v23, view:Landroid/view/View;
    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    goto/16 :goto_4

    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #view:Landroid/view/View;
    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v17       #ignoreBottomDecorations:Z
    .restart local v20       #maxHeight:I
    .restart local v22       #padding:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v20, v21

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v19

    .local v19, listContent:I
    if-lez v19, :cond_c

    add-int v21, v21, v22

    :cond_c
    add-int v1, v19, v21

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWidthLimit(I)I
    .locals 1
    .parameter "width"

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .local v6, width:I
    const/4 v4, 0x0

    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    .local v0, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    .local v0, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListSelection()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .local v0, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismissWithoutAnimation()V

    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpandDirection()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getExpandDirection()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method getTriangleOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getTriangleOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method public internalDismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .local v4, curIndex:I
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/internal/PopupBubbleWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .local v6, lastItem:I
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    move v5, v8

    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->clearListSelection()V

    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v8, v7}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4       #curIndex:I
    :cond_4
    move v2, v8

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .local v3, consumed:Z
    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :cond_8
    move v7, v8

    goto :goto_3

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    if-ne v4, v6, :cond_8

    goto :goto_3

    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #anchorView:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .local v0, consumed:Z
    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    .end local v0           #consumed:Z
    :cond_0
    :goto_0
    return v0

    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .end local v0           #consumed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .parameter "position"

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .local v1, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .local v6, adapter:Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .end local v1           #list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    .end local v2           #child:Landroid/view/View;
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "register data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_2

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister list data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->checkWidthLimit(I)I

    move-result p1

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    :cond_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    iput-boolean p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setExpandDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setExpandDirection(I)V

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    iput-boolean p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selector"

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .parameter "modal"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "selectedListener"

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .parameter "prompt"

    .prologue
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    .local v0, showing:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .local v0, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setSoftInputMode(I)V

    return-void
.end method

.method setTriangleOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setTriangleOffset(I)V

    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->buildDropDown()I

    move-result v6

    .local v6, height:I
    const/4 v4, 0x0

    .local v4, widthSpec:I
    const/4 v5, 0x0

    .local v5, heightSpec:I
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .local v7, noInputMethod:Z
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    const/4 v4, -0x1

    :goto_1
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    if-eqz v7, :cond_4

    move v5, v6

    :goto_2
    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    :goto_4
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    iget v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    const/4 v4, -0x1

    :goto_8
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    const/4 v5, -0x1

    :goto_9
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-boolean v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setListViewHook(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->startIntroAnimation()V

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->clearListSelection()V

    :cond_d
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_e
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    :cond_10
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    goto/16 :goto_9

    :cond_12
    move v1, v2

    goto :goto_a
.end method
