.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
.super Lmiui/maml/MiAdvancedView;
.source "AwesomeLockScreenView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AwesomeLockScreenView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 1
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusableInTouchMode(Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusable(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusableInTouchMode(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public rebindRoot()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 27
    return-void
.end method
