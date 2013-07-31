.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.super Ljava/lang/Object;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final DEBUG_VERBOSE_LOG:Z = false

.field private static final IIDA_HOME:Ljava/lang/String; = "com.kddi.android.iida.iidahome"

.field private static final IIDA_HOME2:Ljava/lang/String; = "com.kddi.android.iida.iidahome/.Launcher"

.field private static final IIDA_LISTHOME:Ljava/lang/String; = "com.kddi.android.iida.listhome.portal"

.field private static final IIDA_LISTHOME2:Ljava/lang/String; = "com.kddi.android.iida.listhome.portal/.IidaListHomePortal"

.field private static final IIDA_WIDGETHOME:Ljava/lang/String; = "com.kddi.android.iida.widgethome"

.field private static final IIDA_WIDGETHOME2:Ljava/lang/String; = "com.kddi.android.iida.widgethome/.Launcher"

.field private static final TAG:Ljava/lang/String; = "HtcKeyEventHandler"


# instance fields
.field private isIddaDevice:Z

.field private mBaseKeyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedToReturnBeforeDispatching:Z

.field private mNeedToReturnBeforeQueueing:Z

.field private mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

.field private mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/HtcPolicyUtils;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mBaseKeyActionList:Ljava/util/ArrayList;

    .line 36
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x43

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->isIddaDevice:Z

    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    .line 50
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 51
    .local v0, homeKeyGoogleSearch:Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 52
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 53
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    return-object v0
.end method


# virtual methods
.method public handleBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 10
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, delayTime:I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 165
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 185
    .end local v1           #delayTime:I
    .local v2, delayTime:I
    :goto_0
    return v2

    .line 170
    .end local v2           #delayTime:I
    .restart local v1       #delayTime:I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;

    .line 172
    .local v0, b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->doBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v1

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->isActionDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->needToBreak()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 175
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 176
    const-string v4, "HtcKeyEventHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBeforeDispatching, Satisfied action class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event code= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", keyStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->getKeyStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    monitor-exit v5

    move v2, v1

    .end local v1           #delayTime:I
    .restart local v2       #delayTime:I
    goto/16 :goto_0

    .line 184
    .end local v0           #b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    .end local v2           #delayTime:I
    .restart local v1       #delayTime:I
    :cond_3
    monitor-exit v5

    move v2, v1

    .line 185
    .end local v1           #delayTime:I
    .restart local v2       #delayTime:I
    goto/16 :goto_0

    .line 184
    .end local v2           #delayTime:I
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #delayTime:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public handleBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 9
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 115
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 117
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, p2

    .line 136
    .end local p2
    .local v2, policyFlags:I
    :goto_0
    return v2

    .line 121
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;

    .line 123
    .local v0, b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->doBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->isActionDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->needToBreak()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 126
    sget-boolean v3, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "HtcKeyEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBeforeQueueing, Satisfied action class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event code= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->getKeyStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    monitor-exit v4

    move v2, p2

    .end local p2
    .restart local v2       #policyFlags:I
    goto/16 :goto_0

    .line 135
    .end local v0           #b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_3
    monitor-exit v4

    move v2, p2

    .line 136
    .end local p2
    .restart local v2       #policyFlags:I
    goto/16 :goto_0

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyFlags:I
    .restart local p2
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleBeforeQueueingEnd(Landroid/view/KeyEvent;IZ)I
    .locals 6
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, p2

    .line 154
    .end local p2
    .local v2, policyFlags:I
    :goto_0
    return v2

    .line 149
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;

    .line 151
    .local v0, b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->doBeforeQueueingEnd(Landroid/view/KeyEvent;IZ)I

    move-result p2

    goto :goto_1

    .line 153
    .end local v0           #b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    :cond_1
    monitor-exit v4

    move v2, p2

    .line 154
    .end local p2
    .restart local v2       #policyFlags:I
    goto :goto_0

    .line 153
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyFlags:I
    .restart local p2
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public init(Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;)V
    .locals 8
    .parameter "util"

    .prologue
    const/16 v7, 0x83

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mPwmUtil:Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;

    .line 58
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->isIddaDevice:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getKeyguardMediator()Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 63
    new-instance v1, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 64
    .local v1, iidaDefaultAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;
    new-instance v3, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 65
    .local v3, iidaLockScreenAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;
    new-instance v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 66
    .local v0, iidaCameraAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;
    new-instance v4, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 67
    .local v4, iidaPhoneAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;
    new-instance v2, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 68
    .local v2, iidaHomeAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;
    new-instance v5, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 70
    .local v5, iidaPowerAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 71
    invoke-virtual {p0, v7, v3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 72
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 73
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 75
    invoke-virtual {p0, v7, v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 78
    const/16 v6, 0x1a

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 80
    .end local v0           #iidaCameraAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaCameraAction;
    .end local v1           #iidaDefaultAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaDefaultAction;
    .end local v2           #iidaHomeAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaHomeAction;
    .end local v3           #iidaLockScreenAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaLockScreenAction;
    .end local v4           #iidaPhoneAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPhoneAction;
    .end local v5           #iidaPowerAction:Lcom/android/internal/policy/impl/HtcKeyEventHandler$IidaPowerAction;
    :cond_0
    return-void
.end method

.method public needToReturnBeforeDispatching()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    return v0
.end method

.method public needToReturnBeforeQueueing()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    return v0
.end method

.method public registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V
    .locals 3
    .parameter "keyCode"
    .parameter "b"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
