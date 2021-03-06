.class public Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
.super Ljava/lang/Object;
.source "DLNAInternetPushPlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDurationMillis:J

.field private mIndex:I

.field private mMediaTitle:Ljava/lang/String;

.field private mMediaTitles:[Ljava/lang/String;

.field private mMediaURL:Ljava/lang/String;

.field private mMediaURLs:[Ljava/lang/String;

.field private mThumbURL:Ljava/lang/String;

.field private mThumbURLs:[Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    return v0
.end method

.method public getMediaTitles()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getmMediaTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    return-void
.end method

.method public setMediaTitles([Ljava/lang/String;)V
    .locals 0
    .parameter "mediaTitles"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    return-void
.end method

.method public setMediaURL(Ljava/lang/String;)V
    .locals 0
    .parameter "mMediaURL"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    return-void
.end method

.method public setMediaURLs([Ljava/lang/String;)V
    .locals 0
    .parameter "mediaURLs"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    return-void
.end method

.method public setThumbURL(Ljava/lang/String;)V
    .locals 0
    .parameter "mThumbURL"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    return-void
.end method

.method public setThumbURLs([Ljava/lang/String;)V
    .locals 0
    .parameter "thumbURLs"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    return-void
.end method

.method public setmMediaTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mMediaTitle"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    return-void
.end method

.method public setmMediaURLs([Ljava/lang/String;)V
    .locals 0
    .parameter "mediaURLs"

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
