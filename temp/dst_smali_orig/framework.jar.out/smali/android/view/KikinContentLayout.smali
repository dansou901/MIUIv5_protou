.class public Landroid/view/KikinContentLayout;
.super Landroid/widget/FrameLayout;
.source "KikinContentLayout.java"


# instance fields
.field private lastBottom:I

.field private lastLeft:I

.field private lastRight:I

.field private lastTop:I

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setContentOffsetY(I)V
    .locals 4
    .parameter "offsetY"

    .prologue
    iget v0, p0, Landroid/view/KikinContentLayout;->offsetY:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/view/KikinContentLayout;->offsetY:I

    iget v0, p0, Landroid/view/KikinContentLayout;->lastLeft:I

    iget v1, p0, Landroid/view/KikinContentLayout;->lastTop:I

    iget v2, p0, Landroid/view/KikinContentLayout;->lastRight:I

    iget v3, p0, Landroid/view/KikinContentLayout;->lastBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/KikinContentLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    iput p1, p0, Landroid/view/KikinContentLayout;->lastLeft:I

    iput p2, p0, Landroid/view/KikinContentLayout;->lastTop:I

    iput p3, p0, Landroid/view/KikinContentLayout;->lastRight:I

    iput p4, p0, Landroid/view/KikinContentLayout;->lastBottom:I

    iget v0, p0, Landroid/view/KikinContentLayout;->offsetY:I

    add-int/2addr v0, p2

    iget v1, p0, Landroid/view/KikinContentLayout;->offsetY:I

    add-int/2addr v1, p4

    invoke-super {p0, p1, v0, p3, v1}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
