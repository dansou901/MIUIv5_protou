.class Lcom/miui/internal/v5/widget/ActionBarContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/ActionBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/v5/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/v5/widget/ActionBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->access$002(Lcom/miui/internal/v5/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 33
    return-void
.end method
