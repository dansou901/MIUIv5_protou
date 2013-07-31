.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mTask:Lmiui/maml/util/Task;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "root"
    .parameter "ele"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-static {p2}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .local v0, configTask:Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v4, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    return-void
.end method
