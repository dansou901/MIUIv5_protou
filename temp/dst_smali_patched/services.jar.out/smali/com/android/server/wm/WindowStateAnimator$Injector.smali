.class Lcom/android/server/wm/WindowStateAnimator$Injector;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
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

.method static showSurface(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .parameter "wsa"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    :cond_0
    return-void
.end method
