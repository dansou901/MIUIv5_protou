.class public Landroid/net/wifi/ScoreBase;
.super Ljava/lang/Object;
.source "ScoreBase.java"


# instance fields
.field public WEIGHT:I

.field public m_APRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/APRecords;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    return-void
.end method
