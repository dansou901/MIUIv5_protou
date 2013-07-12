.class final Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 88
    .parameter "msg"

    .prologue
    .line 347
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1723
    :goto_0
    return-void

    .line 349
    :sswitch_0
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 351
    .local v76, request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x67

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    goto :goto_0

    .line 355
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 357
    .local v37, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 358
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 359
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 360
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 365
    :goto_1
    monitor-enter v76

    .line 366
    :try_start_0
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 367
    monitor-exit v76

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v76
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 362
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 363
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 372
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;

    .line 373
    .local v74, randu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x65

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 378
    .end local v74           #randu:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 380
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 381
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 382
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 383
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 384
    .local v82, strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v60, 0x0

    .local v60, i:I
    :goto_2
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_1

    .line 386
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    add-int/lit8 v60, v60, 0x1

    goto :goto_2

    .line 389
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 391
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 392
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 395
    :cond_3
    monitor-enter v76

    .line 396
    :try_start_1
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 397
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v76
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 401
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 403
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 407
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 409
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 410
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 411
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 412
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 417
    :goto_3
    monitor-enter v76

    .line 418
    :try_start_2
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v76
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 414
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 415
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 422
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 424
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v51, v3, v4

    .line 425
    .local v51, chapid:Ljava/lang/String;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v50, v3, v4

    .line 426
    .local v50, chapchallengelength:Ljava/lang/String;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v49, v3, v4

    .line 427
    .local v49, chapchallenge:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chapid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallengelength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallenge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x69

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 432
    .end local v49           #chapchallenge:Ljava/lang/String;
    .end local v50           #chapchallengelength:Ljava/lang/String;
    .end local v51           #chapid:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 434
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 435
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 436
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 437
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 438
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_4
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_5

    .line 440
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    add-int/lit8 v60, v60, 0x1

    goto :goto_4

    .line 442
    :cond_5
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 446
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 447
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 450
    :cond_6
    monitor-enter v76

    .line 451
    :try_start_3
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 452
    monitor-exit v76

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v76
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 444
    :cond_7
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 456
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 458
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 462
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_9
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 464
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 465
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 466
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 467
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 473
    :goto_6
    monitor-enter v76

    .line 474
    :try_start_4
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v76

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v76
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 469
    :cond_8
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 470
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 478
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 480
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 484
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 486
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 487
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 488
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 489
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 490
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_7
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_9

    .line 492
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    add-int/lit8 v60, v60, 0x1

    goto :goto_7

    .line 495
    :cond_9
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 497
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_b

    .line 498
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 501
    :cond_b
    monitor-enter v76

    .line 502
    :try_start_5
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 503
    monitor-exit v76

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v76
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 507
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 509
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Ljava/lang/String;

    .line 510
    .local v73, randssd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x71

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 514
    .end local v73           #randssd:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 516
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 517
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 518
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    .line 519
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 520
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_8
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_c

    .line 522
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v60, v60, 0x1

    goto :goto_8

    .line 524
    :cond_c
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 526
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_e

    .line 527
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 530
    :cond_e
    monitor-enter v76

    .line 531
    :try_start_6
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit v76

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v76
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 535
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 537
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x73

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 541
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 543
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 544
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 545
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_f

    .line 546
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 552
    :goto_9
    monitor-enter v76

    .line 553
    :try_start_7
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 554
    monitor-exit v76

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v76
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 548
    :cond_f
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 549
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 557
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_10
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 559
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 560
    .local v42, authbs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x75

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 569
    .end local v42           #authbs:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 570
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 571
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 572
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    .line 573
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 580
    :goto_a
    monitor-enter v76

    .line 581
    :try_start_8
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 582
    monitor-exit v76

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v76
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 576
    :cond_10
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 586
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_12
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 588
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x77

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 593
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_13
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 595
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 596
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 597
    const/16 v43, 0x0

    .line 599
    .local v43, authenSupported:I
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_15

    .line 600
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v86, v3

    check-cast v86, [Ljava/lang/String;

    .line 601
    .local v86, uimauth:[Ljava/lang/String;
    const-string v87, ""

    .line 602
    .local v87, uimauthList:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len of uimauth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_b
    move-object/from16 v0, v86

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_14

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v86, v60

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    .line 605
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 606
    add-int/lit8 v43, v43, 0x1

    .line 603
    :cond_11
    :goto_c
    add-int/lit8 v60, v60, 0x1

    goto :goto_b

    .line 607
    :cond_12
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 608
    add-int/lit8 v43, v43, 0x2

    goto :goto_c

    .line 609
    :cond_13
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "akacave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 610
    add-int/lit8 v43, v43, 0x4

    goto :goto_c

    .line 613
    :cond_14
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uimauthList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v60           #i:I
    .end local v86           #uimauth:[Ljava/lang/String;
    .end local v87           #uimauthList:Ljava/lang/String;
    :goto_d
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 619
    monitor-enter v76

    .line 620
    :try_start_9
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 621
    monitor-exit v76

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v76
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 615
    :cond_15
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 626
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v43           #authenSupported:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_14
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 628
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x79

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 632
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_15
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 634
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 635
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 636
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_16

    .line 637
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v75, v3

    check-cast v75, [I

    .line 638
    .local v75, registration:[I
    const/4 v3, 0x0

    aget v3, v75, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 645
    .end local v75           #registration:[I
    :goto_e
    monitor-enter v76

    .line 646
    :try_start_a
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 647
    monitor-exit v76

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v76
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    .line 640
    :cond_16
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 641
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 650
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_16
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 652
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Ljava/lang/String;

    .line 653
    .local v62, ifcname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7c

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 657
    .end local v62           #ifcname:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_17
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 659
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 660
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 661
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_19

    .line 662
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 663
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_f
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_17

    .line 665
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    add-int/lit8 v60, v60, 0x1

    goto :goto_f

    .line 667
    :cond_17
    move-object/from16 v0, v82

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 671
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_18

    .line 672
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 675
    :cond_18
    monitor-enter v76

    .line 676
    :try_start_b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 677
    monitor-exit v76

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    monitor-exit v76
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    .line 669
    :cond_19
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 682
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 683
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 685
    .local v39, argument:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 687
    .local v11, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->channel:I

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v39

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v39

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 693
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v39           #argument:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 694
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 695
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    .line 696
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 700
    :goto_11
    monitor-enter v76

    .line 701
    :try_start_c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 702
    monitor-exit v76

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v76
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    .line 698
    :cond_1a
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v76

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 705
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 706
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 707
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v11}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 711
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 712
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 714
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v48, v3

    check-cast v48, [I

    .line 715
    .local v48, channelInfo:[I
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    if-eqz v48, :cond_1b

    move-object/from16 v0, v48

    array-length v3, v0

    if-lez v3, :cond_1b

    .line 716
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aget v4, v48, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 725
    :goto_12
    monitor-enter v76

    .line 726
    :try_start_d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 727
    monitor-exit v76

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v76
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    .line 718
    :cond_1b
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 719
    if-eqz v48, :cond_1c

    move-object/from16 v0, v48

    array-length v3, v0

    if-lez v3, :cond_1c

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    aget v4, v48, v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_12

    .line 722
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_12

    .line 730
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v48           #channelInfo:[I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 731
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 733
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v11}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 738
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 739
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 740
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1d

    .line 741
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 745
    :goto_13
    monitor-enter v76

    .line 746
    :try_start_e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 747
    monitor-exit v76

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v76
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    .line 743
    :cond_1d
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    .line 750
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 751
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 752
    .local v72, parameters:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x97

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 753
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v72

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v72

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v72

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v72

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v72

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v72

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 759
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v72           #parameters:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 760
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 761
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1f

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    .line 762
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 773
    :cond_1e
    :goto_14
    monitor-enter v76

    :try_start_f
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v76

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    monitor-exit v76
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    .line 765
    :cond_1f
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v76

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 767
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1e

    .line 768
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1e

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x5

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_14

    .line 780
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_20
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 782
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 783
    .local v7, uiccAuthParam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v5, "7FFF"

    const-string v6, "11"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x86

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 792
    .end local v7           #uiccAuthParam:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_21
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 794
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 795
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Lcom/android/internal/telephony/IccIoResult;

    .line 796
    .local v61, iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 797
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    .line 798
    new-instance v78, Landroid/os/Bundle;

    invoke-direct/range {v78 .. v78}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v78, result:Landroid/os/Bundle;
    const-string v3, "sw1"

    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    const-string v3, "sw2"

    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    const-string v3, "payload"

    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 802
    move-object/from16 v0, v78

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 807
    .end local v78           #result:Landroid/os/Bundle;
    :goto_15
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 808
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 812
    :cond_20
    monitor-enter v76

    .line 813
    :try_start_10
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 814
    monitor-exit v76

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    monitor-exit v76
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    .line 804
    :cond_21
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 818
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v61           #iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_22
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 820
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x84

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 824
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_23
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 826
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 827
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 828
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    .line 829
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 834
    :goto_16
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 835
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 839
    :cond_22
    monitor-enter v76

    .line 840
    :try_start_11
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 841
    monitor-exit v76

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v76
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    .line 831
    :cond_23
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 846
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_24
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 848
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/os/Bundle;

    .line 849
    .local v59, gsmArgument:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rand"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0xb4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 856
    .end local v59           #gsmArgument:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_25
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 858
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 859
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 860
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_25

    .line 861
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 866
    :goto_17
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_24

    .line 867
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 871
    :cond_24
    monitor-enter v76

    .line 872
    :try_start_12
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 873
    monitor-exit v76

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v76
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v3

    .line 863
    :cond_25
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 879
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_26
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 881
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/os/Bundle;

    .line 882
    .local v36, akaArgument:Landroid/os/Bundle;
    const/16 v41, 0x1

    .line 883
    .local v41, auth_type:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "rand"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "autn"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0xb0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move/from16 v0, v41

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 888
    .end local v36           #akaArgument:Landroid/os/Bundle;
    .end local v41           #auth_type:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_27
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 890
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 891
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 892
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_27

    .line 893
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 898
    :goto_18
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_26

    .line 899
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 903
    :cond_26
    monitor-enter v76

    .line 904
    :try_start_13
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 905
    monitor-exit v76

    goto/16 :goto_0

    :catchall_13
    move-exception v3

    monitor-exit v76
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v3

    .line 895
    :cond_27
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 911
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_28
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "C8260A0000"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x89

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 915
    :sswitch_29
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 917
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 918
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 920
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_29

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOldNV_10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_2a

    .line 929
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can not get NV#10"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 930
    monitor-enter v76

    .line 931
    :try_start_14
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 932
    monitor-exit v76

    goto/16 :goto_0

    :catchall_14
    move-exception v3

    monitor-exit v76
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v3

    .line 924
    :cond_29
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 935
    :cond_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x8a

    move-object/from16 v0, v76

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 940
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 942
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 943
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 944
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2b

    .line 945
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8270A0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x8b

    move-object/from16 v0, v76

    invoke-virtual {v6, v8, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 949
    :cond_2b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 951
    monitor-enter v76

    .line 952
    :try_start_15
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 953
    monitor-exit v76

    goto/16 :goto_0

    :catchall_15
    move-exception v3

    monitor-exit v76
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v3

    .line 957
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 959
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 960
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2c

    .line 961
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_2c
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1a
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 964
    monitor-enter v76

    .line 965
    :try_start_16
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 966
    monitor-exit v76

    goto/16 :goto_0

    :catchall_16
    move-exception v3

    monitor-exit v76
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v3

    .line 963
    :cond_2d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 971
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 973
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 974
    .local v65, mAuth1:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v65

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8d

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 978
    .end local v65           #mAuth1:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 980
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 981
    .local v66, mAuth2:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v66

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v66

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 985
    .end local v66           #mAuth2:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 987
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v68, v3

    check-cast v68, [B

    .line 988
    .local v68, nafid:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x91

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-interface {v3, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 992
    .end local v68           #nafid:[B
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 994
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    .line 997
    .local v67, mParam:Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/ims/ISIMFileHandler;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 998
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "FileHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1001
    monitor-enter v76

    .line 1002
    :try_start_17
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1003
    monitor-exit v76

    goto/16 :goto_0

    :catchall_17
    move-exception v3

    monitor-exit v76
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v3

    .line 1005
    :cond_2e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/ims/ISIMFileHandler;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v67

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/ims/ISIMFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1013
    :cond_2f
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/ims/ISIMFileHandler;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v67

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/ims/ISIMFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1026
    .end local v67           #mParam:Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1027
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1028
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1029
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_31

    .line 1030
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_1b
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_30

    .line 1036
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1040
    :cond_30
    monitor-enter v76

    .line 1041
    :try_start_18
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1042
    monitor-exit v76

    goto/16 :goto_0

    :catchall_18
    move-exception v3

    monitor-exit v76
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v3

    .line 1032
    :cond_31
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1b

    .line 1048
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1049
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Ljava/lang/Integer;

    .line 1050
    .local v85, type:Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x95

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1055
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v85           #type:Ljava/lang/Integer;
    :sswitch_32
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1057
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1058
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1059
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_32

    .line 1060
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1065
    :goto_1c
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-enter v76

    .line 1068
    :try_start_19
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1069
    monitor-exit v76

    goto/16 :goto_0

    :catchall_19
    move-exception v3

    monitor-exit v76
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw v3

    .line 1062
    :cond_32
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1c

    .line 1076
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1077
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xac

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1082
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1083
    .restart local v37       #ar:Landroid/os/AsyncResult;
    const/16 v76, 0x0

    .line 1084
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    if-eqz v37, :cond_33

    .line 1086
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1087
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v81, 0x0

    .line 1088
    .local v81, states:[Ljava/lang/String;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/RegStateResponse;

    if-eqz v3, :cond_34

    .line 1089
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RegStateResponse;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v81

    .line 1094
    :goto_1d
    move-object/from16 v0, v81

    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_35

    const/16 v3, 0xd

    aget-object v3, v81, v3

    if-eqz v3, :cond_35

    .line 1097
    :try_start_1a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1098
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getLTELastErrorCode"

    const/16 v5, 0xd

    aget-object v5, v81, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 1111
    .end local v81           #states:[Ljava/lang/String;
    :cond_33
    :goto_1e
    monitor-enter v76

    .line 1112
    :try_start_1b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1113
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1a
    move-exception v3

    monitor-exit v76
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    throw v3

    .line 1092
    .restart local v81       #states:[Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v81, v3

    check-cast v81, [Ljava/lang/String;

    goto :goto_1d

    .line 1100
    :catch_0
    move-exception v56

    .line 1101
    .local v56, ex:Ljava/lang/NumberFormatException;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: error parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1105
    .end local v56           #ex:Ljava/lang/NumberFormatException;
    :cond_35
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: expected 14 or more strings and got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1117
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v81           #states:[Ljava/lang/String;
    :sswitch_35
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1118
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/Bundle;

    .line 1120
    .local v46, bundle_smart:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x6af

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->SetCdmaSmartNetwork(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1124
    .end local v46           #bundle_smart:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1125
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1126
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_36

    .line 1127
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1129
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setCdmaSmartNetwork"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1152
    :goto_1f
    monitor-enter v76

    .line 1153
    :try_start_1c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1154
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1b
    move-exception v3

    monitor-exit v76
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1b

    throw v3

    .line 1133
    :cond_36
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1135
    .local v78, result:[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1136
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setCdmaSmartNetwork"

    const/4 v4, 0x0

    aget v4, v78, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_37

    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_37
    const/4 v4, 0x0

    goto :goto_20

    .line 1158
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->GetSmartNetworkStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1162
    :sswitch_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1163
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1164
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_38

    .line 1165
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1167
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSmartNetworkStatus"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1176
    :goto_21
    monitor-enter v76

    .line 1177
    :try_start_1d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1178
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1c
    move-exception v3

    monitor-exit v76
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    throw v3

    .line 1171
    :cond_38
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1173
    .restart local v78       #result:[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1174
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getCdmaSmartNetworkStatus"

    const/4 v4, 0x0

    aget v4, v78, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_39

    const/4 v4, 0x1

    :goto_22
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_21

    :cond_39
    const/4 v4, 0x0

    goto :goto_22

    .line 1183
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordSize(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1191
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1192
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1193
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3a

    .line 1194
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1196
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1212
    :goto_23
    monitor-enter v76

    .line 1213
    :try_start_1e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1214
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1d
    move-exception v3

    monitor-exit v76
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1d

    throw v3

    .line 1200
    :cond_3a
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1201
    .restart local v78       #result:[I
    if-eqz v78, :cond_3b

    move-object/from16 v0, v78

    array-length v3, v0

    if-eqz v3, :cond_3b

    .line 1209
    :cond_3b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1210
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    aget v5, v78, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_23

    .line 1217
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1218
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Bundle;

    .line 1220
    .local v47, bundle_sys_record:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "arg2"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6b5

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordContent(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1226
    .end local v47           #bundle_sys_record:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1227
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1228
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3c

    .line 1229
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1231
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1265
    :goto_24
    monitor-enter v76

    .line 1266
    :try_start_1f
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1267
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1e
    move-exception v3

    monitor-exit v76
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1e

    throw v3

    .line 1235
    :cond_3c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1238
    :try_start_20
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v77, v0

    .line 1240
    .local v77, response:[Ljava/lang/Object;
    move-object/from16 v0, v77

    array-length v3, v0

    move-object/from16 v0, v77

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v52

    .line 1241
    .local v52, copy:[Ljava/lang/Object;
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v79, v0

    .line 1242
    .local v79, sid_array:[I
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v69, v0

    .line 1243
    .local v69, nid_array:[I
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v44, v0

    .line 1244
    .local v44, bsid_array:[I
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_25
    move-object/from16 v0, v52

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_3d

    .line 1246
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1247
    .local v57, field:Ljava/lang/reflect/Field;
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v79, v60

    .line 1248
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1249
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v69, v60

    .line 1250
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "bsid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1251
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v44, v60

    .line 1244
    add-int/lit8 v60, v60, 0x1

    goto :goto_25

    .line 1254
    .end local v57           #field:Ljava/lang/reflect/Field;
    :cond_3d
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    move-object/from16 v0, v77

    array-length v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_sid"

    move-object/from16 v0, v79

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1256
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_nid"

    move-object/from16 v0, v69

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1257
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_bsid"

    move-object/from16 v0, v44

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_24

    .line 1259
    .end local v44           #bsid_array:[I
    .end local v52           #copy:[Ljava/lang/Object;
    .end local v60           #i:I
    .end local v69           #nid_array:[I
    .end local v77           #response:[Ljava/lang/Object;
    .end local v79           #sid_array:[I
    :catch_1
    move-exception v54

    .line 1261
    .local v54, e:Ljava/lang/Exception;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1262
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_24

    .line 1271
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v54           #e:Ljava/lang/Exception;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->clearCdmaSysRecordContent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1277
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1278
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1279
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1280
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3e

    .line 1281
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1286
    :goto_26
    monitor-enter v76

    .line 1287
    :try_start_21
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1288
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1f
    move-exception v3

    monitor-exit v76
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1f

    throw v3

    .line 1285
    :cond_3e
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_26

    .line 1295
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1297
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x99

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestClearLocProcessDB(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1301
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_40
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1303
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1304
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3f

    .line 1305
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_3f
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_40

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_27
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1308
    monitor-enter v76

    .line 1309
    :try_start_22
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1310
    monitor-exit v76

    goto/16 :goto_0

    :catchall_20
    move-exception v3

    monitor-exit v76
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_20

    throw v3

    .line 1307
    :cond_40
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_27

    .line 1313
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_41
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1315
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/os/Bundle;

    .line 1316
    .local v45, bundle:Landroid/os/Bundle;
    const-string v3, "index"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1317
    .local v13, index:I
    const-string v3, "rat"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1318
    .local v14, rat:I
    const-string v3, "sid"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1319
    .local v15, sid:I
    const-string v3, "nid"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1320
    .local v16, nid:I
    const-string v3, "base_id"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1321
    .local v17, base_id:I
    const-string v3, "pilot_pn"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1322
    .local v18, pilot_pn:I
    const-string v3, "neighbor_pilot_list"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    .line 1324
    .local v19, neighbor_pilot_list:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " base_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pilot_pn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v12 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLocProcessDB(IIIIII[ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1331
    .end local v13           #index:I
    .end local v14           #rat:I
    .end local v15           #sid:I
    .end local v16           #nid:I
    .end local v17           #base_id:I
    .end local v18           #pilot_pn:I
    .end local v19           #neighbor_pilot_list:[I
    .end local v45           #bundle:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_42
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1333
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1334
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    .line 1335
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_41
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_42

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1338
    monitor-enter v76

    .line 1339
    :try_start_23
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1340
    monitor-exit v76

    goto/16 :goto_0

    :catchall_21
    move-exception v3

    monitor-exit v76
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_21

    throw v3

    .line 1337
    :cond_42
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28

    .line 1343
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_43
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1345
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x9d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetCurrentLoc(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1348
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_44
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1350
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1351
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1352
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1353
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1358
    :goto_29
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_43

    .line 1359
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1362
    :cond_43
    monitor-enter v76

    .line 1363
    :try_start_24
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1364
    monitor-exit v76

    goto/16 :goto_0

    :catchall_22
    move-exception v3

    monitor-exit v76
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_22

    throw v3

    .line 1355
    :cond_44
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1367
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_45
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1369
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v64, Landroid/os/Bundle;

    invoke-direct/range {v64 .. v64}, Landroid/os/Bundle;-><init>()V

    .line 1370
    .local v64, localbundle:Landroid/os/Bundle;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    move-object/from16 v38, v3

    check-cast v38, [Ljava/lang/Integer;

    .line 1371
    .local v38, arg:[Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v55, v38, v3

    .line 1372
    .local v55, enable:Ljava/lang/Integer;
    const/4 v3, 0x1

    aget-object v70, v38, v3

    .line 1373
    .local v70, num_neighbor_pilot:Ljava/lang/Integer;
    const/4 v3, 0x2

    aget-object v71, v38, v3

    .line 1374
    .local v71, num_record:Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v84, v38, v3

    .line 1376
    .local v84, time:Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_neighbor_pilot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v84 .. v84}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->requestConfigLocProcessDB(IIIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1383
    .end local v38           #arg:[Ljava/lang/Integer;
    .end local v55           #enable:Ljava/lang/Integer;
    .end local v64           #localbundle:Landroid/os/Bundle;
    .end local v70           #num_neighbor_pilot:Ljava/lang/Integer;
    .end local v71           #num_record:Ljava/lang/Integer;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v84           #time:Ljava/lang/Integer;
    :sswitch_46
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1385
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1386
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_45

    .line 1387
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_45
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_46

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2a
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1390
    monitor-enter v76

    .line 1391
    :try_start_25
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    monitor-exit v76

    goto/16 :goto_0

    :catchall_23
    move-exception v3

    monitor-exit v76
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_23

    throw v3

    .line 1389
    :cond_46
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2a

    .line 1397
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_47
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIMAX_NAI"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xa1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetWimaxNai(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1402
    :sswitch_48
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1404
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1405
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1406
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_49

    .line 1407
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 1408
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2b
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_47

    .line 1410
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    add-int/lit8 v60, v60, 0x1

    goto :goto_2b

    .line 1412
    :cond_47
    move-object/from16 v0, v82

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1416
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_2c
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_48

    .line 1417
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1420
    :cond_48
    monitor-enter v76

    .line 1421
    :try_start_26
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    monitor-exit v76

    goto/16 :goto_0

    :catchall_24
    move-exception v3

    monitor-exit v76
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_24

    throw v3

    .line 1414
    :cond_49
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1428
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1429
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIFI_DRX_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xae

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDrxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1434
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIFI_DRX_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1436
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1437
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1438
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4c

    .line 1439
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v63, v3

    check-cast v63, [I

    .line 1440
    .local v63, intArr:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2d
    move-object/from16 v0, v63

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_4a

    .line 1442
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v63, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    add-int/lit8 v60, v60, 0x1

    goto :goto_2d

    .line 1444
    :cond_4a
    move-object/from16 v0, v63

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1448
    .end local v60           #i:I
    .end local v63           #intArr:[I
    :goto_2e
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4b

    .line 1449
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1452
    :cond_4b
    monitor-enter v76

    .line 1453
    :try_start_27
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1454
    monitor-exit v76

    goto/16 :goto_0

    :catchall_25
    move-exception v3

    monitor-exit v76
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_25

    throw v3

    .line 1446
    :cond_4c
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1459
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1460
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_POWER_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xb2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPowerInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1465
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_POWER_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1467
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1468
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1469
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4f

    .line 1470
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v63, v3

    check-cast v63, [I

    .line 1471
    .restart local v63       #intArr:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2f
    move-object/from16 v0, v63

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_4d

    .line 1473
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v63, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    add-int/lit8 v60, v60, 0x1

    goto :goto_2f

    .line 1475
    :cond_4d
    move-object/from16 v0, v63

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1479
    .end local v60           #i:I
    .end local v63           #intArr:[I
    :goto_30
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4e

    .line 1480
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1483
    :cond_4e
    monitor-enter v76

    .line 1484
    :try_start_28
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1485
    monitor-exit v76

    goto/16 :goto_0

    :catchall_26
    move-exception v3

    monitor-exit v76
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    throw v3

    .line 1477
    :cond_4f
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1488
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1489
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_50

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1492
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v29

    .line 1496
    .local v29, IMEI:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEI xxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1499
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEI"

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    monitor-enter v76

    .line 1501
    :try_start_29
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1502
    monitor-exit v76

    goto/16 :goto_0

    :catchall_27
    move-exception v3

    monitor-exit v76
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_27

    throw v3

    .line 1505
    .end local v29           #IMEI:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1506
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_51

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1509
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImeiSv()Ljava/lang/String;

    move-result-object v30

    .line 1513
    .local v30, IMEISV:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEISV xxxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1516
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEISV"

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    monitor-enter v76

    .line 1518
    :try_start_2a
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1519
    monitor-exit v76

    goto/16 :goto_0

    :catchall_28
    move-exception v3

    monitor-exit v76
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_28

    throw v3

    .line 1522
    .end local v30           #IMEISV:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1525
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_52

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1528
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v31

    .line 1530
    .local v31, MEID:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MEID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1532
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getMEID"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    monitor-enter v76

    .line 1534
    :try_start_2b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1535
    monitor-exit v76

    goto/16 :goto_0

    :catchall_29
    move-exception v3

    monitor-exit v76
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_29

    throw v3

    .line 1538
    .end local v31           #MEID:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1539
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_53

    .line 1540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1542
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v33

    .line 1543
    .local v33, PRI:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1545
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRI"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    monitor-enter v76

    .line 1547
    :try_start_2c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1548
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2a
    move-exception v3

    monitor-exit v76
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2a

    throw v3

    .line 1551
    .end local v33           #PRI:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1552
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v34

    .line 1553
    .local v34, PRL:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1555
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRL"

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    monitor-enter v76

    .line 1557
    :try_start_2d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1558
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2b
    move-exception v3

    monitor-exit v76
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2b

    throw v3

    .line 1561
    .end local v34           #PRL:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1562
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v32

    .line 1563
    .local v32, MIN:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_CDMAMIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1565
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCDMAMIN"

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    monitor-enter v76

    .line 1567
    :try_start_2e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1568
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2c
    move-exception v3

    monitor-exit v76
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2c

    throw v3

    .line 1571
    .end local v32           #MIN:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1572
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v28

    .line 1573
    .local v28, ICCSN:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_ICCSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1575
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getICCSN"

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    monitor-enter v76

    .line 1577
    :try_start_2f
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1578
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2d
    move-exception v3

    monitor-exit v76
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2d

    throw v3

    .line 1584
    .end local v28           #ICCSN:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_54
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ba

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getAtrInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1589
    :sswitch_55
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1591
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1592
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1593
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_56

    .line 1594
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :goto_31
    monitor-enter v76

    .line 1602
    :try_start_30
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2e
    move-exception v3

    monitor-exit v76
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2e

    throw v3

    .line 1597
    :cond_56
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 1598
    .local v40, atrInfo:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_57
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    move-object/from16 v0, v40

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1609
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v40           #atrInfo:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1610
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v53, 0x0

    .line 1611
    .local v53, desiredPowerState:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_58

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v80

    .line 1614
    .local v80, sst:Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v80, :cond_58

    .line 1615
    invoke-virtual/range {v80 .. v80}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    .line 1618
    .end local v80           #sst:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_58
    const/16 v83, 0x0

    .line 1619
    .local v83, strDesiredPowerState:Ljava/lang/String;
    if-eqz v53, :cond_59

    .line 1620
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1622
    :cond_59
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1624
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "DesiredPowerState"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    monitor-enter v76

    .line 1626
    :try_start_31
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2f
    move-exception v3

    monitor-exit v76
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2f

    throw v3

    .line 1630
    .end local v53           #desiredPowerState:Ljava/lang/Boolean;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v83           #strDesiredPowerState:Ljava/lang/String;
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1631
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1634
    :cond_5a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getAccountInfos()[Landroid/os/Parcelable;

    move-result-object v35

    .line 1643
    .local v35, accInfos:[Landroid/os/Parcelable;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "AccountInfos"

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1644
    monitor-enter v76

    .line 1645
    :try_start_32
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1646
    monitor-exit v76

    goto/16 :goto_0

    :catchall_30
    move-exception v3

    monitor-exit v76
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_30

    throw v3

    .line 1651
    .end local v35           #accInfos:[Landroid/os/Parcelable;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6bf

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1654
    :sswitch_59
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1656
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1657
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1658
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5c

    .line 1659
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :goto_32
    monitor-enter v76

    .line 1667
    :try_start_33
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1668
    monitor-exit v76

    goto/16 :goto_0

    :catchall_31
    move-exception v3

    monitor-exit v76
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_31

    throw v3

    .line 1662
    :cond_5c
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 1663
    .local v26, Enable:I
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_32

    .line 1671
    .end local v26           #Enable:I
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1672
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 1673
    .local v27, Gpsarg:Landroid/os/Bundle;
    const-string v3, "gps"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v58

    .line 1674
    .local v58, gpsOneMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6c1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v58

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetGPSOneMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1677
    .end local v27           #Gpsarg:Landroid/os/Bundle;
    .end local v58           #gpsOneMode:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5b
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5d

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1679
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1680
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1681
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5e

    .line 1682
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_5e
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    monitor-enter v76

    .line 1686
    :try_start_34
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1687
    monitor-exit v76

    goto/16 :goto_0

    :catchall_32
    move-exception v3

    monitor-exit v76
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_32

    throw v3

    .line 1692
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1693
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1694
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaVoiceCampedOperator"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #calls: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1695
    monitor-enter v76

    .line 1696
    :try_start_35
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1697
    monitor-exit v76

    goto/16 :goto_0

    :catchall_33
    move-exception v3

    monitor-exit v76
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_33

    throw v3

    .line 1702
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1703
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1704
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaSfEuimid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #calls: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaSfEuimid()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    monitor-enter v76

    .line 1706
    :try_start_36
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1707
    monitor-exit v76

    goto/16 :goto_0

    :catchall_34
    move-exception v3

    monitor-exit v76
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_34

    throw v3

    .line 1712
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1713
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1714
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaCallFlashCode"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #calls: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaCallFlashCode()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1715
    monitor-enter v76

    .line 1716
    :try_start_37
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1717
    monitor-exit v76

    goto/16 :goto_0

    :catchall_35
    move-exception v3

    monitor-exit v76
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_35

    throw v3

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7b -> :sswitch_16
        0x7c -> :sswitch_17
        0x7d -> :sswitch_18
        0x7e -> :sswitch_19
        0x7f -> :sswitch_1a
        0x80 -> :sswitch_1b
        0x81 -> :sswitch_1c
        0x82 -> :sswitch_1d
        0x83 -> :sswitch_22
        0x84 -> :sswitch_23
        0x85 -> :sswitch_20
        0x86 -> :sswitch_21
        0x88 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_2a
        0x8b -> :sswitch_2b
        0x8c -> :sswitch_2c
        0x8d -> :sswitch_30
        0x8e -> :sswitch_2d
        0x8f -> :sswitch_30
        0x90 -> :sswitch_2e
        0x91 -> :sswitch_30
        0x92 -> :sswitch_2f
        0x93 -> :sswitch_30
        0x94 -> :sswitch_31
        0x95 -> :sswitch_32
        0x96 -> :sswitch_1e
        0x97 -> :sswitch_1f
        0x98 -> :sswitch_3f
        0x99 -> :sswitch_40
        0x9a -> :sswitch_41
        0x9b -> :sswitch_42
        0x9c -> :sswitch_43
        0x9d -> :sswitch_44
        0x9e -> :sswitch_45
        0x9f -> :sswitch_46
        0xa0 -> :sswitch_47
        0xa1 -> :sswitch_48
        0xab -> :sswitch_33
        0xac -> :sswitch_34
        0xad -> :sswitch_49
        0xae -> :sswitch_4a
        0xaf -> :sswitch_26
        0xb0 -> :sswitch_27
        0xb1 -> :sswitch_4b
        0xb2 -> :sswitch_4c
        0xb3 -> :sswitch_24
        0xb4 -> :sswitch_25
        0xc8 -> :sswitch_4d
        0xc9 -> :sswitch_4e
        0xca -> :sswitch_4f
        0xcb -> :sswitch_50
        0xcc -> :sswitch_51
        0xcd -> :sswitch_52
        0xce -> :sswitch_53
        0x6ae -> :sswitch_35
        0x6af -> :sswitch_36
        0x6b0 -> :sswitch_37
        0x6b1 -> :sswitch_38
        0x6b2 -> :sswitch_39
        0x6b3 -> :sswitch_3a
        0x6b4 -> :sswitch_3b
        0x6b5 -> :sswitch_3c
        0x6b6 -> :sswitch_3d
        0x6b7 -> :sswitch_3e
        0x6b9 -> :sswitch_54
        0x6ba -> :sswitch_55
        0x6bc -> :sswitch_56
        0x6bd -> :sswitch_57
        0x6be -> :sswitch_58
        0x6bf -> :sswitch_59
        0x6c0 -> :sswitch_5a
        0x6c1 -> :sswitch_5b
        0x6c2 -> :sswitch_5c
        0x6c3 -> :sswitch_5d
        0x6c4 -> :sswitch_5e
    .end sparse-switch
.end method
