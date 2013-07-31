.class public abstract Lmiui/provider/yellowpage/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "yellowpage"

.field private static final APP_SECRET:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field protected static final DECODE_KEY:Ljava/lang/String; = "d101b17c77ff93cs"

.field protected static final HTTP_REQUEST_DELAY_MS:I = 0x1388

.field protected static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field public static final STATUS_CLIENT_ERROR:I = 0x3

.field public static final STATUS_NETWORK_UNAVAILABLE:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_ERROR:I = 0x4

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x2

.field public static final STATUS_UNKNOWN_ERROR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Request"

.field private static sCookie:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDecryptDownloadData:Z

.field protected mEncryptUploadData:Z

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    const-string v0, "GET"

    iput-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    iput-object p2, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/provider/yellowpage/request/Request;->mDecryptDownloadData:Z

    return-void
.end method

.method private encryptData()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, encryptedMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "d101b17c77ff93cs"

    invoke-static {v4, v5}, Lmiui/util/CoderUtils;->base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dataString:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getCookies()Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v1, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "display_density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getDisplayDensity(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    sget-object v1, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clearParams()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected getConn()Ljava/net/HttpURLConnection;
    .locals 8

    .prologue
    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    .local v4, url:Ljava/lang/String;
    const-string v5, "Request"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The connection url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v3, req:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v5, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v5, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string v6, "POST"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :cond_1
    const-string v5, "Cookie"

    invoke-direct {p0}, Lmiui/provider/yellowpage/request/Request;->getCookies()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3           #req:Ljava/net/URL;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getParams()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lmiui/provider/yellowpage/request/Request;->mEncryptUploadData:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiui/provider/yellowpage/request/Request;->encryptData()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    .end local v0           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0       #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v1, "hid"

    iget-object v2, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lg"

    iget-object v2, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "yellowpage"

    const-string v2, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {v0, v1, v2}, Lmiui/util/CommonUtils;->getSignedUri(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/Request;->getParams()Ljava/lang/String;

    move-result-object v0

    .local v0, params:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "%s?%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected isServerError(I)Z
    .locals 2
    .parameter "statusCode"

    .prologue
    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x196

    if-eq p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDecryptDownloadData(Z)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "decrypt"

    .prologue
    iput-boolean p1, p0, Lmiui/provider/yellowpage/request/Request;->mDecryptDownloadData:Z

    return-object p0
.end method

.method public setEncryptUploadData(Z)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "encrypt"

    .prologue
    iput-boolean p1, p0, Lmiui/provider/yellowpage/request/Request;->mEncryptUploadData:Z

    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "method"

    .prologue
    iput-object p1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method
