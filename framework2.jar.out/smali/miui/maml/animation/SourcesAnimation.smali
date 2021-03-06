.class public Lmiui/maml/animation/SourcesAnimation;
.super Lmiui/maml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lmiui/maml/animation/SourcesAnimation$Source;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/maml/animation/SourcesAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Lmiui/maml/animation/SourcesAnimation$Source;-><init>([Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 2
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const-wide/16 v0, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iput-wide v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentX:D

    .line 42
    iput-wide v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentY:D

    .line 49
    .end local p2
    :goto_0
    return-void

    .line 46
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentX:D

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentY:D

    .line 48
    check-cast p2, Lmiui/maml/animation/SourcesAnimation$Source;

    .end local p2
    iget-object v0, p2, Lmiui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    goto :goto_0
.end method
