.class Lcom/android/internal/policy/impl/KeyguardViewManager$Injector;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
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

.method static updateDisplayDesktopFlag(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 7
    .parameter "manager"

    .prologue
    const v6, -0x100001

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getKeyguardView()Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v1

    .local v1, keyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    .local v0, displayDesktop:Z
    const/4 v3, 0x0

    .local v3, showSysWallpaper:Z
    instance-of v4, v1, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    const-string v5, "displayDesktop"

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    check-cast v1, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    .end local v1           #keyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    const-string v4, "showSysWallpaper"

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getKeyguardViewProperties()Lcom/android/internal/policy/impl/KeyguardViewProperties;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v6

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x4000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v5, -0x40000001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v6

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
