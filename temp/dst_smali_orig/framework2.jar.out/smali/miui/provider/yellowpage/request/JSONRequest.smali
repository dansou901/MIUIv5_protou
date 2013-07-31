.class public Lmiui/provider/yellowpage/request/JSONRequest;
.super Lmiui/provider/yellowpage/request/Request;
.source "JSONRequest.java"


# static fields
.field private static final SLEEP_TIME_SEGMENT:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "JSONRequest"


# instance fields
.field private mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "url"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/request/Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getRequestStatus()I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "JSONRequest"

    const-string v15, "The network is not connected"

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    const/4 v4, 0x0

    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .local v1, br:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, dos:Ljava/io/DataOutputStream;
    const/4 v13, 0x3

    .local v13, statusCode:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getConn()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mRequestMethod:Ljava/lang/String;

    const-string v15, "POST"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .local v7, dos:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getParams()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .local v10, responseCode:I
    const-string v14, "JSONRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getStatus:The response code is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xc8

    if-ne v10, v14, :cond_e

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    goto :goto_1

    .end local v9           #line:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #responseCode:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v8, e:Ljava/net/SocketTimeoutException;
    :goto_2
    const/4 v13, 0x2

    :try_start_4
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_4
    :goto_4
    const-string v14, "JSONRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getStatus:The status code is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_5
    :try_start_7
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v11, result:Lorg/json/JSONObject;
    const-string v14, "code"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "code"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, code:I
    if-nez v3, :cond_b

    const-string v14, "data"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mDecryptDownloadData:Z

    if-eqz v14, :cond_8

    const-string v14, "d101b17c77ff93cs"

    invoke-static {v5, v14}, Lmiui/util/CoderUtils;->base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    :goto_5
    const/4 v13, 0x0

    .end local v3           #code:I
    .end local v5           #data:Ljava/lang/String;
    :goto_6
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_7
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception v8

    .end local v10           #responseCode:I
    .local v8, e:Ljava/io/IOException;
    :goto_9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #code:I
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v11       #result:Lorg/json/JSONObject;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_5

    .end local v3           #code:I
    .end local v5           #data:Ljava/lang/String;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v8

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #responseCode:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v8, e:Lorg/json/JSONException;
    :goto_a
    const/4 v13, 0x2

    :try_start_b
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .end local v8           #e:Lorg/json/JSONException;
    :cond_9
    :goto_b
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v6, :cond_4

    :try_start_d
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_9

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #code:I
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v11       #result:Lorg/json/JSONObject;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_b
    const/16 v14, 0x7cf

    if-ne v3, v14, :cond_c

    const/4 v13, 0x4

    goto :goto_6

    :cond_c
    const/4 v13, 0x3

    goto :goto_6

    .end local v3           #code:I
    :cond_d
    const/4 v13, 0x4

    goto :goto_6

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/provider/yellowpage/request/JSONRequest;->isServerError(I)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_11
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    move-result v14

    if-eqz v14, :cond_f

    const/4 v13, 0x4

    goto :goto_7

    :cond_f
    const/4 v13, 0x5

    goto :goto_7

    .end local v10           #responseCode:I
    :catch_4
    move-exception v8

    .local v8, e:Ljava/io/IOException;
    :goto_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v13, 0x1

    :goto_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_10

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_10
    :goto_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    if-eqz v6, :cond_4

    :try_start_11
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v8

    goto :goto_9

    :cond_12
    const/4 v13, 0x2

    goto :goto_d

    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_f
    if-eqz v1, :cond_13

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :cond_13
    :goto_10
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    if-eqz v6, :cond_15

    :try_start_13
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :cond_15
    :goto_11
    throw v14

    :catch_6
    move-exception v8

    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .end local v8           #e:Ljava/io/IOException;
    :catch_7
    move-exception v8

    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .local v8, e:Ljava/net/SocketTimeoutException;
    :catch_8
    move-exception v8

    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v8           #e:Ljava/io/IOException;
    :catch_9
    move-exception v8

    goto :goto_9

    .local v8, e:Lorg/json/JSONException;
    :catch_a
    move-exception v8

    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_b
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .end local v8           #e:Ljava/io/IOException;
    .restart local v10       #responseCode:I
    :catch_c
    move-exception v8

    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #responseCode:I
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto :goto_f

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #responseCode:I
    :catchall_2
    move-exception v14

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_f

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v10           #responseCode:I
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_d
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto :goto_c

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #responseCode:I
    :catch_e
    move-exception v8

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_c

    .end local v10           #responseCode:I
    :catch_f
    move-exception v8

    goto/16 :goto_a

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_10
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_a

    :catch_11
    move-exception v8

    goto/16 :goto_2

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_12
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public getStatus()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getRequestStatus()I

    move-result v1

    .local v1, status:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v2, "JSONRequest"

    const-string v3, "server error, sleep 30000ms and retry"

    invoke-static {v2, v3}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getRequestStatus()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;

    return-object v0
.end method
