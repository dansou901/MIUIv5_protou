.class public Lmiui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lmiui/maml/FramerateTokenList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 19
    iput-object p1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getFramerate()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    return v0
.end method

.method public requestFramerate(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 28
    iget v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "FramerateTokenList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFramerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    #getter for: Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    #getter for: Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    iget v1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    invoke-interface {v0, v1, p1}, Lmiui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    .line 33
    :cond_0
    iput p1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 34
    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    #calls: Lmiui/maml/FramerateTokenList;->onChange()V
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$100(Lmiui/maml/FramerateTokenList;)V

    .line 36
    :cond_1
    return-void
.end method
