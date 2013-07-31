.class Lcom/android/server/pm/ShutdownThread$Injector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createShutDownDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 91
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x10300f1

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v2, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 93
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x6030009

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, view:Landroid/view/View;
    const v6, 0x60b0034

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, msgText:Landroid/widget/TextView;
    const v6, 0x60b0033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    .local v1, animationView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    const v6, 0x60c019b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 104
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 105
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 106
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x602003a

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 110
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 111
    return-void

    .line 100
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v6, 0x60c002c

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 114
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getIsStartedGuard()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getIsStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->setReboot(Z)V

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->setRebootReason(Ljava/lang/String;)V

    .line 119
    :cond_0
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setDialogPositiveButtonText(Landroid/app/AlertDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 84
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x60c000d

    .line 87
    .local v0, id:I
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 88
    return-void

    .line 84
    .end local v0           #id:I
    :cond_0
    const v0, 0x60c0026

    goto :goto_0
.end method

.method static setDialogTitle(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x60c0247

    .line 80
    .local v0, id:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 81
    return-void

    .line 77
    .end local v0           #id:I
    :cond_0
    const v0, 0x60c0246

    goto :goto_0
.end method
