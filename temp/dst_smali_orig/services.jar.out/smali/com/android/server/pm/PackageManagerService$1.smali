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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .local v28, startTime:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .local v12, CPUcores:I
    const-string v3, "debug.prefetchthread"

    invoke-static {v3, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, threads:I
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v8, sysAppDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .local v9, sysAppList:[Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v6, v9

    .local v6, SIZE:I
    :goto_0
    if-gtz v6, :cond_0

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system app list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, separateProcesses:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, _mDefParseFlags:I
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "*"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v13, 0x8

    const/4 v10, 0x0

    .local v10, _mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "PackageManager"

    const-string v4, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    or-int/lit8 v11, v13, 0x41

    .local v11, parseFlags:I
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Pre Parse Dir:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v33, ", threads:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v3, 0x1

    if-le v7, v3, :cond_6

    const/16 v16, 0x1

    .local v16, index:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v7, :cond_6

    move/from16 v5, v16

    .local v5, tindex:I
    new-instance v26, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v26, secondary:Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparse_thread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v3, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v5           #tindex:I
    .end local v6           #SIZE:I
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    .end local v11           #parseFlags:I
    .end local v13           #_mDefParseFlags:I
    .end local v16           #index:I
    .end local v26           #secondary:Ljava/lang/Thread;
    .end local v27           #separateProcesses:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v6       #SIZE:I
    .restart local v13       #_mDefParseFlags:I
    .restart local v27       #separateProcesses:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    const-string v3, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Running with debug.separate_processes: "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    const/4 v10, 0x0

    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    goto/16 :goto_1

    .restart local v11       #parseFlags:I
    :cond_6
    const/16 v25, 0x0

    .local v25, scanPath:Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v30, sysFrameDir:Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v31

    .local v31, sysFrameList:[Ljava/lang/String;
    if-eqz v31, :cond_8

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    .local v32, sysFrame_SIZE:I
    :goto_3
    const/4 v15, 0x0

    .local v15, i:I
    if-lez v32, :cond_d

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v32

    if-ge v15, v0, :cond_a

    aget-object v3, v31, v15

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .end local v15           #i:I
    .end local v32           #sysFrame_SIZE:I
    :cond_8
    const/16 v32, 0x0

    goto :goto_3

    .restart local v15       #i:I
    .restart local v32       #sysFrame_SIZE:I
    :cond_9
    :try_start_0
    new-instance v24, Ljava/io/File;

    aget-object v3, v31, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v24, scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .local v19, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .local v18, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_c

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_0
    move-exception v14

    .local v14, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14           #e:Ljava/lang/Exception;
    :cond_a
    :goto_6
    const/4 v15, 0x0

    add-int/lit8 v15, v7, -0x1

    :goto_7
    if-ge v15, v6, :cond_f

    :try_start_1
    new-instance v24, Ljava/io/File;

    aget-object v3, v9, v15

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v24       #scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_e

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_b

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_8
    add-int/2addr v15, v7

    goto :goto_7

    :cond_c
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :cond_d
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_a

    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system framework list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    .restart local v24       #scanFile:Ljava/io/File;
    :cond_e
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_1
    move-exception v14

    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "preload"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v20, preloadAPDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v21

    .local v21, preloadAPList:[Ljava/lang/String;
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .local v22, preloadAP_SIZE:I
    :goto_9
    if-lez v22, :cond_14

    const/4 v15, 0x0

    or-int/lit16 v0, v13, 0x180

    move/from16 v17, v0

    .local v17, parseFlags_preload:I
    const/4 v15, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    :try_start_4
    new-instance v24, Ljava/io/File;

    aget-object v3, v21, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v24       #scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v3, 0x0

    or-int/lit8 v4, v17, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_12

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_10

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .end local v17           #parseFlags_preload:I
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v22           #preloadAP_SIZE:I
    .end local v24           #scanFile:Ljava/io/File;
    :cond_11
    const/16 v22, 0x0

    goto :goto_9

    .restart local v17       #parseFlags_preload:I
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    .restart local v22       #preloadAP_SIZE:I
    .restart local v24       #scanFile:Ljava/io/File;
    :cond_12
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_2
    move-exception v14

    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14           #e:Ljava/lang/Exception;
    .end local v17           #parseFlags_preload:I
    :cond_13
    :goto_c
    return-void

    :cond_14
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_15

    const-string v3, "PackageManager"

    const-string v4, "preParse data/preload folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const/16 v23, 0x64

    .local v23, retry:I
    :goto_d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_17

    if-lez v23, :cond_17

    rem-int/lit8 v3, v23, 0x4

    if-nez v3, :cond_16

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_16

    const-string v3, "PackageManager"

    const-string v4, "Waiting preparse thread finish 50ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_13

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "preParsing package time: "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    sub-long v33, v33, v28

    move-wide/from16 v0, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_18
    const-wide/16 v3, 0x32

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v23, v23, -0x1

    goto :goto_d

    :catch_3
    move-exception v14

    .restart local v14       #e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
