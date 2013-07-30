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

.method protected checkConditionBeforeQueueingEnd(Landroid/view/KeyEvent;)Z
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

.method protected shortPressBeforeQueueEnd(ILandroid/view/KeyEvent;)I
    .locals 1
    .parameter "policyFlags"
    .parameter "event"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;->mIsScreenOff:Z

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x2

    :cond_0
    return p1
.end method
