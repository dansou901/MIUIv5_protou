.class Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase$MtpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpScanData"
.end annotation


# instance fields
.field mFormat:I

.field mHandle:I

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Landroid/mtp/MtpDatabase$MtpHandler;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase$MtpHandler;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "handle"
    .parameter "format"

    .prologue
    .line 1734
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->this$1:Landroid/mtp/MtpDatabase$MtpHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-object p2, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mPath:Ljava/lang/String;

    .line 1736
    iput p3, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mHandle:I

    .line 1737
    iput p4, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mFormat:I

    .line 1738
    return-void
.end method
