.class public Lmiui/net/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/CloudManager$AsyncFuture;,
        Lmiui/net/CloudManager$ConnectivityResumedReceiver;,
        Lmiui/net/CloudManager$PhoneInfo;,
        Lmiui/net/CloudManager$DevSettingName;,
        Lmiui/net/CloudManager$CloudManagerFuture;,
        Lmiui/net/CloudManager$CmTask;
    }
.end annotation


# static fields
.field public static final ACTIVATE_STATUS_ACTIVATED:I = 0x2

.field public static final ACTIVATE_STATUS_ACTIVATING:I = 0x1

.field public static final ACTIVATE_STATUS_SIM_CHANGED:I = 0x5

.field public static final ACTIVATE_STATUS_SMS_SENT:I = 0x4

.field public static final ACTIVATE_STATUS_UNACTIVATED:I = 0x3

.field private static final DEBUG:Z = true

.field public static final DEVICE_INFO_TOKEN:Ljava/lang/String; = "deviceinfo"

.field public static final ERROR_CODE_ACTIVATE_TIMEOUT:I = 0x2

.field public static final ERROR_CODE_NO_ACCOUNT:I = 0x3

.field public static final ERROR_CODE_SEND_SMS_FAILURE:I = 0x1

.field public static final ERROR_INVALID_CREDENTIAL:I = 0x6

.field public static final ERROR_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_IO:I = 0x4

.field public static final ERROR_SIM_NOT_ACTIVATED:I = 0x7

.field private static final GW_KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final INT_0:Ljava/lang/Integer; = null

.field public static final KEY_ACTIVATE_PHONE:Ljava/lang/String; = "activate_phone"

.field public static final KEY_ACTIVATE_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final KEY_ACTIVATE_STATUS:Ljava/lang/String; = "activate_status"

.field public static final KEY_FIND_DEVICE_TOKEN:Ljava/lang/String; = "find_device_token"

.field public static final KEY_PASSTOKEN:Ljava/lang/String; = "pass_token"

.field public static final KEY_PHONE_TICKET:Ljava/lang/String; = "phone_ticket"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SECONDARY_SYNC_ON:Ljava/lang/String; = "secondary_sync_on"

.field public static final KEY_SIM_USER_ID:Ljava/lang/String; = "sim_user_id"

.field public static final KEY_SNS_ACCESS_TOKEN:Ljava/lang/String; = "get_sns_access_token"

.field public static final KEY_USER_SECURITY:Ljava/lang/String; = "user_security"

.field public static final KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field public static final NOTIFICATION_ACTIVATE_ERROR:I = 0x10000001

.field private static final TAG:Ljava/lang/String; = "CloudManager"

.field public static final URL_ACCOUNT_API_V2_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2"

.field public static final URL_ACCOUNT_BASE:Ljava/lang/String; = "https://account.xiaomi.com/pass"

.field public static final URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2/safe"

.field public static final URL_ACOUNT_API_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass"

.field public static final URL_CALL_LOG_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_CONTACT_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_DEV_BASE:Ljava/lang/String; = "http://api.device.xiaomi.net"

.field public static final URL_DEV_SETTING:Ljava/lang/String; = "/udi/v1/user/%s/device/%s/setting"

.field public static final URL_FIND_DEVICE_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_GALLERY_BASE:Ljava/lang/String; = "http://galleryapi.micloud.xiaomi.net"

.field public static final URL_MMS_BASE:Ljava/lang/String; = "http://smsapi.micloud.xiaomi.net"

.field public static final URL_NOTE_BASE:Ljava/lang/String; = "http://noteapi.micloud.xiaomi.net"

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String; = "http://fileapi.micloud.xiaomi.net"

.field public static final URL_WIFI_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field private static mUserAgent:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    .line 207
    return-void
.end method

