.class final Landroid/net/RouteInfo$1;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
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
        "Landroid/net/RouteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x1

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, destAddr:Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 184
    .local v4, prefix:I
    const/4 v3, 0x0

    .line 186
    .local v3, gateway:Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 188
    .local v0, addr:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .end local v0           #addr:[B
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 199
    .restart local v0       #addr:[B
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 203
    .end local v0           #addr:[B
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 205
    .local v1, dest:Landroid/net/LinkAddress;
    if-eqz v2, :cond_2

    .line 206
    new-instance v1, Landroid/net/LinkAddress;

    .end local v1           #dest:Landroid/net/LinkAddress;
    invoke-direct {v1, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 209
    .restart local v1       #dest:Landroid/net/LinkAddress;
    :cond_2
    new-instance v5, Landroid/net/RouteInfo;

    invoke-direct {v5, v1, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    return-object v5

    .line 192
    .end local v1           #dest:Landroid/net/LinkAddress;
    .restart local v0       #addr:[B
    :catch_0
    move-exception v5

    goto :goto_0

    .line 200
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/RouteInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 213
    new-array v0, p1, [Landroid/net/RouteInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->newArray(I)[Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method
