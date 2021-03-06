.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"

# interfaces
.implements Landroid/graphics/HtcIfPicture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field public final createdFromStream:Z

.field private final mNativePicture:I

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(IZ)V

    .line 44
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 1
    .parameter "nativePicture"
    .parameter "fromStream"

    .prologue
    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iput p1, p0, Landroid/graphics/Picture;->mNativePicture:I

    .line 172
    iput-boolean p2, p0, Landroid/graphics/Picture;->createdFromStream:Z

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 52
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Picture;->mNativePicture:I

    :goto_0
    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(IZ)V

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 3
    .parameter "stream"

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Picture;-><init>(IZ)V

    return-object v0
.end method

.method private static native nativeBeginRecording(III)I
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeDraw(II)V
.end method

.method private static native nativeEndRecording(I)V
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[BZ)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(III)I

    move-result v0

    .line 64
    .local v0, ni:I
    new-instance v1, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;I)V

    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 65
    iget-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 103
    :cond_0
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDraw(II)V

    .line 104
    return-void
.end method

.method public endRecording()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 77
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeEndRecording(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 137
    :cond_1
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter "stream"
    .parameter "isAll"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1, p2}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[BZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 152
    :cond_1
    return-void
.end method
