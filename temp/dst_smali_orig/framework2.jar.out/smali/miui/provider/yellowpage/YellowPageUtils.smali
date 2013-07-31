.class public Lmiui/provider/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_COLUMN_MIN_MATCH:I = 0x9

.field private static final PHONE_COLUMN_NORMALIZED:I = 0xa

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/provider/yellowpage/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/provider/yellowpage/model/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yid"

    aput-object v1, v0, v3

    const-string v1, "provider_id"

    aput-object v1, v0, v4

    const-string v1, "tag"

    aput-object v1, v0, v5

    const-string v1, "photo_url"

    aput-object v1, v0, v6

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yellow_page_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yellow_page_name_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tag_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hide"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_match"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pid"

    aput-object v1, v0, v3

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "marked_count"

    aput-object v1, v0, v6

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->updateCallLogAntispamTag(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "categoryName"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "MAX(cid)"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/16 v7, 0x2710

    .local v7, categoryId:I
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .local v8, maxCatId:I
    if-lt v8, v7, :cond_1

    add-int/lit8 v7, v8, 0x1

    .end local v8           #maxCatId:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "cid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "names"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v7

    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/CustomNumberCategory;
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, category:Lmiui/provider/yellowpage/model/Category;
    const/4 v5, 0x0

    .local v5, typeCustom:Z
    const/4 v4, 0x0

    .local v4, markedCount:I
    if-eqz v6, :cond_4

    :try_start_0
    invoke-static {p0}, Lmiui/provider/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, catId:I
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .local v10, type:I
    sget-object v1, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/provider/yellowpage/model/Category;

    .local v8, cate:Lmiui/provider/yellowpage/model/Category;
    if-ne v10, v12, :cond_2

    move v5, v11

    :goto_1
    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    :cond_1
    move-object v9, v8

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .end local v7           #catId:I
    .end local v8           #cate:Lmiui/provider/yellowpage/model/Category;
    .end local v10           #type:I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v0, 0x0

    .local v0, customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    if-eqz v9, :cond_5

    new-instance v0, Lmiui/provider/yellowpage/model/CustomNumberCategory;

    .end local v0           #customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    invoke-virtual {v9}, Lmiui/provider/yellowpage/model/Category;->getCategoryId()I

    move-result v1

    invoke-virtual {v9}, Lmiui/provider/yellowpage/model/Category;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmiui/provider/yellowpage/model/CustomNumberCategory;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    .restart local v0       #customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    :cond_5
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "cid"

    aput-object v4, v2, v5

    const-string v4, "names"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, categoryId:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, names:Ljava/lang/String;
    new-instance v7, Lmiui/provider/yellowpage/model/Category;

    invoke-direct {v7, v8, v9}, Lmiui/provider/yellowpage/model/Category;-><init>(ILjava/lang/String;)V

    .local v7, category:Lmiui/provider/yellowpage/model/Category;
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v7           #category:Lmiui/provider/yellowpage/model/Category;
    .end local v8           #categoryId:I
    .end local v9           #names:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, category:Lmiui/provider/yellowpage/model/Category;
    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #category:Lmiui/provider/yellowpage/model/Category;
    check-cast v0, Lmiui/provider/yellowpage/model/Category;

    .restart local v0       #category:Lmiui/provider/yellowpage/model/Category;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lmiui/provider/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #category:Lmiui/provider/yellowpage/model/Category;
    check-cast v0, Lmiui/provider/yellowpage/model/Category;

    .restart local v0       #category:Lmiui/provider/yellowpage/model/Category;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 2
    .parameter "context"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v0

    .local v0, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/provider/yellowpage/model/YellowPage;->getPhoneInfo(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;
    .locals 40
    .parameter "context"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static/range {p0 .. p0}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v35

    .local v35, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v7

    .local v7, normalizedNumber:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The requested phone normalized number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'s normalized number is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    new-instance v36, Lmiui/provider/yellowpage/request/JSONRequest;

    invoke-static {}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPageUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lmiui/provider/yellowpage/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v36, request:Lmiui/provider/yellowpage/request/JSONRequest;
    const-string v3, "phone"

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Lmiui/provider/yellowpage/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .local v11, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    invoke-virtual/range {v36 .. v36}, Lmiui/provider/yellowpage/request/JSONRequest;->getStatus()I

    move-result v37

    .local v37, statusCode:I
    if-nez v37, :cond_0

    new-instance v34, Lorg/json/JSONObject;

    invoke-virtual/range {v36 .. v36}, Lmiui/provider/yellowpage/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v34, json:Lorg/json/JSONObject;
    const-string v3, "yp"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .local v39, ypDataString:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a remote yellowpage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v39 .. v39}, Lmiui/provider/yellowpage/model/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lmiui/provider/yellowpage/model/YellowPage;->getId()J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-lez v3, :cond_0

    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .local v38, values:Landroid/content/ContentValues;
    const-string v3, "yid"

    invoke-virtual {v11}, Lmiui/provider/yellowpage/model/YellowPage;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "content"

    invoke-virtual {v11}, Lmiui/provider/yellowpage/model/YellowPage;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lmiui/provider/yellowpage/model/YellowPage;->isHot()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v33, 0x1

    .local v33, hot:I
    :goto_1
    invoke-virtual {v11}, Lmiui/provider/yellowpage/model/YellowPage;->isPreset()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v31, 0x1

    .local v31, builtIn:I
    :goto_2
    const-string v3, "type"

    move/from16 v0, v33

    move/from16 v1, v31

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getYellowPageType(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .end local v31           #builtIn:I
    .end local v33           #hot:I
    :cond_3
    const/16 v33, 0x0

    goto :goto_1

    .restart local v33       #hot:I
    :cond_4
    const/16 v31, 0x0

    goto :goto_2

    .end local v33           #hot:I
    .end local v38           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v3, "atd"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    if-eqz v34, :cond_6

    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a remote antispam"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "count"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .local v10, markedCount:I
    const-string v3, "catId"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    .local v32, cateId:I
    const-string v3, "provider"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .local v9, providerId:I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .local v6, tag:Ljava/lang/String;
    new-instance v2, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .end local v11           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    .local v2, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lmiui/provider/yellowpage/model/YellowPage;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v24, v9

    invoke-direct/range {v11 .. v30}, Lmiui/provider/yellowpage/model/YellowPage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .restart local v11       #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .restart local v38       #values:Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cid"

    const-string v4, "catId"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "marked_count"

    invoke-virtual {v2}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getMarkedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .end local v2           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v6           #tag:Ljava/lang/String;
    .end local v9           #providerId:I
    .end local v10           #markedCount:I
    .end local v19           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .end local v32           #cateId:I
    .end local v38           #values:Landroid/content/ContentValues;
    :cond_6
    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:There is no yp or atd data for number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 27
    .parameter "context"
    .parameter "number"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .local v25, c:Landroid/database/Cursor;
    if-eqz v25, :cond_2

    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocalPhoneInfo:The number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is a local yellowpage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, providerId:I
    const/4 v1, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, tag:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, ypName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, ypId:J
    const/4 v1, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, ypNamePinyin:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, tagPinyin:Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v10, 0x1

    .local v10, isVisible:Z
    :goto_0
    new-instance v1, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v8           #providerId:I
    .end local v10           #isVisible:Z
    .end local v11           #ypNamePinyin:Ljava/lang/String;
    .end local v12           #tagPinyin:Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v2       #ypId:J
    .restart local v4       #ypName:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v8       #providerId:I
    .restart local v11       #ypNamePinyin:Ljava/lang/String;
    .restart local v12       #tagPinyin:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v8           #providerId:I
    .end local v11           #ypNamePinyin:Ljava/lang/String;
    .end local v12           #tagPinyin:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    sget-object v15, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    if-eqz v25, :cond_7

    const/16 v26, 0x0

    .local v26, ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_3
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocalPhoneInfo:The number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is a local antispam"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .restart local v8       #providerId:I
    const/4 v1, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .local v17, cidName:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_6

    const/16 v19, 0x3

    .local v19, type:I
    :goto_2
    const/4 v1, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .local v21, markedCount:I
    new-instance v13, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p1

    move/from16 v20, v8

    invoke-direct/range {v13 .. v24}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .local v13, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    if-eqz v26, :cond_4

    const/4 v1, 0x3

    move/from16 v0, v19

    if-ne v0, v1, :cond_3

    :cond_4
    move-object/from16 v26, v13

    const/4 v1, 0x3

    move/from16 v0, v19

    if-ne v0, v1, :cond_3

    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is a local antispam user marked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8           #providerId:I
    .end local v13           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v17           #cidName:Ljava/lang/String;
    .end local v19           #type:I
    .end local v21           #markedCount:I
    :cond_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v26

    goto/16 :goto_1

    .restart local v8       #providerId:I
    .restart local v17       #cidName:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x2

    goto :goto_2

    .end local v8           #providerId:I
    .end local v17           #cidName:Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v26           #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 20
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/16 v19, 0x0

    :cond_1
    return-object v19

    :cond_2
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .local v19, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_8

    :cond_3
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xa

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, normalizedNumber:Ljava/lang/String;
    const/16 v7, 0x9

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, minMatch:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v18

    .local v18, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lmiui/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, providerId:I
    const/4 v7, 0x2

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, tag:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, ypName:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, ypId:J
    const/4 v7, 0x6

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, ypNamePinyin:Ljava/lang/String;
    const/4 v7, 0x7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, tagPinyin:Ljava/lang/String;
    const/16 v7, 0x8

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_6

    const/4 v10, 0x1

    .local v10, isVisible:Z
    :goto_1
    new-instance v1, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .local v1, ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .end local v1           #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v8           #providerId:I
    .end local v10           #isVisible:Z
    .end local v11           #ypNamePinyin:Ljava/lang/String;
    .end local v12           #tagPinyin:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v6           #number:Ljava/lang/String;
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16           #minMatch:Ljava/lang/String;
    .end local v17           #normalizedNumber:Ljava/lang/String;
    .end local v18           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_0
    move-exception v7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v7

    .restart local v2       #ypId:J
    .restart local v4       #ypName:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v8       #providerId:I
    .restart local v11       #ypNamePinyin:Ljava/lang/String;
    .restart local v12       #tagPinyin:Ljava/lang/String;
    .restart local v15       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16       #minMatch:Ljava/lang/String;
    .restart local v17       #normalizedNumber:Ljava/lang/String;
    .restart local v18       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v8           #providerId:I
    .end local v11           #ypNamePinyin:Ljava/lang/String;
    .end local v12           #tagPinyin:Ljava/lang/String;
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16           #minMatch:Ljava/lang/String;
    .end local v17           #normalizedNumber:Ljava/lang/String;
    .end local v18           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6       #number:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v9}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "fetchRemote"

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    .local v1, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;
    .locals 14
    .parameter "context"
    .parameter "pid"

    .prologue
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/Provider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v11, 0x0

    .local v11, provider:Lmiui/provider/yellowpage/model/Provider;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icon"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "icon_big"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    move-object v12, v11

    .end local v11           #provider:Lmiui/provider/yellowpage/model/Provider;
    .local v12, provider:Lmiui/provider/yellowpage/model/Provider;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .local v9, iconByte:[B
    if-nez v9, :cond_1

    const/4 v7, 0x0

    .local v7, icon:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v8, 0x0

    .local v8, iconBig:Landroid/graphics/Bitmap;
    :goto_3
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, providerId:I
    new-instance v11, Lmiui/provider/yellowpage/model/Provider;

    invoke-direct {v11, v13, v10, v7, v8}, Lmiui/provider/yellowpage/model/Provider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v11       #provider:Lmiui/provider/yellowpage/model/Provider;
    :try_start_1
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v11

    .end local v11           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    goto :goto_1

    .end local v7           #icon:Landroid/graphics/Bitmap;
    .end local v8           #iconBig:Landroid/graphics/Bitmap;
    .end local v13           #providerId:I
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    array-length v1, v9

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .restart local v7       #icon:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v0, 0x0

    array-length v1, v9

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_3

    .end local v7           #icon:Landroid/graphics/Bitmap;
    .end local v9           #iconByte:[B
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v11       #provider:Lmiui/provider/yellowpage/model/Provider;
    :cond_4
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #provider:Lmiui/provider/yellowpage/model/Provider;
    check-cast v11, Lmiui/provider/yellowpage/model/Provider;

    .restart local v11       #provider:Lmiui/provider/yellowpage/model/Provider;
    if-nez v11, :cond_5

    sget-object v11, Lmiui/provider/yellowpage/model/Provider;->DEFAULT_PROVIDER:Lmiui/provider/yellowpage/model/Provider;

    :cond_5
    move-object v0, v11

    goto :goto_0

    .end local v11           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    :catchall_0
    move-exception v0

    move-object v11, v12

    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v11       #provider:Lmiui/provider/yellowpage/model/Provider;
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #icon:Landroid/graphics/Bitmap;
    .restart local v8       #iconBig:Landroid/graphics/Bitmap;
    .restart local v9       #iconByte:[B
    .restart local v10       #name:Ljava/lang/String;
    .restart local v13       #providerId:I
    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public static getYellowPageType(II)I
    .locals 1
    .parameter "hot"
    .parameter "builtin"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    if-nez p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string v3, "number = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v7

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isYellowPageAvailable()Z
    .locals 2

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .local v0, locale:Ljava/util/Locale;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "categoryId"
    .parameter "delete"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type = 3"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez p3, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Lmiui/provider/yellowpage/YellowPageUtils$1;

    invoke-direct {v1, p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lmiui/provider/yellowpage/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateCallLogAntispamTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",0)"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    new-instance v6, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log"

    invoke-direct {v6, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .local v6, batchOperations:Lmiui/provider/BatchOperation;
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v9

    .local v9, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1

    const-string v0, "cloud_antispam_type"

    invoke-virtual {v9}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cloud_antispam_type_tag"

    invoke-virtual {v9}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v0, "cloud_antispam_type"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cloud_antispam_type_tag"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .end local v11           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v6           #batchOperations:Lmiui/provider/BatchOperation;
    .end local v9           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_4
    return-void
.end method

.method private static updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "queried"
    .parameter "action"

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "query_status"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$PhoneUsage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
