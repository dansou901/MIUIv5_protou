.class Lmiui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:Ljava/lang/Double;

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Double;I)V
    .locals 0
    .parameter "value"
    .parameter "version"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    iput p2, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Double;)V
    .locals 1
    .parameter "value"

    .prologue
    iput-object p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    iget v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method
