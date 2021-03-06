.class public Lmiui/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field private calledOnce:Z

.field protected delay:I

.field private dest:[I

.field protected dispose:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lmiui/util/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field private height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field private mCancel:Z

.field private mDecodeBmSize:J

.field private mDecodeToTheEnd:Z

.field private mDecodedFrames:I

.field private mMaxDecodeSize:J

.field private mStartFrame:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:J

    const/4 v0, 0x1

    iput v0, p0, Lmiui/util/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/util/GifDecoder;->block:[B

    iput v2, p0, Lmiui/util/GifDecoder;->blockSize:I

    iput v2, p0, Lmiui/util/GifDecoder;->dispose:I

    iput v2, p0, Lmiui/util/GifDecoder;->lastDispose:I

    iput-boolean v2, p0, Lmiui/util/GifDecoder;->transparency:Z

    iput v2, p0, Lmiui/util/GifDecoder;->delay:I

    iput-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    iput-boolean v2, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .locals 6
    .parameter "is"

    .prologue
    const/4 v3, 0x0

    .local v3, ret:Z
    if-eqz p0, :cond_1

    const-string v2, ""

    .local v2, id:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_0

    invoke-static {p0}, Lmiui/util/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v0

    .local v0, ch:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .end local v0           #ch:I
    :cond_0
    const-string v4, "GIF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    :cond_1
    return v3

    .restart local v0       #ch:I
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static readOneByte(Ljava/io/InputStream;)I
    .locals 3
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .local v0, curByte:I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private requestCancel()V
    .locals 0

    .prologue
    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 25

    .prologue
    const/16 v17, -0x1

    .local v17, nullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v16, v23, v24

    .local v16, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    :cond_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->pixels:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->prefix:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->suffix:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->pixelStack:[B

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->read()I

    move-result v10

    .local v10, data_size:I
    const/16 v23, 0x1

    shl-int v5, v23, v10

    .local v5, clear:I
    add-int/lit8 v12, v5, 0x1

    .local v12, end_of_information:I
    add-int/lit8 v2, v5, 0x2

    .local v2, available:I
    move/from16 v18, v17

    .local v18, old_code:I
    add-int/lit8 v8, v10, 0x1

    .local v8, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    .local v7, code_mask:I
    const/4 v6, 0x0

    .local v6, code:I
    :goto_0
    if-ge v6, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    aput-byte v24, v23, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .local v3, bi:I
    move/from16 v19, v3

    .local v19, pi:I
    move/from16 v21, v3

    .local v21, top:I
    move v13, v3

    .local v13, first:I
    move v9, v3

    .local v9, count:I
    move v4, v3

    .local v4, bits:I
    move v11, v3

    .local v11, datum:I
    const/4 v14, 0x0

    .local v14, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_11

    if-nez v22, :cond_12

    if-ge v4, v8, :cond_8

    if-nez v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->readBlock()I

    move-result v9

    if-gtz v9, :cond_6

    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v14, v20

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_6
    const/4 v3, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v3

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v4

    add-int v11, v11, v23

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_8
    and-int v6, v11, v7

    shr-int/2addr v11, v8

    sub-int/2addr v4, v8

    if-gt v6, v2, :cond_11

    if-ne v6, v12, :cond_9

    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_9
    if-ne v6, v5, :cond_a

    add-int/lit8 v8, v10, 0x1

    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    add-int/lit8 v2, v5, 0x2

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    move/from16 v18, v6

    move v13, v6

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_1

    :cond_b
    move v15, v6

    .local v15, in_code:I
    if-ne v6, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    move/from16 v6, v18

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_c
    :goto_4
    if-le v6, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v6, v23, v6

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v13, v0, 0xff

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v2, v0, :cond_e

    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v2

    add-int/lit8 v2, v2, 0x1

    and-int v23, v2, v7

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v2, v0, :cond_f

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v2

    :cond_f
    move/from16 v18, v15

    .end local v15           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_10
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_11
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_12
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    iget v0, p0, Lmiui/util/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .parameter "n"

    .prologue
    const/4 v1, -0x1

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v0

    .local v0, frameCount:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/GifDecoder$GifFrame;

    iget v1, v1, Lmiui/util/GifDecoder$GifFrame;->delay:I

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    :cond_0
    iget v1, p0, Lmiui/util/GifDecoder;->delay:I

    return v1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v0

    .local v0, frameCount:I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    rem-int/2addr p1, v0

    iget-object v1, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/GifDecoder$GifFrame;

    iget-object v1, v1, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/util/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/util/GifDecoder;->loopCount:I

    return v0
.end method

.method public getRealFrameCount()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/util/GifDecoder;->mDecodeToTheEnd:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/util/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/GifDecoder;->status:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    iput-object v1, p0, Lmiui/util/GifDecoder;->gct:[I

    iput-object v1, p0, Lmiui/util/GifDecoder;->lct:[I

    return-void
.end method

.method public isDecodeToTheEnd()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/util/GifDecoder;->mDecodeToTheEnd:Z

    return v0
.end method

.method protected read()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .parameter "is"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/util/GifDecoder;->mDecodeToTheEnd:Z

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "decoder cannot be called more than once"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-boolean v3, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->init()V

    if-eqz p1, :cond_3

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    :try_start_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readHeader()V

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readContents()V

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v1

    .local v1, frameCount:I
    if-gez v1, :cond_1

    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #frameCount:I
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->recycle()V

    const/4 v2, 0x3

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    :cond_2
    iget v2, p0, Lmiui/util/GifDecoder;->status:I

    return v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/OutOfMemoryError;
    iput v4, p0, Lmiui/util/GifDecoder;->status:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->recycle()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :cond_3
    iput v4, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method protected readBitmap()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->ix:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->iy:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->iw:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->ih:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmiui/util/GifDecoder;->lctFlag:Z

    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lmiui/util/GifDecoder;->lctSize:I

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lmiui/util/GifDecoder;->interlace:Z

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lmiui/util/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lmiui/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/util/GifDecoder;->lct:[I

    iget-object v2, p0, Lmiui/util/GifDecoder;->lct:[I

    iput-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    :cond_0
    :goto_2
    const/4 v1, 0x0

    .local v1, save:I
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v5, p0, Lmiui/util/GifDecoder;->transIndex:I

    aget v1, v2, v5

    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v5, p0, Lmiui/util/GifDecoder;->transIndex:I

    aput v4, v2, v5

    :cond_1
    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    if-nez v2, :cond_2

    iput v3, p0, Lmiui/util/GifDecoder;->status:I

    :cond_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    iput-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v2, p0, Lmiui/util/GifDecoder;->bgIndex:I

    iget v5, p0, Lmiui/util/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    iput v4, p0, Lmiui/util/GifDecoder;->bgColor:I

    goto :goto_2

    .restart local v1       #save:I
    :cond_7
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->decodeBitmapData()V

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->setPixels()V

    iget v2, p0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    iget v3, p0, Lmiui/util/GifDecoder;->mStartFrame:I

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lmiui/util/GifDecoder$GifFrame;

    iget-object v4, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/util/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lmiui/util/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    iget v2, p0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v3, p0, Lmiui/util/GifDecoder;->transIndex:I

    aput v1, v2, v3

    :cond_9
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    const/4 v2, 0x0

    .local v2, n:I
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lmiui/util/GifDecoder;->block:[B

    iget v5, p0, Lmiui/util/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lmiui/util/GifDecoder;->status:I

    .end local v0           #count:I
    :cond_1
    return v2

    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 16
    .parameter "ncolors"

    .prologue
    mul-int/lit8 v10, p1, 0x3

    .local v10, nbytes:I
    const/4 v12, 0x0

    .local v12, tab:[I
    new-array v2, v10, [B

    .local v2, c:[B
    const/4 v9, 0x0

    .local v9, n:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    const/4 v14, 0x0

    array-length v15, v2

    invoke-virtual {v13, v2, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    if-ge v9, v10, :cond_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lmiui/util/GifDecoder;->status:I

    :cond_0
    return-object v12

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v13, 0x100

    new-array v12, v13, [I

    const/4 v5, 0x0

    .local v5, i:I
    const/4 v7, 0x0

    .local v7, j:I
    move v8, v7

    .end local v7           #j:I
    .local v8, j:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    aget-byte v13, v2, v8

    and-int/lit16 v11, v13, 0xff

    .local v11, r:I
    add-int/lit8 v8, v7, 0x1

    .end local v7           #j:I
    .restart local v8       #j:I
    aget-byte v13, v2, v7

    and-int/lit16 v4, v13, 0xff

    .local v4, g:I
    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    aget-byte v13, v2, v8

    and-int/lit16 v1, v13, 0xff

    .local v1, b:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    const/high16 v13, -0x100

    shl-int/lit8 v14, v11, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v4, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v1

    aput v13, v12, v6

    move v8, v7

    .end local v7           #j:I
    .restart local v8       #j:I
    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    iput v5, p0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    const/4 v2, 0x0

    .local v2, done:Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v5, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    iput v9, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, framesBeforeRead:I
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBitmap()V

    iget-object v5, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    iget-wide v5, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:J

    iget-object v7, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:J

    :cond_3
    iget-wide v5, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:J

    iget-wide v7, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v3           #framesBeforeRead:I
    :sswitch_1
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    const-string v0, ""

    .local v0, app:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v5, 0xb

    if-ge v4, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/util/GifDecoder;->block:[B

    aget-byte v6, v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "NETSCAPE2.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readNetscapeExt()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto/16 :goto_0

    .end local v0           #app:Ljava/lang/String;
    .end local v4           #i:I
    :sswitch_4
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto/16 :goto_0

    :sswitch_6
    const/4 v2, 0x1

    iput-boolean v9, p0, Lmiui/util/GifDecoder;->mDecodeToTheEnd:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lmiui/util/GifDecoder;->dispose:I

    iget v2, p0, Lmiui/util/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    iput v1, p0, Lmiui/util/GifDecoder;->dispose:I

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->transparency:Z

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    iget v1, p0, Lmiui/util/GifDecoder;->delay:I

    if-gtz v1, :cond_1

    const/16 v1, 0x64

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    :cond_1
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->transIndex:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readLSD()V

    iget-boolean v2, p0, Lmiui/util/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lmiui/util/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lmiui/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    iget-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    iget v3, p0, Lmiui/util/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lmiui/util/GifDecoder;->bgColor:I

    goto :goto_0
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->width:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->height:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lmiui/util/GifDecoder;->gctSize:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->bgIndex:I

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->pixelAspect:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .local v0, b1:I
    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lmiui/util/GifDecoder;->loopCount:I

    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lmiui/util/GifDecoder$GifFrame;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public requestCancelDecode()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/GifDecoder;->mCancel:Z

    invoke-direct {p0}, Lmiui/util/GifDecoder;->requestCancel()V

    return-void
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Lmiui/util/GifDecoder;->dispose:I

    iput v0, p0, Lmiui/util/GifDecoder;->lastDispose:I

    iget v0, p0, Lmiui/util/GifDecoder;->ix:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrx:I

    iget v0, p0, Lmiui/util/GifDecoder;->iy:I

    iput v0, p0, Lmiui/util/GifDecoder;->lry:I

    iget v0, p0, Lmiui/util/GifDecoder;->iw:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrw:I

    iget v0, p0, Lmiui/util/GifDecoder;->ih:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrh:I

    iget-object v0, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lmiui/util/GifDecoder;->bgColor:I

    iput v0, p0, Lmiui/util/GifDecoder;->lastBgColor:I

    iput v1, p0, Lmiui/util/GifDecoder;->dispose:I

    iput-boolean v1, p0, Lmiui/util/GifDecoder;->transparency:Z

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/GifDecoder;->lct:[I

    return-void
.end method

.method public setMaxDecodeSize(J)V
    .locals 0
    .parameter "maxDecodeSize"

    .prologue
    iput-wide p1, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:J

    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->height:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lastDispose:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lastDispose:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v1

    add-int/lit8 v20, v1, -0x2

    .local v20, n:I
    if-lez v20, :cond_3

    add-int/lit8 v1, v20, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/GifDecoder;->dest:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/util/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/util/GifDecoder;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .end local v9           #bm:Landroid/graphics/Bitmap;
    .end local v20           #n:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lastDispose:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v10, 0x0

    .local v10, c:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/util/GifDecoder;->transparency:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/util/GifDecoder;->lastBgColor:I

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lry:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->width:I

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->lrx:I

    add-int v22, v1, v2

    .local v22, start:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lrh:I

    if-ge v14, v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->lrw:I

    add-int v13, v22, v1

    .local v13, end:I
    move/from16 v18, v22

    .local v18, k:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    aput v10, v1, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .end local v10           #c:I
    .end local v13           #end:I
    .end local v14           #i:I
    .end local v18           #k:I
    .end local v22           #start:I
    .restart local v20       #n:I
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->height:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    goto :goto_0

    .end local v20           #n:I
    .restart local v10       #c:I
    .restart local v13       #end:I
    .restart local v14       #i:I
    .restart local v18       #k:I
    .restart local v22       #start:I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    add-int v22, v22, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v10           #c:I
    .end local v13           #end:I
    .end local v14           #i:I
    .end local v18           #k:I
    .end local v22           #start:I
    :cond_5
    const/16 v21, 0x1

    .local v21, pass:I
    const/16 v16, 0x8

    .local v16, inc:I
    const/4 v15, 0x0

    .local v15, iline:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->ih:I

    if-ge v14, v1, :cond_b

    move/from16 v19, v14

    .local v19, line:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/util/GifDecoder;->interlace:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->ih:I

    if-lt v15, v1, :cond_6

    add-int/lit8 v21, v21, 0x1

    packed-switch v21, :pswitch_data_0

    :cond_6
    :goto_4
    move/from16 v19, v15

    add-int v15, v15, v16

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->iy:I

    add-int v19, v19, v1

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->height:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    mul-int v18, v19, v1

    .restart local v18       #k:I
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->ix:I

    add-int v12, v18, v1

    .local v12, dx:I
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->iw:I

    add-int v11, v12, v1

    .local v11, dlim:I
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    add-int v1, v1, v18

    if-ge v1, v11, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->width:I

    add-int v11, v18, v1

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->iw:I

    mul-int v23, v14, v1

    .local v23, sx:I
    move/from16 v24, v23

    .end local v23           #sx:I
    .local v24, sx:I
    :goto_5
    if-ge v12, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24           #sx:I
    .restart local v23       #sx:I
    aget-byte v1, v1, v24

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .local v17, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->act:[I

    aget v10, v1, v17

    .restart local v10       #c:I
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    aput v10, v1, v12

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .end local v23           #sx:I
    .restart local v24       #sx:I
    goto :goto_5

    .end local v10           #c:I
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v17           #index:I
    .end local v18           #k:I
    .end local v24           #sx:I
    :pswitch_0
    const/4 v15, 0x4

    goto :goto_4

    :pswitch_1
    const/4 v15, 0x2

    const/16 v16, 0x4

    goto :goto_4

    :pswitch_2
    const/4 v15, 0x1

    const/16 v16, 0x2

    goto :goto_4

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v19           #line:I
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/util/GifDecoder;->mDecodedFrames:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->mStartFrame:I

    if-gt v1, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/util/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStartFrame(I)V
    .locals 0
    .parameter "startFrame"

    .prologue
    iput p1, p0, Lmiui/util/GifDecoder;->mStartFrame:I

    return-void
.end method

.method protected skip()V
    .locals 1

    .prologue
    :cond_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    iget v0, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
