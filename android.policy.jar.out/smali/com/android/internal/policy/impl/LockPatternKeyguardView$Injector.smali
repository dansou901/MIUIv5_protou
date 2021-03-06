.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$Injector;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static needRecreateLockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 2
    .parameter "keyguardView"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreen()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startBiometricUnlock(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 1
    .parameter "keyguardView"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->callMaybeStartBiometricUnlock()V

    .line 143
    :cond_0
    return-void
.end method

.method static updateShowLockBeforeUnlock(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 3
    .parameter "keyguardView"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lock_before_unlock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setShowLockBeforeUnlock(Z)V

    .line 131
    return-void
.end method
