.class public Landroid/webkit/WebInputInsertionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "WebInputInsertionFloatPanel.java"


# instance fields
.field private cursorRect:Landroid/graphics/Rect;

.field private mBottomOffset:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebInputInsertionFloatPanel;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputInsertionFloatPanel;
    .locals 8
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v5, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x6030070

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebInputInsertionFloatPanel;

    .local v0, instance:Landroid/webkit/WebInputInsertionFloatPanel;
    const v6, 0x60b003a

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, selectView:Landroid/view/View;
    if-eqz v4, :cond_0

    new-instance v6, Landroid/webkit/WebInputInsertionFloatPanel$1;

    invoke-direct {v6, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x60b003b

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, selectAllView:Landroid/view/View;
    if-eqz v3, :cond_1

    new-instance v6, Landroid/webkit/WebInputInsertionFloatPanel$2;

    invoke-direct {v6, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x60b0038

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, pasteView:Landroid/view/View;
    if-eqz v1, :cond_2

    new-instance v5, Landroid/webkit/WebInputInsertionFloatPanel$3;

    invoke-direct {v5, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    invoke-direct {v0, p0}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .end local v0           #instance:Landroid/webkit/WebInputInsertionFloatPanel;
    .end local v1           #pasteView:Landroid/view/View;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    .end local v3           #selectAllView:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #instance:Landroid/webkit/WebInputInsertionFloatPanel;
    :cond_0
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no select view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_0

    .restart local v3       #selectAllView:Landroid/view/View;
    :cond_1
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no selectAll view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_0

    .restart local v1       #pasteView:Landroid/view/View;
    :cond_2
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no paste view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    return-void
.end method


# virtual methods
.method public setCursorRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAt(Landroid/graphics/Point;Landroid/graphics/Point;IIIZ)V
    .locals 19
    .parameter "cursorTop"
    .parameter "cursorBottom"
    .parameter "locationLeft"
    .parameter "locationTop"
    .parameter "screenWidth"
    .parameter "hasEditText"

    .prologue
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    const v17, 0x60b0032

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .local v12, upArrow:Landroid/view/View;
    const v17, 0x60b002f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, downArrow:Landroid/view/View;
    const v17, 0x60b003a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .local v9, selectView:Landroid/view/View;
    const v17, 0x60b003b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, selectAllView:Landroid/view/View;
    const v17, 0x60b0081

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .local v10, separator1:Landroid/view/View;
    const v17, 0x60b0082

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .local v11, separator2:Landroid/view/View;
    const v17, 0x60b0068

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .local v5, panel:Landroid/widget/LinearLayout;
    if-eqz v12, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    :cond_0
    const-string v17, "show WebInputInsertionFloatPanel"

    const-string v18, "couldn\'t find view"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p6, :cond_5

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    .local v7, panelWidth:I
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .local v6, panelHeight:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .local v13, upHeight:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .local v4, downHeight:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    div-int/lit8 v18, v7, 0x2

    sub-int v15, v17, v18

    .local v15, x:I
    move/from16 v0, p3

    if-ge v15, v0, :cond_2

    move/from16 v15, p3

    :cond_2
    add-int v17, v15, v7

    add-int v18, p3, p5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    add-int v17, p3, p5

    sub-int v15, v17, v7

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    sub-int v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .local v16, y:I
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    :cond_4
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setX(F)V

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setY(F)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestLayout()V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/4 v14, 0x1

    .local v14, upOrDown:Z
    :goto_2
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v14, :cond_7

    move-object v2, v12

    .local v2, arrow:Landroid/view/View;
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .end local v2           #arrow:Landroid/view/View;
    .end local v4           #downHeight:I
    .end local v6           #panelHeight:I
    .end local v7           #panelWidth:I
    .end local v13           #upHeight:I
    .end local v14           #upOrDown:Z
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .restart local v4       #downHeight:I
    .restart local v6       #panelHeight:I
    .restart local v7       #panelWidth:I
    .restart local v13       #upHeight:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .restart local v14       #upOrDown:Z
    :cond_7
    move-object v2, v3

    goto :goto_3

    .restart local v2       #arrow:Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    goto :goto_4
.end method
