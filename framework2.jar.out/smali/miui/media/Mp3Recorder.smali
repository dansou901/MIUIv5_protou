.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$1;,
        Lmiui/media/Mp3Recorder$EventHandler;,
        Lmiui/media/Mp3Recorder$RecordingThread;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final MP3_RECORDER_EVENT_ERROR:I = 0x1

.field private static final OUT_BIT_RATE_DEFAULT:I = 0x40

.field public static final OUT_MODE_MONO:I = 0x3

.field public static final OUT_MODE_STEREO:I = 0x0

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STOPED:I = 0x4


# instance fields
.field private bufferMP3:[B

.field private bufferPCM:[S

.field private mAudioChannel:I

.field private mAudioSource:I

.field private mCountRecordingSamples:J

.field private mCurrentRecordingSize:J

.field private mEventHandler:Landroid/os/Handler;

.field private mMaxAmplitude:I

.field private mMaxFileSize:J

.field private mMinBufferSize:I

.field private mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private mOutBitRate:I

.field private mOutMode:I

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mQuality:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecordingState:I

.field private mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

.field private mSampleRate:I

.field private ptr_lame_global_flag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 98
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    .line 103
    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    .line 104
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$100(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/media/Mp3Recorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/media/Mp3Recorder;J[S[SI[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p7}, Lmiui/media/Mp3Recorder;->lame_encode(J[S[SI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1314(Lmiui/media/Mp3Recorder;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1400(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1500(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/media/Mp3Recorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/media/Mp3Recorder;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    return-object v0
.end method

.method static synthetic access$614(Lmiui/media/Mp3Recorder;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/Mp3Recorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/Mp3Recorder;[SI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    return-wide v0
.end method

.method private findMaxAmplitude([SI)I
    .locals 4
    .parameter "buffer"
    .parameter "size"

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 311
    aget-short v3, p1, v0

    if-gez v3, :cond_1

    aget-short v3, p1, v0

    neg-int v2, v3

    .line 312
    .local v2, tmp:I
    :goto_1
    if-le v2, v1, :cond_0

    .line 313
    move v1, v2

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v2           #tmp:I
    :cond_1
    aget-short v2, p1, v0

    goto :goto_1

    .line 316
    :cond_2
    return v1
.end method

.method private native lame_close(J)I
.end method

.method private native lame_encode(J[S[SI[BI)I
.end method

.method private native lame_flush(J[BI)I
.end method

.method private native lame_init(IIIIII)J
.end method

.method private notifyError(I)V
    .locals 3
    .parameter "err"

    .prologue
    .line 393
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 396
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .prologue
    .line 221
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Recording not started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 233
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v1}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :goto_0
    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 241
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 243
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord released"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 245
    const-string v1, "Mp3Recorder"

    const-string v2, "Mp3Recorder paused"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public prepare()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x2

    .line 176
    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    invoke-static {v0, v1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    .line 178
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    if-gez v0, :cond_0

    .line 179
    const-string v0, "Mp3Recorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    if-ge v0, v1, :cond_1

    .line 183
    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    .line 187
    :goto_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 189
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    move v3, v4

    .line 193
    .local v3, countChannel:I
    :goto_1
    const-wide v0, 0x40bc200000000000L

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v2, v2

    int-to-double v4, v2

    const-wide/high16 v8, 0x3ff4

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    .line 194
    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    iget v4, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    iget v6, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/media/Mp3Recorder;->lame_init(IIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    .line 197
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    .line 198
    iput v7, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 199
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 185
    .end local v3           #countChannel:I
    :cond_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    goto :goto_0

    :cond_2
    move v3, v7

    .line 190
    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 301
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Recorder;->lame_close(J)I

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    .line 305
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 160
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 163
    const v0, 0xac44

    iput v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 164
    const/16 v0, 0x10

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    .line 166
    iput v1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 167
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 168
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 170
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 171
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 172
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 173
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 250
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v4, 0x2

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 252
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 254
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 255
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 256
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioSamplingRate(I)V
    .locals 0
    .parameter "samplingRate"

    .prologue
    .line 115
    iput p1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 116
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .parameter "audio_source"

    .prologue
    .line 111
    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 112
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 2
    .parameter "maxDurByMillis"

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 153
    iget v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setMaxFileSize(J)V
    .locals 2
    .parameter "maxSizeByByte"

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 138
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 123
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .line 124
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0
    .parameter "brate"

    .prologue
    .line 119
    iput p1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 120
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 107
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 127
    iput p1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 128
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 209
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 214
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 215
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 216
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 217
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    iput v3, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 274
    iget-wide v3, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v6, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    array-length v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lmiui/media/Mp3Recorder;->lame_flush(J[BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 276
    .local v2, flushSize:I
    if-lez v2, :cond_2

    .line 277
    :try_start_3
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    :try_start_4
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 289
    :goto_1
    :try_start_5
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 291
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    :goto_2
    const-string v3, "Mp3Recorder"

    const-string v4, "Mp3Recorder stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 269
    .end local v2           #flushSize:I
    :catch_0
    move-exception v1

    .line 270
    .local v1, e1:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "Mp3Recorder"

    const-string v4, "InterruptedException when stop"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 264
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 279
    .restart local v2       #flushSize:I
    :cond_2
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Buffer flush must greater than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 281
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be written when flush"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 285
    :try_start_9
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 289
    :goto_3
    :try_start_a
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 291
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 287
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 286
    :catch_3
    move-exception v0

    .line 287
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 285
    :try_start_b
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 289
    :goto_4
    :try_start_c
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_3

    .line 290
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 291
    const-string v4, "Mp3Recorder"

    const-string v5, "AudioRecord stoped"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v3

    .line 286
    :catch_4
    move-exception v0

    .line 287
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mp3Recorder"

    const-string v5, "Error file cannot be closed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4
.end method
