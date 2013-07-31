.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaDefaultAction"
.end annotation


# instance fields
.field mCameraIntent:Landroid/content/Intent;

.field mHomeIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "com.kddi.android.iida.listhome.portal"

    const-string v2, "com.kddi.android.iida.listhome.portal.IidaListHomePortal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mHomeIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mCameraIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.CameraEntry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mCameraIntent:Landroid/content/Intent;

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "IidaDefaultAction longPressBeforeDispatch: launch camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->resetKeyStatus()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mCameraIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->launchActivitybyIntent(Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;->mHomeIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->launchActivitybyIntent(Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;Landroid/content/Intent;)V

    return p3
.end method
