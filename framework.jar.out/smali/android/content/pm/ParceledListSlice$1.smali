.class final Landroid/content/pm/ParceledListSlice$1;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ParceledListSlice;
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
        "Landroid/content/pm/ParceledListSlice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, numItems:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v0, :cond_0

    .local v0, lastSlice:Z
    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, parcelSize:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .local v2, offset:I
    add-int v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, p:Landroid/os/Parcel;
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3, p1, v2, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v3, v1, v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V

    .end local v2           #offset:I
    .end local v4           #parcelSize:I
    :goto_1
    return-object v5

    .end local v0           #lastSlice:Z
    .end local v3           #p:Landroid/os/Parcel;
    :cond_0
    move v0, v6

    goto :goto_0

    .restart local v0       #lastSlice:Z
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .restart local v3       #p:Landroid/os/Parcel;
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v3, v6, v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V

    invoke-virtual {v5, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    .local v5, list:Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v5, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    .local v5, list:Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v5, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    .local v5, list:Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v5, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ParceledListSlice;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->newArray(I)[Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method
