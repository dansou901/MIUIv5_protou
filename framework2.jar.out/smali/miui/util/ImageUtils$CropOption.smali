.class public Lmiui/util/ImageUtils$CropOption;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderSize:I

.field public rx:I

.field public ry:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "rx"
    .parameter "ry"
    .parameter "borderSize"
    .parameter "borderColor"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Lmiui/util/ImageUtils$CropOption;->rx:I

    .line 330
    iput p2, p0, Lmiui/util/ImageUtils$CropOption;->ry:I

    .line 331
    iput p3, p0, Lmiui/util/ImageUtils$CropOption;->borderSize:I

    .line 332
    iput p4, p0, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    .line 333
    return-void
.end method
