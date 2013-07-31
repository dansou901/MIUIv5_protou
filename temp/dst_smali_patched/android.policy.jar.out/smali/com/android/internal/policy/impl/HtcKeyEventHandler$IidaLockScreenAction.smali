.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaLockScreenAction"
.end annotation


# instance fields
.field private mIsScreenOff:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getKeyguardMediator()Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method protected checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getKeyguardMediator()Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->mIsScreenOff:Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 4
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "IidaLockScreenAction: longPressBeforeDispatch: inject KEYCODE_CAMERA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->resetKeyStatus()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    const/4 v0, 0x0

    invoke-static {p2, v0, v3}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-static {p2, v2, v3}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 5
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v4, 0x55

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->mIsScreenOff:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "press function key when screen off, ignore up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->mIsScreenOff:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->breakAction()V

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "IidaLockScreenAction injectTranslatedKeyEvent: KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-static {p2, v3, v4}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    const/4 v0, 0x1

    invoke-static {p2, v0, v4}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->breakAction()V

    goto :goto_0
.end method
