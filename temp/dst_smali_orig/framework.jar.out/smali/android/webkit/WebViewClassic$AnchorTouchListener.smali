.class Landroid/webkit/WebViewClassic$AnchorTouchListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorTouchListener"
.end annotation


# instance fields
.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v1

    .restart local v0       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    .local v21, onScreenOffset:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    new-instance v22, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .local v22, p:Landroid/graphics/PointF;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/16 v29, 0x0

    aget v29, v21, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v26

    .local v26, viewX:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/16 v29, 0x1

    aget v29, v21, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v27

    .local v27, viewY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v7

    .local v7, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v8

    .local v8, contentY:I
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebViewClassic$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v9

    .local v9, dragginAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    packed-switch v28, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v28, 0x0

    return v28

    :pswitch_0
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownX:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownY:I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->hideSelectionPopups()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-ne v9, v0, :cond_1

    const/16 v17, 0x1

    .local v17, isDraginfLeft:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$10502(Landroid/webkit/WebViewClassic;Z)Z

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11200(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11102(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11302(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11502(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v7

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    sub-int v29, v29, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/textselection/SelectionAnchor;->setTouchDownOffset(Landroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v6, v0

    .local v6, charWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v5, v0

    .local v5, charHeight:I
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .local v19, l:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    sub-int v24, v28, v5

    .local v24, t:I
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    add-int v23, v28, v6

    .local v23, r:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Point;->y:I

    .local v4, b:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    if-eqz v17, :cond_6

    .end local v5           #charHeight:I
    :goto_5
    int-to-float v0, v5

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .end local v4           #b:I
    .end local v6           #charWidth:I
    .end local v17           #isDraginfLeft:Z
    .end local v19           #l:I
    .end local v23           #r:I
    .end local v24           #t:I
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    .restart local v17       #isDraginfLeft:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11302(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11102(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11600(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11502(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x90

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->hidePasteButton()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11900(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11102(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$12000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11302(Landroid/webkit/WebViewClassic;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$12100(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    #setter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$11502(Landroid/webkit/WebViewClassic;Landroid/webkit/QuadF;)Landroid/webkit/QuadF;

    goto/16 :goto_2

    .restart local v5       #charHeight:I
    .restart local v6       #charWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v19, v28, v6

    goto/16 :goto_3

    .restart local v19       #l:I
    .restart local v24       #t:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    goto/16 :goto_4

    .restart local v4       #b:I
    .restart local v23       #r:I
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_5

    .end local v4           #b:I
    .end local v5           #charHeight:I
    .end local v6           #charWidth:I
    .end local v17           #isDraginfLeft:Z
    .end local v19           #l:I
    .end local v23           #r:I
    .end local v24           #t:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownX:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v10, v28, v29

    .local v10, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mDownY:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v11, v28, v29

    .local v11, dy:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    mul-int v28, v10, v10

    mul-int v29, v11, v11

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$12200(Landroid/webkit/WebViewClassic;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    .end local v10           #dx:I
    .end local v11           #dy:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->getTouchDownOffset()Landroid/graphics/PointF;

    move-result-object v25

    .local v25, touchOffset:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    .local v20, oldY:I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v13, v7, v28

    .local v13, handleX:I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v14, v8, v28

    .local v14, handleY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v28

    int-to-float v0, v13

    move/from16 v29, v0

    int-to-float v0, v14

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/webkit/QuadF;->containsPoint(FF)Z

    move-result v15

    .local v15, inCursorText:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    .local v16, inEditBounds:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v28

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->beginScrollEdit()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)V

    :goto_6
    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    if-nez v16, :cond_a

    :cond_8
    move/from16 v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-le v14, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Point;->set(II)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->updateWebkitSelection()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12500(Landroid/webkit/WebViewClassic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v29

    sub-int v29, v26, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v30

    add-int v29, v29, v30

    #setter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$12602(Landroid/webkit/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v29

    sub-int v29, v27, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v30

    add-int v29, v29, v30

    #setter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$12702(Landroid/webkit/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v28

    if-nez v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v28

    if-eqz v28, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v28

    if-eqz v28, :cond_e

    const/16 v18, 0x1

    .local v18, isScrolling:Z
    :goto_8
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/MagnifyView;->dismiss()V

    goto/16 :goto_0

    .end local v18           #isScrolling:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->endScrollEdit()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto/16 :goto_7

    :cond_e
    const/16 v18, 0x0

    goto :goto_8

    .restart local v18       #isScrolling:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-ne v9, v0, :cond_10

    const/16 v17, 0x1

    .restart local v17       #isDraginfLeft:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v6, v0

    .restart local v6       #charWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->access$11500(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v5, v0

    .restart local v5       #charHeight:I
    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .restart local v19       #l:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    sub-int v24, v28, v5

    .restart local v24       #t:I
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    add-int v23, v28, v6

    .restart local v23       #r:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$11300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Point;->y:I

    .restart local v4       #b:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mContentWidth:I
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12800(Landroid/webkit/WebViewClassic;)I

    move-result v28

    move/from16 v0, v28

    if-gt v7, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mContentHeight:I
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12900(Landroid/webkit/WebViewClassic;)I

    move-result v28

    move/from16 v0, v28

    if-gt v8, v0, :cond_14

    if-ltz v7, :cond_14

    if-ltz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifierAnchor:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    if-eqz v17, :cond_13

    .end local v5           #charHeight:I
    :goto_c
    int-to-float v0, v5

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .end local v4           #b:I
    .end local v6           #charWidth:I
    .end local v17           #isDraginfLeft:Z
    .end local v19           #l:I
    .end local v23           #r:I
    .end local v24           #t:I
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_9

    .restart local v5       #charHeight:I
    .restart local v6       #charWidth:I
    .restart local v17       #isDraginfLeft:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v19, v28, v6

    goto/16 :goto_a

    .restart local v19       #l:I
    .restart local v24       #t:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    goto/16 :goto_b

    .restart local v4       #b:I
    .restart local v23       #r:I
    :cond_13
    const/4 v5, 0x0

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/MagnifyView;->dismiss()V

    goto/16 :goto_0

    .end local v4           #b:I
    .end local v5           #charHeight:I
    .end local v6           #charWidth:I
    .end local v13           #handleX:I
    .end local v14           #handleY:I
    .end local v15           #inCursorText:Z
    .end local v16           #inEditBounds:Z
    .end local v17           #isDraginfLeft:Z
    .end local v18           #isScrolling:Z
    .end local v19           #l:I
    .end local v20           #oldY:I
    .end local v23           #r:I
    .end local v24           #t:I
    .end local v25           #touchOffset:Landroid/graphics/PointF;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/MagnifyView;->dismiss()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mAutoScrollerWrapper:Landroid/webkit/WebViewClassic$AutoScrollerWrapper;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->stopScroll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->endScrollEdit()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$12400(Landroid/webkit/WebViewClassic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static/range {v28 .. v29}, Landroid/webkit/WebViewClassic;->access$10502(Landroid/webkit/WebViewClassic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v28

    if-nez v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$13000(Landroid/webkit/WebViewClassic;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v28

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v28

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionHandler:Landroid/webkit/WebViewClassic$SelectionHandler;
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$13100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$SelectionHandler;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v12

    .local v12, getHef:Landroid/os/Message;
    const/16 v28, 0x550

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/webkit/WebViewClassic;->requestFocusNodeHref(Landroid/os/Message;)V

    .end local v12           #getHef:Landroid/os/Message;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    const/16 v29, 0x64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$AnchorTouchListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x64

    invoke-virtual/range {v28 .. v30}, Landroid/webkit/WebViewClassic;->showQuickAction(J)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
