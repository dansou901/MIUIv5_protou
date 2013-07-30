.class public Lcom/htc/dialog/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertDialog$Builder;,
        Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field protected mAlert:Lcom/htc/dialog/HtcAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, p2}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertController;->installContent()V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "AlertDialog"

    const-string v3, "[onCreate] auto launch SIP."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStartNonSIP()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method
