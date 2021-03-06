.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
.super Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardScreenCallbackImpl"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    .line 69
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;-><init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 70
    return-void
.end method


# virtual methods
.method public goToUnlockScreen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 76
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->callStuckOnLockScreenBecauseSimMissing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    .line 81
    .local v0, gotoUnlockScreen:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->keyguardDone(Z)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string v3, "ShowCameraWhenLocked"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 96
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    const-string v3, "com.android.camera"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v0, 0x0

    .line 108
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 109
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->goToUnlockScreen()V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 104
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->keyguardDone(Z)V

    .line 131
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 142
    return-void
.end method
