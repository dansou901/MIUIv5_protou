.class Landroid/view/View$Injector;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initializeChildrenSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "view"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v3, p1, v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x6010036

    invoke-virtual {p0, v3}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x6010038

    invoke-virtual {p0, v3}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x6010037

    invoke-virtual {p0, v3}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x6010039

    invoke-virtual {p0, v3}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static isHapticEnabledExplictly(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "flags"

    .prologue
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/View;->mHapticEnabledExplicitly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static onDrawableStateChanged(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "view"
    .parameter "d"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .local v0, constantState:Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .local v1, drawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getVariablePadding()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getResolvedLayoutDirectionSelf()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .end local v1           #drawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2           #padding:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #drawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .restart local v2       #padding:Landroid/graphics/Rect;
    :pswitch_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static performHapticFeedbackOnDown(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method static performHapticFeedbackOnRelease(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method
