.class Lmiui/v5/app/SearchMode$SearchViewLayoutListener;
.super Ljava/lang/Object;
.source "SearchMode.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewLayoutListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/Rect;

    .local v0, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLeft(I)V

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setTop(I)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setRight(I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBottom(I)V

    :goto_0
    return-void

    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
