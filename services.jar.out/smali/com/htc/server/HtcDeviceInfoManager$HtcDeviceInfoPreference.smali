.class final Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HtcDeviceInfoPreference"
.end annotation


# static fields
.field private static KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String; = null

.field private static KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String; = null

.field private static KEY_UB_SWITCH:Ljava/lang/String; = null

.field private static KEY_UI_MODE:Ljava/lang/String; = null

.field private static final PROPERTY_FILE_NAME:Ljava/lang/String; = "/data/system/deviceinfo_pref.xml"

.field private static sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;


# instance fields
.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 999
    const-string v0, "LastTimeOfClientStatLogOutput"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    .line 1000
    const-string v0, "LastTimeOfUseTimeLogOutput"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    .line 1001
    const-string v0, "UIMode"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UI_MODE:Ljava/lang/String;

    .line 1002
    const-string v0, "UBSwitch"

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UB_SWITCH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
    .locals 2

    .prologue
    .line 993
    const-class v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    invoke-direct {v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;-><init>()V

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    .line 995
    :cond_0
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->sPreference:Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "value"

    .prologue
    .line 1043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1044
    const/4 v1, 0x0

    .line 1046
    .local v1, l:Ljava/lang/Long;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1050
    :goto_0
    if-eqz v1, :cond_0

    .line 1051
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1053
    .end local v1           #l:Ljava/lang/Long;
    :goto_1
    return-wide v2

    .line 1047
    .restart local v1       #l:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 1048
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1053
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
    .line 1057
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-eqz v1, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcDeviceInfoManager"

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    .end local v0           #value:Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readProperty()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 1084
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/deviceinfo_pref.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1086
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 1087
    .local v4, p:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 1089
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1095
    if-eqz v3, :cond_0

    .line 1096
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1103
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_1
    :goto_1
    return-object v4

    .line 1091
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1095
    if-eqz v2, :cond_1

    .line 1096
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1097
    :catch_1
    move-exception v0

    .line 1098
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1094
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1095
    :goto_3
    if-eqz v2, :cond_2

    .line 1096
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1094
    :cond_2
    :goto_4
    throw v5

    .line 1103
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #p:Ljava/util/Properties;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1097
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #p:Ljava/util/Properties;
    :catch_2
    move-exception v0

    .line 1098
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1097
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 1098
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1094
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1091
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
    .line 1068
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcDeviceInfoManager"

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 1070
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->readProperty()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_2

    .line 1072
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    .line 1073
    :cond_2
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 1075
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1079
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->writeProperty(Ljava/util/Properties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1081
    :cond_3
    monitor-exit p0

    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1068
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
    .line 1107
    if-nez p0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    const/4 v1, 0x0

    .line 1112
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/deviceinfo_pref.xml"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1118
    if-eqz v2, :cond_2

    .line 1119
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .line 1123
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1118
    if-eqz v1, :cond_0

    .line 1119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1120
    :catch_1
    move-exception v0

    .line 1121
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1117
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1118
    :goto_3
    if-eqz v1, :cond_3

    .line 1119
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1117
    :cond_3
    :goto_4
    throw v3

    .line 1120
    :catch_2
    move-exception v0

    .line 1121
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1120
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 1121
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1117
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1114
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
.method public getLastTimeOfClientStatLogOutput()J
    .locals 3

    .prologue
    .line 1007
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTimeOfUseTimeLogOutput()J
    .locals 3

    .prologue
    .line 1016
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUBSwitch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1034
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UB_SWITCH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getUIMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1025
    sget-object v1, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UI_MODE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public setLastTimeOfClientStatLogOutput(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1012
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public setLastTimeOfUseTimeLogOutput(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1021
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public setUBSwitch(Ljava/lang/String;)V
    .locals 1
    .parameter "ubswitch"

    .prologue
    .line 1039
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UB_SWITCH:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public setUIMode(Ljava/lang/String;)V
    .locals 1
    .parameter "uimode"

    .prologue
    .line 1030
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->KEY_UI_MODE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method
