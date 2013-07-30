.class final Lcom/htc/server/ulog/PolicyStore;
.super Ljava/lang/Object;
.source "PolicyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    }
.end annotation


# static fields
.field private static final APPID_OF_SECOND_SWITCH:Ljava/lang/String; = "tellhtc_client"

.field private static final CATEGORY_OF_SECOND_SWITCH_OF_ERROR_REPORT:Ljava/lang/String; = "error_report"

.field private static final CATEGORY_OF_SECOND_SWITCH_OF_USAGE_REPORT:Ljava/lang/String; = "usage_report"

.field private static final CUSTOMIZATION_CATEGORY:Ljava/lang/String; = "ulog_policy_"

.field private static final KEY_ENABLE:Ljava/lang/String; = "enable"

.field private static final POLICY_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable"

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private mPolicyBundle:Landroid/os/Bundle;

.field private mPolicyBundleLock:Ljava/lang/Object;

.field private mPolicyListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 2
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/htc/server/ulog/PolicyStore$1;

    invoke-direct {v1, p0}, Lcom/htc/server/ulog/PolicyStore$1;-><init>(Lcom/htc/server/ulog/PolicyStore;)V

    iput-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    new-instance v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;

    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;-><init>(Lcom/htc/server/ulog/DatabaseHelper;)V

    .local v0, loader:Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    #calls: Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->disableDebuggingRomPolicyInNeed()V
    invoke-static {v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->access$000(Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;)V

    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewPolicyBundle()V

    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "allPolicy"
    .parameter "appid"
    .parameter "category"
    .parameter "key"

    .prologue
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, appBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, cateBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .local v5, keyBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, value:Ljava/lang/String;
    const-string v7, "due_date"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .local v3, dueDate:J
    const/4 v2, 0x0

    .local v2, defaultValue:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    const-string v7, "default_value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v6, v2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", due date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    if-nez v6, :cond_1

    const-string v6, ""

    .end local v0           #appBundle:Landroid/os/Bundle;
    .end local v1           #cateBundle:Landroid/os/Bundle;
    .end local v2           #defaultValue:Ljava/lang/String;
    .end local v3           #dueDate:J
    .end local v5           #keyBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const-string v6, ""

    goto :goto_0
.end method

.method private static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v10, 0x0

    .local v10, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .local v15, valueIdx:I
    const-string v2, "key"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .local v12, keyIdx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v9, v8

    .end local v8           #bundle:Landroid/os/Bundle;
    .local v9, bundle:Landroid/os/Bundle;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v6, ""

    .local v6, appId:Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, keyStr:Ljava/lang/String;
    const-string v2, "ulog_policy_"

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .local v14, n:I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_3

    const-string v2, "ulog_policy_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/server/ulog/PolicyStore;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v7

    .local v7, b:Landroid/os/Bundle;
    if-nez v7, :cond_0

    new-instance v7, Landroid/os/Bundle;

    .end local v7           #b:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .restart local v7       #b:Landroid/os/Bundle;
    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "getBolb() return empty stream!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v9, :cond_6

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    :goto_2
    :try_start_2
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    if-nez v2, :cond_4

    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #valueIdx:I
    :cond_1
    :goto_3
    if-eqz v10, :cond_2

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_4
    const/4 v10, 0x0

    :cond_2
    return-object v8

    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_3
    :try_start_4
    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ulog_policy_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .end local v6           #appId:Ljava/lang/String;
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    :catch_0
    move-exception v11

    move-object v8, v9

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v15           #valueIdx:I
    .restart local v8       #bundle:Landroid/os/Bundle;
    .local v11, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "Quering customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_4

    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_4
    move-object v9, v8

    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    goto/16 :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #valueIdx:I
    .restart local v8       #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v10, :cond_5

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    const/4 v10, 0x0

    :cond_5
    throw v2

    :catch_2
    move-exception v3

    goto :goto_7

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v2

    goto :goto_4

    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v15       #valueIdx:I
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v12           #keyIdx:I
    .end local v15           #valueIdx:I
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_6
    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_2

    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .restart local v9       #bundle:Landroid/os/Bundle;
    :cond_7
    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_3
.end method

.method private loadCustomizeSIEData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13
    .parameter "context"

    .prologue
    const-string v2, "content://customization_settings/SettingTable/application_Crash_Report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .local v10, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .local v12, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v12, v10, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v12           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const/4 v7, 0x0

    return-object v8

    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "loadCustomizSIEeData fail"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v7, 0x0

    throw v2

    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v12       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2

    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private notifyPolicyChanged(Z)V
    .locals 5
    .parameter "isSIE"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isSIE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getTellHtcUiMode()Ljava/lang/String;

    move-result-object v1

    .local v1, uiMode:Ljava/lang/String;
    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyPolicyChanged]broadcast ui mode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v2, "ui_Mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v1           #uiMode:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private renewPolicyBundle()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/server/ulog/DatabaseHelper;->getPolicy()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "tellhtc_client"

    const-string v6, "error_report"

    const-string v7, "enable"

    invoke-static {v3, v5, v6, v7}, Lcom/htc/server/ulog/PolicyStore;->getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "second_switch_of_error_report"

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "tellhtc_client"

    const-string v6, "usage_report"

    const-string v7, "enable"

    invoke-static {v3, v5, v6, v7}, Lcom/htc/server/ulog/PolicyStore;->getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "second_switch_of_usage_report"

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewSetting2PolicyBundle()V

    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewTellHTCUIMode2PolicyBundle()V

    monitor-exit v4

    return-void

    .end local v1           #valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    .end local v2           #valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1       #valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", appid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "tellhtc_client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", category: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "error_report"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "enable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    goto :goto_1

    .restart local v2       #valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", appid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "tellhtc_client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", category: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "usage_report"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "enable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private renewSetting2PolicyBundle()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    if-nez v4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v0

    .local v0, canSupoortTellhtcUi:Z
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v1

    .local v1, canSupportErrorReportCheckBox:Z
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v3

    .local v3, canSupportUserProfilingCheckBox:Z
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v2

    .local v2, canSupportSenseDotCom:Z
    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v6, "setting_tellhtc_ui"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v6, "settings_error_report"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v6, "settings_user_profiling"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v6, "settings_sense_dot_com"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private renewTellHTCUIMode2PolicyBundle()V
    .locals 5

    .prologue
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->getTellHtcUiMode()Ljava/lang/String;

    move-result-object v0

    .local v0, uiMode:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v3, "tellhtc_uimode"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[renewTellHTCUIMode2PolicyBundle] add TellHtc Uimode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into policy bundle."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPolicy()Landroid/os/Bundle;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertPolicyFromCustomizationBroadcast()V
    .locals 8

    .prologue
    const-string v5, "UserBehaviorLoggingService"

    const-string v6, "[insertPolicyFromCustomizationBroadcast] begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    const-string v6, "content://customization_settings/SettingTable"

    const-string v7, "key like \'ulog_policy%\'"

    invoke-static {v5, v6, v7}, Lcom/htc/server/ulog/PolicyStore;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "normal"

    .local v3, uiMode:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/htc/server/ulog/PolicyStore;->loadCustomizeSIEData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, SIEBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v5, "setting"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, setting:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v5, "ui_mode"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, uiStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .end local v2           #setting:Landroid/os/Bundle;
    .end local v4           #uiStr:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/server/ulog/UserBehaviorPreference;->setTellHtcUiMode(Ljava/lang/String;)V

    const-string v5, "UserBehaviorLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[insertPolicyFromCustomizationBroadcast]get Ui Mode =:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/htc/server/ulog/PolicyStore;->setPolicyAndNotify(Landroid/os/Bundle;Z)V

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/ulog/UserBehaviorPreference;->setFirstUpdateTimeOfSIE(J)V

    const-string v5, "UserBehaviorLoggingService"

    const-string v6, "[insertPolicyFromCustomizationBroadcast] end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyPolicyListeners(Z)V
    .locals 4
    .parameter "isSettingUIChanged"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewSetting2PolicyBundle()V

    :goto_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IRemoteCallback;

    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewPolicyBundle()V

    goto :goto_0

    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public register(Landroid/os/IRemoteCallback;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public setPolicyAndNotify(Landroid/os/Bundle;Z)V
    .locals 3
    .parameter "bundle"
    .parameter "isSIE"

    .prologue
    new-instance v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;

    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;-><init>(Lcom/htc/server/ulog/DatabaseHelper;)V

    .local v0, loader:Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    if-eqz p2, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadSIEPolicies(Landroid/os/Bundle;Z)V

    invoke-direct {p0, p2}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadProvisionPolicy(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyChanged(Z)V

    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[setPolicyAndNotify(non-SIE)] setPolicyInternal() succeeds => notify UPolicy listener and broadcast to others"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[setPolicyAndNotify(non-SIE)] ABNORMAL setPolicyInternal() called. But nothing gets updated. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
