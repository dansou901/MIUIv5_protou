.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaCameraAction"
.end annotation


# instance fields
.field CAMERA_PACKAGE:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    const-string v0, "com.android.camera/.CameraEntry"

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->CAMERA_PACKAGE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-static {}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->getForegroundAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->CAMERA_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected shortPressDownBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "keyEvent"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "keyEvent"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method
