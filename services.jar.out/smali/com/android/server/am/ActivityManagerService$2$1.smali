.class Lcom/android/server/am/ActivityManagerService$2$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 1444
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: begin"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$2$1;->getPriority()I

    move-result v28

    .line 1447
    .local v28, nPrevPriority:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$2$1;->setPriority(I)V

    .line 1450
    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1451
    .local v23, dropBuilder:Ljava/lang/StringBuilder;
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1452
    .local v27, logBuilder:Ljava/lang/StringBuilder;
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 1453
    .local v32, oomSw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1454
    .local v4, oomPw:Ljava/io/PrintWriter;
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 1455
    .local v21, catSw:Ljava/io/StringWriter;
    new-instance v8, Ljava/io/PrintWriter;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1456
    .local v8, catPw:Ljava/io/PrintWriter;
    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/String;

    .line 1457
    .local v6, emptyArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1458
    .local v9, tag:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1459
    .local v10, stack:Ljava/lang/StringBuilder;
    const-string v2, "Low on memory -- "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const-string v5, "  "

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1462
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1463
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1464
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1466
    .local v31, oomString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const/16 v33, 0x0

    .line 1472
    .local v33, proc:Ljava/lang/Process;
    :try_start_0
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Start procrank for memory report"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "procrank"

    aput-object v7, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v33

    .line 1475
    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1477
    .local v22, converter:Ljava/io/InputStreamReader;
    new-instance v25, Ljava/io/BufferedReader;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1480
    .local v25, in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 1481
    .local v26, line:Ljava/lang/String;
    if-nez v26, :cond_1

    .line 1491
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1497
    if-eqz v33, :cond_6

    .line 1498
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->destroy()V

    .line 1499
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank has been destroyed"

    .end local v22           #converter:Ljava/io/InputStreamReader;
    .end local v25           #in:Ljava/io/BufferedReader;
    .end local v26           #line:Ljava/lang/String;
    :goto_1
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;->setPriority(I)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1510
    :try_start_1
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Z

    .line 1512
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/ActivityManagerService;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z

    .line 1514
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z

    .line 1516
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1517
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v12, "lowmem"

    const/4 v13, 0x0

    const-string v14, "system_server"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1520
    const-string v2, "ActivityManager"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1522
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    .line 1523
    .local v29, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, v2, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v2, v11, v29

    if-gez v2, :cond_0

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v29

    iput-wide v0, v2, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1526
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1527
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: end"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1484
    .end local v29           #now:J
    .restart local v22       #converter:Ljava/io/InputStreamReader;
    .restart local v25       #in:Ljava/io/BufferedReader;
    .restart local v26       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1485
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const/16 v2, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1492
    .end local v22           #converter:Ljava/io/InputStreamReader;
    .end local v25           #in:Ljava/io/BufferedReader;
    .end local v26           #line:Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 1493
    .local v24, e:Ljava/io/IOException;
    :try_start_4
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: I/O exception"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1497
    if-eqz v33, :cond_4

    .line 1498
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->destroy()V

    .line 1499
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank has been destroyed"

    goto/16 :goto_1

    .line 1494
    .end local v24           #e:Ljava/io/IOException;
    :catch_1
    move-exception v24

    .line 1495
    .local v24, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Unhandled exception"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1497
    if-eqz v33, :cond_5

    .line 1498
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->destroy()V

    .line 1499
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank has been destroyed"

    goto/16 :goto_1

    .line 1497
    .end local v24           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v33, :cond_3

    .line 1498
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->destroy()V

    .line 1499
    const-string v3, "ActivityManager"

    const-string v5, "MemUsageReport: Process procrank has been destroyed"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :goto_3
    throw v2

    .line 1516
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 1526
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 1501
    :cond_3
    const-string v3, "ActivityManager"

    const-string v5, "MemUsageReport: Process procrank wasn\'t created successfully!"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .local v24, e:Ljava/io/IOException;
    :cond_4
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank wasn\'t created successfully!"

    .end local v24           #e:Ljava/io/IOException;
    :goto_4
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .local v24, e:Ljava/lang/Exception;
    :cond_5
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank wasn\'t created successfully!"

    goto :goto_4

    .end local v24           #e:Ljava/lang/Exception;
    .restart local v22       #converter:Ljava/io/InputStreamReader;
    .restart local v25       #in:Ljava/io/BufferedReader;
    .restart local v26       #line:Ljava/lang/String;
    :cond_6
    const-string v2, "ActivityManager"

    const-string v3, "MemUsageReport: Process procrank wasn\'t created successfully!"

    goto :goto_4
.end method
