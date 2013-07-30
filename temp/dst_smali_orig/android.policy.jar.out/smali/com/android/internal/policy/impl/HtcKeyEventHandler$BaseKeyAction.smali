.class public abstract Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.super Ljava/lang/Object;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseKeyAction"
.end annotation


# instance fields
.field private final KEY_LONG_PRESSED:I

.field private final KEY_SHORT_PRESSED:I

.field private final KEY_UNKNOWN:I

.field private final KEY_UNPRESS:I

.field private mActionDone:Z

.field private mKeyPressedBeforeQueueing:Z

.field private mKeyStatus:I

.field private mLastKeyStatus:I

.field private mNeedToBreak:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_UNKNOWN:I

    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_UNPRESS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_SHORT_PRESSED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_LONG_PRESSED:I

    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    return-void
.end method

.method private checkKeyStatus(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .local v2, statusChanged:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .local v1, repeatCount:I
    const/4 v0, 0x0

    .local v0, isUnexpectCondition:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "HtcKeyEventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyStatus Unexpect Condition: mKeyStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeatCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    :cond_0
    return v2

    :pswitch_0
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    if-ne v1, v4, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    if-le v1, v4, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    iput v6, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final breakAction()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    return-void
.end method

.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected checkConditionBeforeQueueingEnd(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final doBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 5
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, delayTime:I
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    move v1, v0

    .end local v0           #delayTime:I
    .local v1, delayTime:I
    :goto_0
    return v1

    .end local v1           #delayTime:I
    .restart local v0       #delayTime:I
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkKeyStatus(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    .end local v0           #delayTime:I
    .restart local v1       #delayTime:I
    goto :goto_0

    .end local v1           #delayTime:I
    .restart local v0       #delayTime:I
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressDownBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final doBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 4
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    move v0, p2

    .end local p2
    .local v0, policyFlags:I
    :goto_0
    return v0

    .end local v0           #policyFlags:I
    .restart local p2
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcKeyEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPressed before queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v0, p2

    .end local p2
    .restart local v0       #policyFlags:I
    goto :goto_0

    .end local v0           #policyFlags:I
    .restart local p2
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressDownBeforeQueue(ILandroid/view/KeyEvent;)I

    move-result p2

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressUpBeforeQueue(I)I

    move-result p2

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final doBeforeQueueingEnd(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkConditionBeforeQueueingEnd(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressBeforeQueueEnd(ILandroid/view/KeyEvent;)I

    move-result p2

    goto :goto_0
.end method

.method public final getKeyStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    return v0
.end method

.method public final isActionDone()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    return v0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 0
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    return p3
.end method

.method protected longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 0
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    return p3
.end method

.method public final needToBreak()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    return v0
.end method

.method public final resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    return-void
.end method

.method protected shortPressBeforeQueueEnd(ILandroid/view/KeyEvent;)I
    .locals 0
    .parameter "policyFlags"
    .parameter "event"

    .prologue
    return p1
.end method

.method protected shortPressDownBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 0
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    return p3
.end method

.method protected shortPressDownBeforeQueue(ILandroid/view/KeyEvent;)I
    .locals 0
    .parameter "result"
    .parameter "keyEvent"

    .prologue
    return p1
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 0
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    return p3
.end method

.method protected shortPressUpBeforeQueue(I)I
    .locals 0
    .parameter "result"

    .prologue
    return p1
.end method
