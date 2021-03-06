.class final Lcom/android/server/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPMSExtension$LogRecord;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/HtcPMSExtension;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method protected static getWakeLockFlagInfo(I)Ljava/lang/String;
    .locals 3
    .parameter "flags"

    .prologue
    .line 109
    const-string v0, ""

    .line 111
    .local v0, info:Ljava/lang/String;
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACQUIRE_CAUSES_WAKEUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    const/high16 v1, 0x2000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON_AFTER_RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_1
    return-object v0
.end method

.method protected static getWakeLockTypeInfo(II)Ljava/lang/String;
    .locals 2
    .parameter "flags"
    .parameter "LOCK_MASK"

    .prologue
    .line 71
    const-string v0, ""

    .line 73
    .local v0, info:Ljava/lang/String;
    and-int v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 105
    :goto_0
    return-object v0

    .line 75
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 76
    goto :goto_0

    .line 78
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 79
    goto :goto_0

    .line 81
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 82
    goto :goto_0

    .line 84
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 85
    goto :goto_0

    .line 87
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 88
    goto :goto_0

    .line 90
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    .line 91
    goto :goto_0

    .line 93
    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    .line 94
    goto :goto_0

    .line 96
    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    .line 97
    goto :goto_0

    .line 99
    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    .line 100
    goto :goto_0

    .line 102
    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method protected disableGC(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 189
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 193
    return-void
.end method

.method protected isAMOLED()Z
    .locals 6

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 199
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcPMSExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 200
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "hardware.LCD.AMOLED"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    const/4 v2, 0x1

    .line 209
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 210
    const-string v3, "HtcPMSExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAMOLED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 205
    const-string v3, "HtcPMSExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAMOLED: Exception caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .line 176
    .local v0, recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .end local v0           #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .restart local v0       #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeScreenState(Z)V
    .locals 12
    .parameter "on"

    .prologue
    .line 121
    const-string v1, "system"

    .line 122
    .local v1, SYSTEM_PATH:Ljava/lang/String;
    const-string v0, "screen_state"

    .line 124
    .local v0, SCREEN_FILE_NAME:Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 125
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const/4 v6, 0x0

    .line 129
    .local v6, out:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 132
    .local v4, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v8, systemDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "screen_state"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v3, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 136
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 140
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    .line 141
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: creating screen_state file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 144
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 145
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: screen_state created."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 150
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 152
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_6

    :try_start_2
    const-string v9, "1"

    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 164
    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x0

    .line 165
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v6, 0x0

    .line 169
    .end local v3           #file:Ljava/io/File;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v8           #systemDir:Ljava/io/File;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    .line 170
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " done."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5
    return-void

    .line 152
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :cond_6
    :try_start_5
    const-string v9, "0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 166
    :catch_0
    move-exception v9

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_3
    move-object v6, v7

    .line 167
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 154
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_7

    .line 156
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: could not write to file. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 165
    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v6, 0x0

    goto :goto_2

    .line 158
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 159
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_8
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_9

    .line 160
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: exception occurred. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    :cond_9
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 165
    :cond_a
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v6, 0x0

    goto :goto_2

    .line 163
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 164
    :goto_6
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 165
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v6, 0x0

    .line 166
    :cond_c
    :goto_7
    throw v9

    :catch_3
    move-exception v10

    goto :goto_7

    .line 163
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 166
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_2

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 166
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    .local v2, e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .line 154
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 166
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    goto/16 :goto_3

    :cond_d
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_e
    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method
