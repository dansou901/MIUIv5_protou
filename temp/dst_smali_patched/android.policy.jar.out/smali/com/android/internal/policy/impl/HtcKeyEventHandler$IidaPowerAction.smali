.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IidaPowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeQueueingEnd(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyEvent"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

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

    const-string v2, " Keyguard "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    invoke-static {v2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getKeyguardMediator()Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isLockScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "HtcKeyEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IidaPowerAction: name = "

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

    const-string v3, "IidaPowerAction: state = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected shortPressBeforeQueueEnd(ILandroid/view/KeyEvent;)I
    .locals 2
    .parameter "policyFlags"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, -0x5

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "IidaPowerAction: policyFlags add ACTION_PASS_TO_USER remove ACTION_GO_TO_SLEEP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method
