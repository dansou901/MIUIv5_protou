.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyGoogleSearch"
.end annotation


# instance fields
.field private mOtherKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 3
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v2, 0xdb

    const/4 v0, -0x1

    return v0

    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "HomeKeyGoogleSearch Long press action before dispatching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    const/4 v0, 0x0

    invoke-static {p2, v0, v2}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    const/4 v0, 0x1

    invoke-static {p2, v0, v2}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method

.method protected longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcKeyEventHandler"

    const-string v1, "HomeKeyGoogleSearch Long press action up before dispatching "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->breakAction()V

    const/4 v0, -0x1

    return v0
.end method