.method private static JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .parameter "valueArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 713
    .local v2, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 714
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, v:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .end local v1           #v:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method static synthetic access$000(Lmiui/net/CloudManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 873
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 874
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 875
    .local v5, name:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lmiui/util/ObjectUtils;->convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 876
    .local v6, value:Ljava/lang/Object;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 878
    .local v4, jobj:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string/jumbo v7, "value"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 885
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .parameter "is"
    .parameter "bufferSize"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 743
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 744
    .local v1, content:Ljava/lang/StringBuffer;
    new-array v0, p1, [C

    .line 746
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, n:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 747
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 919
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 920
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 921
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 924
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/CloudManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 202
    new-instance v0, Lmiui/net/CloudManager;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Lmiui/net/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSmsGatewayConfigString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sms_gw_config"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x605

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 726
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 728
    const/16 v3, 0x400

    :try_start_0
    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3, v4}, Lmiui/net/CloudManager;->convertStreamToString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 732
    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 736
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    return-object v2

    .line 729
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 732
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    sget-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_0

    .line 632
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    .line 637
    :cond_1
    sget-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    return-object v1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 912
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 914
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 915
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimSupported(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 758
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 760
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, mccmnc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v2

    .line 765
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 766
    const-string v2, "CloudManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported mcc mnc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 767
    goto :goto_0

    .line 769
    :cond_2
    invoke-static {p0, v3}, Lmiui/net/CloudManager;->unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static selectSmsGateway(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 641
    invoke-static {p0}, Lmiui/net/CloudManager;->selectSmsGatewayList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 643
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static selectSmsGatewayList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v0

    .line 651
    .local v0, cloudMgr:Lmiui/net/CloudManager;
    :try_start_0
    invoke-virtual {v0}, Lmiui/net/CloudManager;->getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lmiui/net/CloudManager;->unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CloudManager"

    const-string v3, "error when get sms gateway"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "allowInternational"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 660
    invoke-static {p0}, Lmiui/net/CloudManager;->getSmsGatewayConfigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, s:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 707
    :goto_0
    return-object v8

    .line 668
    :cond_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 670
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, mccmnc:Ljava/lang/String;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_2

    .line 675
    :cond_1
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal mcc mnc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 681
    .local v4, obj:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 682
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 683
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    .local v2, key:Ljava/lang/String;
    const-string v9, "default"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 685
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 687
    .local v7, valueArray:Lorg/json/JSONArray;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Matched pattern "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and gateways are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {v7}, Lmiui/net/CloudManager;->JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 690
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 694
    .end local v2           #key:Ljava/lang/String;
    .end local v7           #valueArray:Lorg/json/JSONArray;
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz p1, :cond_5

    .line 695
    const-string v9, "default"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 697
    .restart local v7       #valueArray:Lorg/json/JSONArray;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use default gateways "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {v7}, Lmiui/net/CloudManager;->JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 701
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v7           #valueArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Lorg/json/JSONException;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid sms gw string "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    const-string v9, "CloudManager"

    const-string v10, "Found no match for current mccmnc"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static uploadDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 14
    .parameter "context"
    .parameter "userId"
    .parameter "token"
    .parameter "security"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 830
    .local p4, devSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, devId:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://api.device.xiaomi.net"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/udi/v1/user/%s/device/%s/setting"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 838
    .local v9, url:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v3, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "serviceToken"

    move-object/from16 v0, p2

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string/jumbo v10, "userId"

    invoke-interface {v3, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 843
    .local v7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p4 .. p4}, Lmiui/net/CloudManager;->convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 844
    .local v2, content:Lorg/json/JSONArray;
    const-string v10, "content"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-static {v9, v7, v3, v10, v0}, Lmiui/net/SecureRequest;->postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v8

    .line 847
    .local v8, resp:Lmiui/net/SimpleRequest$MapContent;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 848
    .local v1, code:Ljava/lang/Object;
    const-string v10, "description"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 849
    .local v4, description:Ljava/lang/Object;
    sget-object v10, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v10, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 850
    const/4 v10, 0x1

    .line 867
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_0
    return v10

    .line 852
    .restart local v1       #code:Ljava/lang/Object;
    .restart local v2       #content:Lorg/json/JSONArray;
    .restart local v3       #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #description:Ljava/lang/Object;
    .restart local v5       #devId:Ljava/lang/String;
    .restart local v7       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #resp:Lmiui/net/SimpleRequest$MapContent;
    .restart local v9       #url:Ljava/lang/String;
    :cond_0
    const-string v10, "CloudManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed upload dev settings, code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_4

    .line 867
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 855
    :catch_0
    move-exception v6

    .line 856
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 857
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 858
    .local v6, e:Lmiui/net/exception/AccessDeniedException;
    invoke-virtual {v6}, Lmiui/net/exception/AccessDeniedException;->printStackTrace()V

    goto :goto_1

    .line 859
    .end local v6           #e:Lmiui/net/exception/AccessDeniedException;
    :catch_2
    move-exception v6

    .line 860
    .local v6, e:Lmiui/net/exception/InvalidResponseException;
    invoke-virtual {v6}, Lmiui/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_1

    .line 861
    .end local v6           #e:Lmiui/net/exception/InvalidResponseException;
    :catch_3
    move-exception v6

    .line 862
    .local v6, e:Lmiui/net/exception/CipherException;
    invoke-virtual {v6}, Lmiui/net/exception/CipherException;->printStackTrace()V

    goto :goto_1

    .line 863
    .end local v6           #e:Lmiui/net/exception/CipherException;
    :catch_4
    move-exception v6

    .line 864
    .local v6, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v6}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1
.end method

.method public static waitUntilNetworkConnected(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {p0}, Lmiui/net/CloudManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 891
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lmiui/net/CloudManager$ConnectivityResumedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/net/CloudManager$1;)V

    .line 895
    .local v1, r:Lmiui/net/CloudManager$ConnectivityResumedReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 897
    const-string v2, "CloudManager"

    const-string/jumbo v3, "waiting network..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :try_start_0
    invoke-virtual {v1}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->await()V

    .line 902
    const-string v2, "CloudManager"

    const-string v3, "network is OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 909
    return-void

    .line 907
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v2

    .line 904
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "notificationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lmiui/net/CloudManager$8;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$8;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$8;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "userId"
    .parameter "password"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/CloudManager$10;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$10;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lmiui/net/CloudManager$13;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$13;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$13;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivateStatus()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lmiui/net/CloudManager$7;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$7;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$7;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedPhoneNumber()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lmiui/net/CloudManager$1;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$1;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$1;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedSimUser()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lmiui/net/CloudManager$12;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$12;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$12;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getFindDeviceToken()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lmiui/net/CloudManager$6;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$6;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$6;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimAuthToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lmiui/net/CloudManager$9;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$9;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$9;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lmiui/net/CloudManager$3;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$3;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$3;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lmiui/net/CloudManager$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$2;-><init>(Lmiui/net/CloudManager;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$2;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getUserSecurity()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lmiui/net/CloudManager$4;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$4;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$4;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAccessToken(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "type"
    .parameter "accessToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lmiui/net/CloudManager$14;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$14;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$14;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "token"
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lmiui/net/CloudManager$5;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$5;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$5;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public startActivateSim()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lmiui/net/CloudManager$11;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$11;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$11;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method
