.class final Lcom/htc/htcdlnainterface/DLNAStatusBarData$1;
.super Ljava/lang/Object;
.source "DLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcdlnainterface/DLNAStatusBarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/htcdlnainterface/DLNAStatusBarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "in"

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    invoke-direct {v0, p1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData$1;->newArray(I)[Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method
