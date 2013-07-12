.class public Landroid/media/AudioAlert$Timer;
.super Ljava/lang/Thread;
.source "AudioAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Timer"
.end annotation


# instance fields
.field private STATE_IDLE:I

.field private STATE_RUNNING:I

.field private STATE_STOP:I

.field private dialogShow:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlert:Landroid/media/AudioAlert;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:J

.field private mStartTime:J

.field private mState:I

.field final synthetic this$0:Landroid/media/AudioAlert;


# direct methods
.method public constructor <init>(Landroid/media/AudioAlert;JJLandroid/media/AudioAlert;Landroid/app/ActivityManager;Landroid/media/AudioManager;)V
    .locals 2
    .parameter
    .parameter "startTime"
    .parameter "duration"
    .parameter "alert"
    .parameter "am"
    .parameter "audioManager"

    .prologue
    const/4 v1, 0x0

    .line 306
    iput-object p1, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 300
    iput v1, p0, Landroid/media/AudioAlert$Timer;->STATE_RUNNING:I

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioAlert$Timer;->STATE_STOP:I

    .line 302
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAlert$Timer;->STATE_IDLE:I

    .line 304
    iput-boolean v1, p0, Landroid/media/AudioAlert$Timer;->dialogShow:Z

    .line 307
    iget v0, p0, Landroid/media/AudioAlert$Timer;->STATE_IDLE:I

    iput v0, p0, Landroid/media/AudioAlert$Timer;->mState:I

    .line 308
    iput-wide p2, p0, Landroid/media/AudioAlert$Timer;->mStartTime:J

    .line 309
    iput-wide p4, p0, Landroid/media/AudioAlert$Timer;->mDuration:J

    .line 310
    iput-object p6, p0, Landroid/media/AudioAlert$Timer;->mAlert:Landroid/media/AudioAlert;

    .line 311
    iput-object p7, p0, Landroid/media/AudioAlert$Timer;->mActivityManager:Landroid/app/ActivityManager;

    .line 312
    iput-object p8, p0, Landroid/media/AudioAlert$Timer;->mAudioManager:Landroid/media/AudioManager;

    .line 313
    return-void
.end method

.method private checkDialogShow()V
    .locals 4

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #calls: Landroid/media/AudioAlert;->getSystemTime()J
    invoke-static {v0}, Landroid/media/AudioAlert;->access$400(Landroid/media/AudioAlert;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/media/AudioAlert$Timer;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/media/AudioAlert$Timer;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioAlert$Timer;->dialogShow:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioAlert$Timer;->dialogShow:Z

    .line 353
    invoke-direct {p0}, Landroid/media/AudioAlert$Timer;->shouldDisableDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->mAlert:Landroid/media/AudioAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAlert;->sendEmptyMessage(I)Z

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    .line 360
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->mAlert:Landroid/media/AudioAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAlert;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isForgeroundProcess(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    .line 371
    const/4 v3, 0x0

    .local v3, result:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .line 373
    .local v1, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Landroid/media/AudioAlert$Timer;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 374
    iget-object v4, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioAlert;->access$600(Landroid/media/AudioAlert;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Landroid/media/AudioAlert$Timer;->mActivityManager:Landroid/app/ActivityManager;

    .line 375
    :cond_0
    iget-object v4, p0, Landroid/media/AudioAlert$Timer;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, l:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 379
    .restart local v1       #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    const/4 v4, 0x1

    .line 384
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private shouldDisableDialog()Z
    .locals 2

    .prologue
    .line 363
    const-string v0, "com.android.camera"

    invoke-direct {p0, v0}, Landroid/media/AudioAlert$Timer;->isForgeroundProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 365
    :cond_0
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForTimeOut()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 338
    :try_start_0
    iget-wide v3, p0, Landroid/media/AudioAlert$Timer;->mDuration:J

    iget-wide v5, p0, Landroid/media/AudioAlert$Timer;->mStartTime:J

    sub-long v1, v3, v5

    .line 339
    .local v1, sleepTime:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 340
    invoke-static {v1, v2}, Landroid/media/AudioAlert$Timer;->sleep(J)V

    .line 347
    .end local v1           #sleepTime:J
    :goto_0
    return-void

    .line 342
    .restart local v1       #sleepTime:J
    :cond_0
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/media/AudioAlert$Timer;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v1           #sleepTime:J
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interrupted before time out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget v3, p0, Landroid/media/AudioAlert$Timer;->STATE_STOP:I

    iput v3, p0, Landroid/media/AudioAlert$Timer;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #calls: Landroid/media/AudioAlert;->getSystemTime()J
    invoke-static {v2}, Landroid/media/AudioAlert;->access$400(Landroid/media/AudioAlert;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-enter p0

    .line 330
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioAlert$Timer;->dialogShow:Z

    .line 331
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #calls: Landroid/media/AudioAlert;->getSystemTime()J
    invoke-static {v0}, Landroid/media/AudioAlert;->access$400(Landroid/media/AudioAlert;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AudioAlert$Timer;->mStartTime:J

    .line 332
    invoke-static {}, Landroid/media/AudioAlert;->access$500()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AudioAlert$Timer;->mDuration:J

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Landroid/media/AudioAlert$Timer;->STATE_RUNNING:I

    iput v0, p0, Landroid/media/AudioAlert$Timer;->mState:I

    .line 318
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioAlert$Timer;->waitForTimeOut()V

    .line 319
    invoke-direct {p0}, Landroid/media/AudioAlert$Timer;->checkDialogShow()V

    .line 320
    iget v0, p0, Landroid/media/AudioAlert$Timer;->mState:I

    iget v1, p0, Landroid/media/AudioAlert$Timer;->STATE_STOP:I

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Landroid/media/AudioAlert$Timer;->this$0:Landroid/media/AudioAlert;

    #getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stop timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method
