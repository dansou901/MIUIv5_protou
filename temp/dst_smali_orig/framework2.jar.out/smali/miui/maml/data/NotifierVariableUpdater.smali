.class public abstract Lmiui/maml/data/NotifierVariableUpdater;
.super Lmiui/maml/data/VariableUpdater;
.source "NotifierVariableUpdater.java"

# interfaces
.implements Lmiui/maml/NotifierManager$OnNotifyListener;


# instance fields
.field protected mNotifierManager:Lmiui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 1
    .parameter "m"
    .parameter "type"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    iput-object p2, p0, Lmiui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/data/VariableUpdaterManager;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/maml/NotifierManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method
