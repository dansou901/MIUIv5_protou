.class abstract Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectionHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, ret:Z
    invoke-static {}, Landroid/widget/Editor;->access$2300()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getSelectedText()Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Ljava/lang/String;

    move-result-object v1

    .local v1, selectedText:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Editor;->updateSelectionInCAB(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->createRangeFromCurrentSelection()Lcom/kikin/Range;
    invoke-static {v4}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)Lcom/kikin/Range;

    move-result-object v4

    #setter for: Landroid/widget/Editor;->mRange:Lcom/kikin/Range;
    invoke-static {v3, v4}, Landroid/widget/Editor;->access$2702(Landroid/widget/Editor;Lcom/kikin/Range;)Lcom/kikin/Range;

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    sget-object v4, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    #calls: Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;
    invoke-static {v3, v4}, Landroid/widget/Editor;->access$5700(Landroid/widget/Editor;Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v2

    .local v2, selection:Lcom/kikin/selection/Selection;
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V
    invoke-static {v3, v2}, Landroid/widget/Editor;->access$5800(Landroid/widget/Editor;Lcom/kikin/selection/Selection;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
