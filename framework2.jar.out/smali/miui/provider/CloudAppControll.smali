.class public Lmiui/provider/CloudAppControll;
.super Ljava/lang/Object;
.source "CloudAppControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CloudAppControll$TAG;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.xiaomi.market.dbcache"

.field private static final CLOUD_APP_CONTROL_URI:Landroid/net/Uri; = null

.field private static final COLUMN_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final COLUMN_MAX_VERSION_CODE:Ljava/lang/String; = "max_version_code"

.field private static final COLUMN_MIN_VERSION_CODE:Ljava/lang/String; = "min_version_code"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_RELEASE_KEY:Ljava/lang/String; = "release_key"

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String; = null

.field public static final ERROR:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attributes"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 162
    const-string v0, "content://com.xiaomi.market.dbcache/cloud_app_control_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"

    .prologue
    .line 79
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"
    .parameter "releaseKey"

    .prologue
    .line 91
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"
    .parameter "releaseKey"
    .parameter "versionCode"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    const/4 v6, -0x1

    .line 145
    :cond_1
    :goto_0
    return v6

    .line 107
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v10, selectionArgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "package_name=?"

    .line 109
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND release_key=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v10, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    if-ltz p4, :cond_4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND max_version_code >=? AND min_version_code <= ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 122
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    const/4 v6, -0x1

    .line 125
    .local v6, attribute:I
    const/4 v9, 0x0

    .line 127
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    sget-object v2, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 129
    if-eqz v9, :cond_5

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    const-string v0, "attributes"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 134
    .local v7, attributes:J
    invoke-virtual {p1, v7, v8}, Lmiui/provider/CloudAppControll$TAG;->getAttribute(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 141
    .end local v7           #attributes:J
    :cond_5
    :goto_1
    if-eqz v9, :cond_1

    .line 142
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    :cond_6
    :try_start_1
    #getter for: Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I
    invoke-static {p1}, Lmiui/provider/CloudAppControll$TAG;->access$000(Lmiui/provider/CloudAppControll$TAG;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_7

    .line 142
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
