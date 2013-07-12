.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->preParsing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    .line 477
    .local v29, startTime:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .line 478
    .local v12, CPUcores:I
    const-string v3, "debug.prefetchthread"

    invoke-static {v3, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 479
    .local v7, threads:I
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v8, sysAppDir:Ljava/io/File;
    new-instance v15, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;)V

    .line 485
    .local v15, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v8, v15}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, sysAppList:[Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v6, v9

    .line 487
    .local v6, SIZE:I
    :goto_0
    if-gtz v6, :cond_0

    .line 488
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 489
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system app list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 492
    .local v28, separateProcesses:Ljava/lang/String;
    const/4 v13, 0x0

    .line 494
    .local v13, _mDefParseFlags:I
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 495
    const-string v3, "*"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    const/16 v13, 0x8

    .line 497
    const/4 v10, 0x0

    .line 498
    .local v10, _mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 499
    const-string v3, "PackageManager"

    const-string v4, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    :goto_1
    or-int/lit8 v11, v13, 0x41

    .line 514
    .local v11, parseFlags:I
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    .line 515
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pre Parse Dir:"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v34, ", threads:"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 517
    const/4 v3, 0x1

    if-le v7, v3, :cond_6

    .line 518
    const/16 v17, 0x1

    .line 520
    .local v17, index:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v7, :cond_6

    .line 521
    move/from16 v5, v17

    .line 523
    .local v5, tindex:I
    new-instance v27, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$1$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$1$2;-><init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 555
    .local v27, secondary:Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparse_thread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 556
    const/16 v3, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 557
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->start()V

    .line 558
    add-int/lit8 v17, v17, 0x1

    .line 559
    goto :goto_2

    .line 486
    .end local v5           #tindex:I
    .end local v6           #SIZE:I
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    .end local v11           #parseFlags:I
    .end local v13           #_mDefParseFlags:I
    .end local v17           #index:I
    .end local v27           #secondary:Ljava/lang/Thread;
    .end local v28           #separateProcesses:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 501
    .restart local v6       #SIZE:I
    .restart local v13       #_mDefParseFlags:I
    .restart local v28       #separateProcesses:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    .line 502
    const-string v3, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 503
    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 504
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Running with debug.separate_processes: "

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 508
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 509
    const/4 v10, 0x0

    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    goto/16 :goto_1

    .line 563
    .restart local v11       #parseFlags:I
    :cond_6
    const/16 v26, 0x0

    .line 566
    .local v26, scanPath:Ljava/lang/String;
    new-instance v31, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 567
    .local v31, sysFrameDir:Ljava/io/File;
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v32

    .line 568
    .local v32, sysFrameList:[Ljava/lang/String;
    if-eqz v32, :cond_8

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    .line 569
    .local v33, sysFrame_SIZE:I
    :goto_3
    const/16 v16, 0x0

    .line 570
    .local v16, i:I
    if-lez v33, :cond_d

    .line 571
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 572
    aget-object v3, v32, v16

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 571
    :cond_7
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 568
    .end local v16           #i:I
    .end local v33           #sysFrame_SIZE:I
    :cond_8
    const/16 v33, 0x0

    goto :goto_3

    .line 576
    .restart local v16       #i:I
    .restart local v33       #sysFrame_SIZE:I
    :cond_9
    :try_start_0
    new-instance v25, Ljava/io/File;

    aget-object v3, v32, v16

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    .local v25, scanFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 578
    new-instance v20, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 579
    .local v20, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 580
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 583
    .local v19, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_c

    .line 584
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 585
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 589
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #pp:Landroid/content/pm/PackageParser;
    .end local v25           #scanFile:Ljava/io/File;
    :catch_0
    move-exception v14

    .line 590
    .local v14, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 591
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v14           #e:Ljava/lang/Exception;
    :cond_a
    :goto_6
    const/16 v16, 0x0

    .line 602
    add-int/lit8 v16, v7, -0x1

    :goto_7
    move/from16 v0, v16

    if-ge v0, v6, :cond_f

    .line 604
    :try_start_1
    new-instance v25, Ljava/io/File;

    aget-object v3, v9, v16

    move-object/from16 v0, v25

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    .restart local v25       #scanFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 606
    new-instance v20, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 607
    .restart local v20       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 608
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 611
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_e

    .line 612
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_b

    .line 613
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    :cond_b
    :goto_8
    add-int v16, v16, v7

    goto :goto_7

    .line 588
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 596
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #pp:Landroid/content/pm/PackageParser;
    .end local v25           #scanFile:Ljava/io/File;
    :cond_d
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_a

    .line 597
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system framework list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 616
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v20       #pp:Landroid/content/pm/PackageParser;
    .restart local v25       #scanFile:Ljava/io/File;
    :cond_e
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 617
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #pp:Landroid/content/pm/PackageParser;
    .end local v25           #scanFile:Ljava/io/File;
    :catch_1
    move-exception v14

    .line 618
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 619
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "preload"

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 626
    .local v21, preloadAPDir:Ljava/io/File;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v22

    .line 627
    .local v22, preloadAPList:[Ljava/lang/String;
    if-eqz v22, :cond_11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 628
    .local v23, preloadAP_SIZE:I
    :goto_9
    if-lez v23, :cond_14

    .line 629
    const/16 v16, 0x0

    .line 630
    or-int/lit16 v0, v13, 0x180

    move/from16 v18, v0

    .line 633
    .local v18, parseFlags_preload:I
    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 635
    :try_start_4
    new-instance v25, Ljava/io/File;

    aget-object v3, v22, v16

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    .restart local v25       #scanFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 637
    new-instance v20, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v20       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 639
    const/4 v3, 0x0

    or-int/lit8 v4, v18, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 642
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_12

    .line 643
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_10

    .line 644
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_10
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 627
    .end local v18           #parseFlags_preload:I
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #pp:Landroid/content/pm/PackageParser;
    .end local v23           #preloadAP_SIZE:I
    .end local v25           #scanFile:Ljava/io/File;
    :cond_11
    const/16 v23, 0x0

    goto :goto_9

    .line 647
    .restart local v18       #parseFlags_preload:I
    .restart local v19       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v20       #pp:Landroid/content/pm/PackageParser;
    .restart local v23       #preloadAP_SIZE:I
    .restart local v25       #scanFile:Ljava/io/File;
    :cond_12
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .line 648
    .end local v19           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #pp:Landroid/content/pm/PackageParser;
    .end local v25           #scanFile:Ljava/io/File;
    :catch_2
    move-exception v14

    .line 649
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 650
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v14           #e:Ljava/lang/Exception;
    .end local v18           #parseFlags_preload:I
    :cond_13
    :goto_c
    return-void

    .line 655
    :cond_14
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_15

    .line 656
    const-string v3, "PackageManager"

    const-string v4, "preParse data/preload folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_15
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 661
    const/16 v24, 0x64

    .line 662
    .local v24, retry:I
    :goto_d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_17

    if-lez v24, :cond_17

    .line 663
    rem-int/lit8 v3, v24, 0x4

    if-nez v3, :cond_16

    .line 664
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_16

    .line 665
    const-string v3, "PackageManager"

    const-string v4, "Waiting preparse thread finish 50ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_16
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 676
    :cond_17
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_13

    .line 677
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "preParsing package time: "

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v29

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 670
    :cond_18
    const-wide/16 v3, 0x32

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 671
    add-int/lit8 v24, v24, -0x1

    goto :goto_d

    .line 672
    :catch_3
    move-exception v14

    .line 673
    .restart local v14       #e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
