.class public Lmiui/util/DataUpdateUtils;
.super Ljava/lang/Object;
.source "DataUpdateUtils.java"


# static fields
.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "data-update"

.field private static final BASE_URL:Ljava/lang/String; = null

.field private static final DATA_SYSTEM_PATH:Ljava/lang/String; = "/data/system/"

.field public static final DATA_UPDATE_RECEIVE:Ljava/lang/String; = "com.xiaomi.dataUpdate.RECEIVE"

.field public static final DATA_UPDATE_REGISTRATION:Ljava/lang/String; = "com.xiaomi.dataUpdate.REGISTRATION"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final EXTRA_WATER_MARK:Ljava/lang/String; = "water_mark"

.field private static final FORMAL_BASE_URL:Ljava/lang/String; = "http://api.comm.miui.com"

.field private static final HOLIDAY_DATA_NAME:Ljava/lang/String; = "holidaydata"

.field public static final HOLIDAY_TYPE:I = 0x0

.field private static final HOLIDAY_URL:Ljava/lang/String; = null

.field public static final HOLIDAY_VERSION_CODE:I = 0x1

.field private static final HOLIDAY_VERSION_NAME:Ljava/lang/String; = "holidayversion"

.field private static final LOG_TAG:Ljava/lang/String; = "DataUpdateUtils"

.field private static final MDB_DATA_NAME:Ljava/lang/String; = "mdb_pub.key"

.field public static final MDB_TYPE:I = 0x1

.field private static final MDB_URL:Ljava/lang/String; = null

.field public static final MDB_VERSION_CODE:I = 0x1

.field private static final MDB_VERSION_NAME:Ljava/lang/String; = "mdbversion"

.field public static final RECEIVER_META_DATA:Ljava/lang/String; = "com.xiaomi.dataUpdate"

.field private static final STAGING_BASE_URL:Ljava/lang/String; = "http://trial.api.comm.miui.com"

