.class public Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
.super Ljava/lang/Object;
.source "DLNAContentItemDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAContentItemDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentBitRate:J

.field private contentComposer:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentDiscNumber:Ljava/lang/String;

.field private contentDuration:J

.field private contentFps:J

.field private contentGenre:Ljava/lang/String;

.field private contentPath:Ljava/lang/String;

.field private contentResolution:Ljava/lang/String;

.field private contentSize:J

.field private contentStatus:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private contentTrackNumber:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private nameDMS:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBitRate()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    return-wide v0
.end method

.method public getContentComposer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDuration()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    return-wide v0
.end method

.method public getContentFps()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    return-wide v0
.end method

.method public getContentGenre()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentResolution()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    return-wide v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDMS()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "contentAlbum"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "contentArtist"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    return-void
.end method

.method public setContentBitRate(J)V
    .locals 0
    .parameter "contentBitRate"

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    return-void
.end method

.method public setContentComposer(Ljava/lang/String;)V
    .locals 0
    .parameter "contentComposer"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDate"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    return-void
.end method

.method public setContentDiscNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDiscNumber"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    return-void
.end method

.method public setContentDuration(J)V
    .locals 0
    .parameter "contentDuration"

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    return-void
.end method

.method public setContentFps(J)V
    .locals 0
    .parameter "contentFps"

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    return-void
.end method

.method public setContentGenre(Ljava/lang/String;)V
    .locals 0
    .parameter "contentGenre"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "contentPath"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    return-void
.end method

.method public setContentResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "contentResolution"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    return-void
.end method

.method public setContentSize(J)V
    .locals 0
    .parameter "contentSize"

    .prologue
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "aContentStatus"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTitle"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    return-void
.end method

.method public setContentTrackNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTrackNumber"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "aDownloadStoreAlbumArtPath"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setNameDMS(Ljava/lang/String;)V
    .locals 0
    .parameter "nameDMS"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
