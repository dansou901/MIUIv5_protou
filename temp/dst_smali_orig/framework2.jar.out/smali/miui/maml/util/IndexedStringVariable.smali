.class public Lmiui/maml/util/IndexedStringVariable;
.super Ljava/lang/Object;
.source "IndexedStringVariable.java"


# instance fields
.field private mIndex:I

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {p3, p1, p2}, Lmiui/maml/data/Variables;->registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    iput-object p3, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .parameter "name"
    .parameter "vars"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    return v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putStr(ILjava/lang/String;)V

    return-void
.end method
