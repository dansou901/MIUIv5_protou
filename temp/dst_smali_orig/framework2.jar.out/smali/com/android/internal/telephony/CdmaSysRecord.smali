.class public Lcom/android/internal/telephony/CdmaSysRecord;
.super Ljava/lang/Object;
.source "CdmaSysRecord.java"


# instance fields
.field public bsid:I

.field public nid:I

.field public sid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "sid"
    .parameter "nid"
    .parameter "bsid"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/CdmaSysRecord;->sid:I

    iput p2, p0, Lcom/android/internal/telephony/CdmaSysRecord;->nid:I

    iput p3, p0, Lcom/android/internal/telephony/CdmaSysRecord;->bsid:I

    return-void
.end method
