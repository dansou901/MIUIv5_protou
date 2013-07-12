.class public final Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private curContentID:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mIndex:J

.field private mMute:Z

.field private mPlayState:I

.field private mPosition:I

.field private mRendererId:Ljava/lang/String;

.field private mRendererName:Ljava/lang/String;

.field private mRepeat:I

.field private mShuffle:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotal:J

.field private mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 1102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    .line 1113
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1118
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1123
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1128
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1139
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1143
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1150
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1161
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method

.method static synthetic access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1702(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$2102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$2202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1255
    iget-wide v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1276
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 1409
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1410
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 1432
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1433
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "aCurContentID"

    .prologue
    .line 1386
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1387
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 1466
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1467
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1233
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1234
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1244
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1245
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1298
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1299
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1212
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1213
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1287
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1288
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    .line 1365
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1366
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 1320
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1321
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .parameter "shuffle"

    .prologue
    .line 1309
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1310
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 1477
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1478
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1455
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1456
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .parameter "total"

    .prologue
    .line 1266
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1267
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1332
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1333
    return-void
.end method
