.class public Lmiui/maml/NotifierManager$BroadcastNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "action"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected onRegister()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    :cond_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
