.class public Lmiui/maml/data/RootExpression;
.super Lmiui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersionVisitor;,
        Lmiui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lmiui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lmiui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;)V
    .locals 2
    .parameter "exp"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iput-object p1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$002(Lmiui/maml/data/RootExpression;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    return-void
.end method

.method public addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V
    .locals 1
    .parameter "version"

    .prologue
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 6
    .parameter "var"

    .prologue
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0, p1}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    :cond_1
    :goto_0
    iget-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v4

    :cond_2
    const/4 v1, 0x0

    .local v1, isChange:Z
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .local v3, version:Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v5, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v4, v5, :cond_4

    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v2

    .local v2, newVersion:I
    :goto_2
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_3

    const/4 v1, 0x1

    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .end local v2           #newVersion:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v2

    .restart local v2       #newVersion:I
    goto :goto_2

    .end local v0           #i:I
    .end local v2           #newVersion:I
    .end local v3           #version:Lmiui/maml/data/RootExpression$VarVersion;
    :cond_5
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_1

    :cond_6
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    goto :goto_0
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 6
    .parameter "var"

    .prologue
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0, p1}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    :cond_1
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v4

    :cond_2
    const/4 v1, 0x0

    .local v1, isChange:Z
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .local v3, version:Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v5, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v4, v5, :cond_4

    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v2

    .local v2, newVersion:I
    :goto_2
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_3

    const/4 v1, 0x1

    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .end local v2           #newVersion:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v2

    .restart local v2       #newVersion:I
    goto :goto_2

    .end local v0           #i:I
    .end local v2           #newVersion:I
    .end local v3           #version:Lmiui/maml/data/RootExpression$VarVersion;
    :cond_5
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_1

    :cond_6
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v0

    return v0
.end method
