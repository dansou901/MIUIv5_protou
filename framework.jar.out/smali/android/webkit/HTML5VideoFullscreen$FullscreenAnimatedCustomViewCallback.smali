.class Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;
.super Landroid/webkit/AnimatedCustomViewCallback;
.source "HTML5VideoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenAnimatedCustomViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullscreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    .line 417
    invoke-direct {p0}, Landroid/webkit/AnimatedCustomViewCallback;-><init>()V

    .line 418
    return-void
.end method


# virtual methods
.method public getAnimationDelay()J
    .locals 2

    .prologue
    .line 433
    const-wide/16 v0, 0x2ee

    return-wide v0
.end method

.method public onCustomViewHidden()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mAnimationState:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$400(Landroid/webkit/HTML5VideoFullscreen;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mTextureView:Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$600(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #calls: Landroid/webkit/HTML5VideoFullscreen;->finishExitingFullscreen()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1100(Landroid/webkit/HTML5VideoFullscreen;)V

    .line 430
    return-void
.end method

.method public onCustomViewHiddenAnimationStart()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1000(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullscreen$FullscreenAnimatedCustomViewCallback;->this$0:Landroid/webkit/HTML5VideoFullscreen;

    #getter for: Landroid/webkit/HTML5VideoFullscreen;->mFullscreenProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullscreen;->access$1000(Landroid/webkit/HTML5VideoFullscreen;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->prepareExitFullscreen()V

    .line 423
    :cond_0
    return-void
.end method
