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
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "http://trial.api.comm.miui.com"

    :goto_0
    sput-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

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

    :cond_0
    const-string v0, "http://api.comm.miui.com"

    goto :goto_0

    :cond_1
    const-string v0, "holiday.jsp"

    goto :goto_1

    :cond_2
    const-string v0, "mdb_pub.key"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentVersionCode(I)I
    .locals 11
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .local v6, versionName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, version:I
    packed-switch p0, :pswitch_data_0

    :goto_0
    if-eqz v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, versionFilePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x0

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

    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, versionStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v5

    .local v5, versionFromFile:I
    if-le v5, v3, :cond_0

    move v3, v5

    .end local v5           #versionFromFile:I
    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #versionFilePath:Ljava/lang/String;
    .end local v7           #versionStr:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    :pswitch_0
    const-string v6, "holidayversion"

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    const-string v6, "mdbversion"

    const/4 v3, 0x1

    goto :goto_0

    .restart local v1       #reader:Ljava/io/BufferedReader;
    .restart local v4       #versionFilePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    .end local v1           #reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_7
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_2
    :goto_7
    throw v8

    :catch_6
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "DataUpdateUtils"

    const-string v10, "read version error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v7       #versionStr:Ljava/lang/String;
    :catch_7
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "DataUpdateUtils"

    const-string v9, "read version error"

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #versionStr:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

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
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "/data/system/holidaydata"

    goto :goto_0

    :pswitch_1
    const-string v0, "/data/system/mdb_pub.key"

    goto :goto_0

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
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "/data/system/holidayversion"

    goto :goto_0

    :pswitch_1
    const-string v0, "/data/system/mdbversion"

    goto :goto_0

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
    const/4 v2, 0x0

    .local v2, versionName:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .local v3, writer:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

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

    .end local v1           #tmpFile:Ljava/io/File;
    :cond_1
    return-void

    :pswitch_0
    const-string v2, "holidayversion"

    goto :goto_0

    :pswitch_1
    const-string v2, "mdbversion"

    goto :goto_0

    .restart local v1       #tmpFile:Ljava/io/File;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v5, "DataUpdateUtils"

    const-string v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

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

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

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

    throw v5

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DataUpdateUtils"

    const-string v7, "write holiday version error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v5, "DataUpdateUtils"

    const-string v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DataUpdateUtils"

    const-string v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_5

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

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

    const/4 v1, 0x0

    .local v1, dataName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, dataUrl:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .local v6, out:Ljava/io/OutputStream;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v8, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6           #out:Ljava/io/OutputStream;
    .local v7, out:Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_1

    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    .local v3, e:Ljava/net/MalformedURLException;
    .restart local v6       #out:Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    const-string v10, "DataUpdateUtils"

    const-string v12, "url exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v3           #e:Ljava/net/MalformedURLException;
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

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

    :goto_6
    return v10

    :pswitch_0
    const-string v1, "holidaydata"

    sget-object v2, Lmiui/util/DataUpdateUtils;->HOLIDAY_URL:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "mdb_pub.key"

    sget-object v2, Lmiui/util/DataUpdateUtils;->MDB_URL:Ljava/lang/String;

    goto :goto_0

    .restart local v0       #buf:[B
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v8       #tmpFile:Ljava/io/File;
    .restart local v9       #url:Ljava/net/URL;
    :cond_3
    const/4 v10, 0x1

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_4
    :goto_7
    if-eqz v7, :cond_5

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

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

    .end local v0           #buf:[B
    .end local v5           #len:I
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    :goto_9
    :try_start_7
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_a
    if-eqz v6, :cond_7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

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

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_c
    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_d
    if-eqz v6, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

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

    throw v10

    :catch_2
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .local v3, e:Ljava/net/MalformedURLException;
    :catch_4
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_6
    move-exception v3

    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_7
    move-exception v3

    const-string v10, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_8
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "DataUpdateUtils"

    const-string v12, "io exception"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .end local v0           #buf:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_c

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto/16 :goto_9

    .end local v9           #url:Ljava/net/URL;
    :catch_b
    move-exception v3

    goto/16 :goto_2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
