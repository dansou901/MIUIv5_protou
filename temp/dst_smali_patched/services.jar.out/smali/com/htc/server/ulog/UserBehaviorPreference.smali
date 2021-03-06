.class final Lcom/htc/server/ulog/UserBehaviorPreference;
.super Ljava/lang/Object;
.source "UserBehaviorPreference.java"


# static fields
.field private static KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String; = null

.field private static KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String; = null

.field private static KEY_UIMODE_OF_TELLHTC:Ljava/lang/String; = null

.field private static final PROPERTY_FILE_NAME:Ljava/lang/String; = "/data/system/userbehavior.xml"

.field private static sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;


# instance fields
.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LastTimeOfUpload"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    const-string v0, "FirstUpdateTimeOfSIE"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    const-string v0, "UiModeOfTellHtc"

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, b:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;
    .locals 2

    .prologue
    const-class v1, Lcom/htc/server/ulog/UserBehaviorPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/server/ulog/UserBehaviorPreference;

    invoke-direct {v0}, Lcom/htc/server/ulog/UserBehaviorPreference;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;

    :cond_0
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->sPreference:Lcom/htc/server/ulog/UserBehaviorPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "value"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .local v1, l:Ljava/lang/Long;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .end local v1           #l:Ljava/lang/Long;
    :goto_1
    return-wide v2

    .restart local v1       #l:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #l:Ljava/lang/Long;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProperty] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readProperty()Ljava/util/Properties;
    .locals 6

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/userbehavior.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .local v4, p:Ljava/util/Properties;
    const/4 v2, 0x0

    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_1
    :goto_1
    return-object v4

    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setProperty] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorPreference;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->writeProperty(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static writeProperty(Ljava/util/Properties;)V
    .locals 4
    .parameter "prop"

    .prologue
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/userbehavior.xml"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v3

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getFirstUpdateTimeOfSIE()J
    .locals 3

    .prologue
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTimeOfUpload()J
    .locals 3

    .prologue
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getTellHtcUiMode()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v1, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public setFirstUpdateTimeOfSIE(J)V
    .locals 2
    .parameter "time"

    .prologue
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_FIRST_UPDATE_TIME_OF_SIE:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastTimeOfUpload(J)V
    .locals 2
    .parameter "time"

    .prologue
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_LAST_TIME_OF_UPLOAD:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTellHtcUiMode(Ljava/lang/String;)V
    .locals 2
    .parameter "uiMode"

    .prologue
    const-string v0, ""

    invoke-virtual {p0}, Lcom/htc/server/ulog/UserBehaviorPreference;->getTellHtcUiMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/server/ulog/UserBehaviorPreference;->KEY_UIMODE_OF_TELLHTC:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
