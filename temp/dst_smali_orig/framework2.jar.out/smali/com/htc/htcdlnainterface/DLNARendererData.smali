.class public Lcom/htc/htcdlnainterface/DLNARendererData;
.super Ljava/lang/Object;
.source "DLNARendererData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNARendererData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bSupportDTCPIP:Z

.field private filterDTCPType:I

.field private filterType:I

.field private ipAddress:J

.field private rendererId:Ljava/lang/String;

.field private rendererName:Ljava/lang/String;

.field private thumbIconType:I

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/DLNARendererData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNARendererData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterDTCPType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    return v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    return v0
.end method

.method public getIpAddress()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    return-wide v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbIconType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    return v0
.end method

.method public isbSupportDTCPIP()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public setFilterDTCPType(I)V
    .locals 0
    .parameter "filterDTCPType"

    .prologue
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    return-void
.end method

.method public setIpAddress(J)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    return-void
.end method

.method public setRendererId(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererId"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    return-void
.end method

.method public setThumbIconType(I)V
    .locals 0
    .parameter "thumbIconType"

    .prologue
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    return-void
.end method

.method public setbSupportDTCPIP(Z)V
    .locals 0
    .parameter "bSupportDTCPIP"

    .prologue
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
