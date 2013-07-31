.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaPhoneAction"
.end annotation


# instance fields
.field PHONE_PACKAGE:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    const-string v0, "com.android.phone/.InCallScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->PHONE_PACKAGE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-static {}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->getForegroundAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->PHONE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 1
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->breakAction()V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 4
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcKeyEventHandler"

    const-string v2, "IidaPhoneAction injectTranslatedKeyEvent: KEYCODE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-static {p2, v0, v3}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    const/4 v1, 0x1

    invoke-static {p2, v1, v3}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;->breakAction()V

    const/4 v0, -0x1

    goto :goto_0
.end method
