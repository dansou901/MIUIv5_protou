.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaHomeAction"
.end annotation


# instance fields
.field private mCameraIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;->mCameraIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.CameraEntry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;->mCameraIntent:Landroid/content/Intent;

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyEvent"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .local v1, state:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    const-string v2, " com.kddi.android.iida.iidahome/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " com.kddi.android.iida.listhome.portal/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " com.kddi.android.iida.widgethome/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "HtcKeyEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IidaHomeAction: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const-string v2, "HtcKeyEventHandler"

    const-string v3, "IidaHomeAction: state = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
