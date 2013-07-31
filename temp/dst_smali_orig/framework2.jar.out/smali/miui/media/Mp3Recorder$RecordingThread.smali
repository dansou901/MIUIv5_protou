.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v0

    if-eq v0, v12, :cond_0

    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x1

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Mp3Recorder"

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v12}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    .local v10, firstSample:Z
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v0

    if-ne v0, v12, :cond_3

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)[S

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v11, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v5

    .local v5, readSize:I
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v1, v5

    invoke-static {v0, v1, v2}, Lmiui/media/Mp3Recorder;->access$614(Lmiui/media/Mp3Recorder;J)J

    if-gtz v5, :cond_4

    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error record sample failed, read size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x3

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    .end local v5           #readSize:I
    :cond_3
    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v0, v11}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    const/4 v10, 0x0

    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v10           #firstSample:Z
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Mp3Recorder"

    const-string v1, "Error could not start recording"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x6

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #readSize:I
    .restart local v10       #firstSample:Z
    :cond_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    #calls: Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I
    invoke-static {v1, v2, v5}, Lmiui/media/Mp3Recorder;->access$800(Lmiui/media/Mp3Recorder;[SI)I

    move-result v1

    #setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)J

    move-result-wide v1

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v3}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)[S

    move-result-object v3

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v6}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v6

    iget-object v7, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v7}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v7

    array-length v7, v7

    #calls: Lmiui/media/Mp3Recorder;->lame_encode(J[S[SI[BI)I
    invoke-static/range {v0 .. v7}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;J[S[SI[BI)I

    move-result v9

    .local v9, encodeSize:I
    if-gtz v9, :cond_6

    if-nez v9, :cond_5

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First sample encode size is 0 read size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skiped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encode PCM failed, encode size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1200(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x4

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2

    :cond_6
    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v1, v9

    invoke-static {v0, v1, v2}, Lmiui/media/Mp3Recorder;->access$1314(Lmiui/media/Mp3Recorder;J)J

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mMaxFileSize:J
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1400(Lmiui/media/Mp3Recorder;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x7

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v8

    .local v8, e:Ljava/io/IOException;
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when write sample to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1500(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x5

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2
.end method