.field public static final URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "http://trial.api.comm.miui.com"

    :goto_0
    sput-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cspmisc/service/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->URL:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.comm.miui.com/holiday/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "exp_holiday.jsp"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->HOLIDAY_URL:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.comm.miui.com/mdb_pub/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "exp_mdb_pub.key"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->MDB_URL:Ljava/lang/String;

    return-void

    .line 29
    :cond_0
    const-string v0, "http://api.comm.miui.com"

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "holiday.jsp"

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "mdb_pub.key"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentVersionCode(I)I
    .locals 11
    .parameter "type"

    .prologue
    .line 191
    const/4 v6, 0x0

    .line 192
    .local v6, versionName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 193
    .local v3, version:I
    packed-switch p0, :pswitch_data_0

    .line 206
    :goto_0
    if-eqz v6, :cond_1

    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, versionFilePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 212
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, versionStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v5

    .line 215
    .local v5, versionFromFile:I
    if-le v5, v3, :cond_0

    .line 216
    move v3, v5

    .line 226
    .end local v5           #versionFromFile:I
    :cond_0
    if-eqz v2, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 236
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #versionFilePath:Ljava/lang/String;
    .end local v7           #versionStr:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 195
    :pswitch_0
    const-string v6, "holidayversion"

    .line 196
    const/4 v3, 0x1

    .line 197
    goto :goto_0

    .line 199
    :pswitch_1
    const-string v6, "mdbversion"

    .line 200
    const/4 v3, 0x1

    .line 201
    goto :goto_0

    .line 219
    .restart local v1       #reader:Ljava/io/BufferedReader;
    .restart local v4       #versionFilePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v1, :cond_1

    .line 228
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 229
    :catch_1
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    .end local v1           #reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 221
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 222
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    if-eqz v1, :cond_1

    .line 228
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 229
    :catch_3
    move-exception v0

    .line 230
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_7
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    if-eqz v1, :cond_1

    .line 228
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 229
    :catch_5
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v1, :cond_2

    .line 228
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 226
    :cond_2
    :goto_7
    throw v8

    .line 229
    :catch_6
    move-exception v0

    .line 230
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "DataUpdateUtils"

    const-string v10, "read version error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 229
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v7       #versionStr:Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 230
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #versionStr:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 223
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 221
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 219
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDataFilePath(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "/data/system/holidaydata"

    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "/data/system/mdb_pub.key"

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVersionFilePath(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    const-string v0, "/data/system/holidayversion"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "/data/system/mdbversion"

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setCurrentVersionCode(II)V
    .locals 9
    .parameter "type"
    .parameter "version"

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, versionName:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 169
    :goto_0
    if-eqz v2, :cond_1

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, writer:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v1, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 178
    if-eqz v4, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 185
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v4           #writer:Ljava/io/FileWriter;
    :goto_2
    invoke-static {v5, v6}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    .end local v1           #tmpFile:Ljava/io/File;
    :cond_1
    return-void

    .line 161
    :pswitch_0
    const-string v2, "holidayversion"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_1
    const-string v2, "mdbversion"

    goto :goto_0

    .line 175
    .restart local v1       #tmpFile:Ljava/io/File;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v5, "DataUpdateUtils"

    const-string/jumbo v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    if-eqz v3, :cond_2

    .line 180
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    :cond_2
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    .line 180
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 185
    :cond_3
    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    throw v5

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DataUpdateUtils"

    const-string/jumbo v7, "write holiday version error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 181
    :catch_2
    move-exception v0

    .line 182
    const-string v5, "DataUpdateUtils"

    const-string/jumbo v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 182
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DataUpdateUtils"

    const-string/jumbo v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_5

    .line 175
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateDataFile(I)Z
    .locals 14
    .parameter "type"

    .prologue
    const/4 v11, 0x0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, dataName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 106
    .local v2, dataUrl:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 118
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 121
    .local v6, out:Ljava/io/OutputStream;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v8, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 125
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v6           #out:Ljava/io/OutputStream;
    .local v7, out:Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .line 128
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_3

    .line 129
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_1

    .line 132
    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 133
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    .local v3, e:Ljava/net/MalformedURLException;
    .restart local v6       #out:Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    const-string v10, "DataUpdateUtils"

    const-string/jumbo v12, "url exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v4, :cond_0

    .line 139
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 144
    .end local v3           #e:Ljava/net/MalformedURLException;
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    .line 146
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 151
    :cond_1
    :goto_4
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-static {v10, v12}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v8           #tmpFile:Ljava/io/File;
    :cond_2
    move v10, v11

    .line 154
    :goto_6
    return v10

    .line 108
    :pswitch_0
    const-string v1, "holidaydata"

    .line 109
    sget-object v2, Lmiui/util/DataUpdateUtils;->HOLIDAY_URL:Ljava/lang/String;

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const-string v1, "mdb_pub.key"

    .line 113
    sget-object v2, Lmiui/util/DataUpdateUtils;->MDB_URL:Ljava/lang/String;

    goto :goto_0

    .line 131
    .restart local v0       #buf:[B
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v8       #tmpFile:Ljava/io/File;
    .restart local v9       #url:Ljava/net/URL;
    :cond_3
    const/4 v10, 0x1

    .line 137
    if-eqz v4, :cond_4

    .line 139
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 144
    :cond_4
    :goto_7
    if-eqz v7, :cond_5

    .line 146
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 151
    :cond_5
    :goto_8
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 134
    .end local v0           #buf:[B
    .end local v5           #len:I
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 135
    .local v3, e:Ljava/io/IOException;
    :goto_9
    :try_start_7
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 137
    if-eqz v4, :cond_6

    .line 139
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 144
    :cond_6
    :goto_a
    if-eqz v6, :cond_7

    .line 146
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 151
    :cond_7
    :goto_b
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 137
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_c
    if-eqz v4, :cond_8

    .line 139
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 144
    :cond_8
    :goto_d
    if-eqz v6, :cond_9

    .line 146
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 151
    :cond_9
    :goto_e
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    throw v10

    .line 140
    :catch_2
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 148
    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 140
    .local v3, e:Ljava/net/MalformedURLException;
    :catch_4
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/IOException;
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 148
    .restart local v3       #e:Ljava/io/IOException;
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 140
    :catch_6
    move-exception v3

    .line 141
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 147
    :catch_7
    move-exception v3

    .line 148
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 140
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_8
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 148
    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 137
    .end local v0           #buf:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_c

    .line 134
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto/16 :goto_9

    .line 132
    .end local v9           #url:Ljava/net/URL;
    :catch_b
    move-exception v3

    goto/16 :goto_2

    .line 106
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
