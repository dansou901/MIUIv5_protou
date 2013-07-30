.class public final Landroid/provider/HtcUnionContact$ContactUtils;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactUtils"
.end annotation


# static fields
.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field public static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field public static final DATE_COLUMN_INDEX:I = 0x2

.field public static final EVENTS_EVENT_ID_COLUMN:I = 0x2

.field public static final EVENTS_ID_COLUMN:I = 0x0

.field public static final EVENTS_PERSON_COLUMN:I = 0x1

.field public static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field public static final EVENT_ID_COLUMN:I = 0x0

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final MY_CONTACT_ACCOUNT_NAME:Ljava/lang/String; = "HTC"

.field public static final MY_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "DeviceOnly"

.field public static final MY_CONTACT_SOURCE_ID:Ljava/lang/String; = "HTC_01"

.field public static final NUMBER_COLUMN_INDEX:I = 0x1

.field public static final WHERE_NEW_MISS_CALL:Ljava/lang/String; = "type=3 AND new=1 "


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/HtcUnionContact$ContactUtils;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/HtcUnionContact$ContactUtils;->EVENTS_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact$ContactUtils;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFavorite(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "starred"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .local v0, personUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static addGroup(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .parameter "context"
    .parameter "groupName"

    .prologue
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v3, "content://contacts/groups"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "HtcContactUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addGroup result uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static addGroupMember(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "groupId"
    .parameter "personId"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, uriString:Ljava/lang/StringBuilder;
    const-string v3, "content://contacts/people/"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/groupmembership/"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, selectionString:Ljava/lang/StringBuilder;
    const-string v3, "person"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "group_id"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, values:Landroid/content/ContentValues;
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v2, "person"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static deleteContact(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "personId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/people"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, eventsUri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "events_map"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/HtcUnionContact$ContactUtils;->EVENTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, eventsCursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .local v6, eventUri:Landroid/net/Uri;
    invoke-virtual {v0, v6, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .end local v6           #eventUri:Landroid/net/Uri;
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "content://contacts/people"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, uri:Landroid/net/Uri;
    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteFavorite(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "personId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUnionContact"

    const-string v2, "this function is deprecated!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static deleteGroup(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/groups"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteGroupMember(Landroid/content/Context;JJ)V
    .locals 5
    .parameter "context"
    .parameter "groupId"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, uriString:Ljava/lang/StringBuilder;
    const-string v3, "content://contacts/people/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/groupmembership/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteMyCotactCardInfoEntry(Landroid/content/Context;J)I
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/myContactCard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const-string v2, "HtcUnionContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMyCotactCardInfoEntry: invalid id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmSrc"
    .parameter "bmOverlay"

    .prologue
    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .local v3, nSrcH:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, nOverlayW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, nOverlayH:I
    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, canvasSrc:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paintDefault:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getCenterCropImage(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "resolver"
    .parameter "uri"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    move/from16 v5, p2

    .local v5, mContactPhoteWidth:I
    move/from16 v4, p3

    .local v4, mContactPhoteHeight:I
    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, resultBitmap:Landroid/graphics/Bitmap;
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, input:Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v12, 0x0

    invoke-static {v3, v12, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, w:I
    iget v2, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local v2, h:I
    const/4 v8, 0x1

    .local v8, value:I
    :goto_1
    if-le v9, v5, :cond_2

    if-le v2, v4, :cond_2

    shr-int/lit8 v9, v9, 0x1

    shr-int/lit8 v2, v2, 0x1

    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    shr-int/lit8 v12, v8, 0x1

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    const/4 v8, 0x1

    :goto_2
    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v12, 0x0

    invoke-static {v3, v12, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    if-nez v0, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    shr-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v12, v9, v5

    shr-int/lit8 v10, v12, 0x1

    .local v10, x:I
    sub-int v12, v2, v4

    shr-int/lit8 v11, v12, 0x1

    .local v11, y:I
    if-lt v9, v5, :cond_5

    if-lt v2, v4, :cond_5

    invoke-static {v0, v10, v11, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #h:I
    .end local v3           #input:Ljava/io/InputStream;
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #value:I
    .end local v9           #w:I
    .end local v10           #x:I
    .end local v11           #y:I
    :goto_3
    const/4 v0, 0x0

    move-object v12, v7

    goto :goto_0

    .restart local v2       #h:I
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #value:I
    .restart local v9       #w:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_5
    move-object v7, v0

    goto :goto_3

    .end local v2           #h:I
    .end local v3           #input:Ljava/io/InputStream;
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #value:I
    .end local v9           #w:I
    .end local v10           #x:I
    .end local v11           #y:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v12, "HtcUnionContact"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCenterCropImage: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getCenterCropImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "filepath"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    move v3, p1

    .local v3, mContactPhoteWidth:I
    move v2, p2

    .local v2, mContactPhoteHeight:I
    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, resultBitmap:Landroid/graphics/Bitmap;
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v10, v11

    :goto_0
    return-object v10

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v7, w:I
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local v1, h:I
    const/4 v6, 0x1

    .local v6, value:I
    :goto_1
    if-le v7, v3, :cond_2

    if-le v1, v2, :cond_2

    shr-int/lit8 v7, v7, 0x1

    shr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    shr-int/lit8 v12, v6, 0x1

    if-ge v12, v10, :cond_3

    move v6, v10

    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v10, v11

    goto :goto_0

    :cond_3
    shr-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v10, v7, v3

    shr-int/lit8 v8, v10, 0x1

    .local v8, x:I
    sub-int v10, v1, v2

    shr-int/lit8 v9, v10, 0x1

    .local v9, y:I
    if-lt v7, v3, :cond_5

    if-lt v1, v2, :cond_5

    invoke-static {v0, v8, v9, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    const/4 v0, 0x0

    move-object v10, v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    goto :goto_3
.end method

.method public static getEditMyContactCardIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/provider/Contacts$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, sMailAddress:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 15
    .parameter "resolver"

    .prologue
    if-nez p0, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .local v8, bundleIds:Landroid/os/Bundle;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "contact_id"

    aput-object v1, v2, v0

    .local v2, COLUMNS:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, _ID:I
    const/4 v6, 0x1

    .local v6, CONTACT_ID:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .local v14, selection:Ljava/lang/StringBuilder;
    const-string v0, "account_name=? AND account_type=? AND sourceid=?"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "HTC"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "DeviceOnly"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "HTC_01"

    aput-object v1, v4, v0

    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursorRawContact:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .local v12, lMyRawContactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, lMyContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v12

    if-gez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    const-string v0, "_id"

    invoke-virtual {v8, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "contact_id"

    invoke-virtual {v8, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .end local v10           #lMyContactId:J
    .end local v12           #lMyRawContactId:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static final getMyContactPossiblePhotoBitmap(Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "resolver"
    .parameter "opts"

    .prologue
    const/16 v20, 0x0

    .local v20, result:Landroid/graphics/Bitmap;
    const-string v1, "content://contacts/myContactCard"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, meContactUri:Landroid/net/Uri;
    const-string v7, "HTCContactUtils"

    .local v7, TAG:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid contact uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .local v15, idxType:I
    const-string v1, "subtype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .local v14, idxSubType:I
    const-string v1, "data2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .local v13, idxData2:I
    const-string v1, "blobdata"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .local v12, idxBlobData:I
    const/16 v19, 0x0

    .local v19, photoBytes:[B
    const/4 v11, 0x0

    .local v11, facePhotoBytes:[B
    const/16 v17, 0x0

    .local v17, isGetData:Z
    const/16 v18, 0x0

    .local v18, isGetFBData:Z
    const/4 v8, -0x1

    .local v8, autoupdate:I
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .local v24, type:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .local v22, subtype:I
    sparse-switch v24, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-nez v17, :cond_2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    .end local v8           #autoupdate:I
    .end local v11           #facePhotoBytes:[B
    .end local v12           #idxBlobData:I
    .end local v13           #idxData2:I
    .end local v14           #idxSubType:I
    .end local v15           #idxType:I
    .end local v17           #isGetData:Z
    .end local v18           #isGetFBData:Z
    .end local v19           #photoBytes:[B
    .end local v22           #subtype:I
    .end local v24           #type:I
    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid column index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_0

    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v8       #autoupdate:I
    .restart local v11       #facePhotoBytes:[B
    .restart local v12       #idxBlobData:I
    .restart local v13       #idxData2:I
    .restart local v14       #idxSubType:I
    .restart local v15       #idxType:I
    .restart local v17       #isGetData:Z
    .restart local v18       #isGetFBData:Z
    .restart local v19       #photoBytes:[B
    .restart local v22       #subtype:I
    .restart local v24       #type:I
    :sswitch_1
    const v1, 0xff04

    move/from16 v0, v22

    if-ne v0, v1, :cond_4

    if-nez v18, :cond_3

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    :cond_3
    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const v1, 0xff01

    move/from16 v0, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .local v21, str:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_1

    :catch_1
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    const/4 v8, -0x1

    goto :goto_1

    .end local v10           #e:Ljava/lang/Exception;
    .end local v21           #str:Ljava/lang/String;
    .end local v22           #subtype:I
    .end local v24           #type:I
    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    const/16 v16, 0x0

    .local v16, isFaceBook:Z
    if-ltz v8, :cond_8

    and-int/lit8 v1, v8, 0x1

    if-lez v1, :cond_8

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_9

    move-object/from16 v23, v11

    .local v23, target:[B
    :goto_3
    if-eqz v23, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, v23

    array-length v3, v0

    move-object/from16 v0, v23

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    :cond_7
    move-object/from16 v1, v20

    goto/16 :goto_0

    .end local v23           #target:[B
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v23, v19

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static getNewMissedCalls(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7
    .parameter "r"
    .parameter "contactId"

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " person="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v6, where:Ljava/lang/StringBuilder;
    const-string v0, " AND type=3 AND new=1 "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/HtcUnionContact$ContactUtils;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .local v1, htcContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const-string v2, ""

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    .local v3, stringId:I
    packed-switch p1, :pswitch_data_0

    :goto_2
    if-lez v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, result:Ljava/lang/String;
    goto :goto_1

    .end local v2           #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_home_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_mobile_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_work_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_fax_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_pager_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_other_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_callback_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_car_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_isdn_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_main_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_radio_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_telex_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_tty_tdd_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_assistant_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_mms_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "phone_type_custom_short"

    const-string v6, "string"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :cond_1
    const-string v2, ""

    .restart local v2       #result:Ljava/lang/String;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_4
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    invoke-static {p0, p1}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPhoneNumberTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, result:Ljava/lang/CharSequence;
    if-eqz p0, :cond_0

    invoke-static {p0, p1, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getQueryContactUriByName(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .local v8, resultUri:Landroid/net/Uri;
    const-string v3, "content://contacts/simAndContacts/numbers"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .local v7, id:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, type:I
    const/4 v10, 0x0

    .local v10, value:Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    if-ne v9, v2, :cond_2

    const-string v2, "recordNumber"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/sim/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .end local v9           #type:I
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8

    .restart local v9       #type:I
    .restart local v10       #value:Ljava/lang/String;
    :cond_2
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v7

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0
.end method

.method public static getQueryContactUriByNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, resultUri:Landroid/net/Uri;
    const-string v3, "content://contacts/simAndContacts/numbers"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .local v7, id:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .local v10, type:I
    const/4 v8, 0x0

    .local v8, phonenumber:Ljava/lang/String;
    const-string v2, "number"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    if-ne v10, v2, :cond_2

    const-string v2, "recordNumber"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/sim/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .end local v8           #phonenumber:Ljava/lang/String;
    .end local v10           #type:I
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    .restart local v8       #phonenumber:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_2
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v7

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0
.end method

.method public static getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v3, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargeWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .local v12, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .local v11, nSrcH:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, bmDst:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, canvasDst:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .local v15, paintDefault:Landroid/graphics/Paint;
    int-to-float v0, v12

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    .local v7, fXratio:F
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v16, v17

    .local v8, fYratio:F
    cmpg-float v16, v7, v8

    if-gtz v16, :cond_1

    move v10, v12

    .local v10, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v9, v0

    .local v9, nSrcDrawH:I
    sub-int v16, v11, v9

    div-int/lit8 v14, v16, 0x2

    .local v14, nYoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v14, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v9           #nSrcDrawH:I
    .end local v10           #nSrcDrawW:I
    .end local v14           #nYoffset:I
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v10, v0

    .restart local v10       #nSrcDrawW:I
    move v9, v11

    .restart local v9       #nSrcDrawH:I
    sub-int v16, v12, v10

    div-int/lit8 v13, v16, 0x2

    .local v13, nXoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v13, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bmSrc"
    .parameter "overlay"
    .parameter "nTargetSize"

    .prologue
    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v4, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, nSrcH:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .local v11, paintDefault:Landroid/graphics/Paint;
    if-ne v8, v7, :cond_2

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .local v9, nW:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .local v5, nH:I
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ge v9, v0, :cond_5

    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    sub-int v15, p2, v5

    move/from16 v0, p2

    invoke-direct {v13, v14, v15, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v10, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v5           #nH:I
    .end local v9           #nW:I
    .end local v10           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v2, 0x1

    .local v2, bSrcLandscape:Z
    :goto_2
    if-eqz v2, :cond_4

    sub-int v12, v8, v7

    div-int/lit8 v6, v12, 0x2

    .local v6, nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v7

    invoke-direct {v12, v6, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #bSrcLandscape:Z
    :cond_4
    sub-int v12, v7, v8

    div-int/lit8 v6, v12, 0x2

    .restart local v6       #nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v8

    invoke-direct {v12, v13, v6, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    .restart local v5       #nH:I
    .restart local v9       #nW:I
    .restart local v10       #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bmRet:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method

.method public static getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bmRet:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method

.method public static getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "bmOverlay"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bmCenterCrop:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p3}, Landroid/provider/HtcUnionContact$ContactUtils;->drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "overlay"

    .prologue
    if-eqz p3, :cond_0

    array-length v2, p3

    if-gtz v2, :cond_2

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v2, 0x0

    array-length v3, p3

    invoke-static {p3, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, v0}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmRet:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getSimpleCallerNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, resultUri:Landroid/net/Uri;
    const-string v3, "content://contacts/simAndContacts/numbers"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x0

    .local v8, phonenumber:Ljava/lang/String;
    const-string v2, "number"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_0

    .end local v8           #phonenumber:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method public static getUnreadMessageQuertForMailAddressSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 12
    .parameter "r"
    .parameter "personId"

    .prologue
    const/4 v2, 0x0

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .local v11, mailmatch:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, mHasMailAddress:Z
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, mailcursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    const/4 v9, -0x1

    .local v9, mailIndex:I
    const-string v0, "data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v9           #mailIndex:I
    :cond_0
    :goto_0
    return-object v2

    .restart local v9       #mailIndex:I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    const-string v0, "   address in  (    "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, address:Ljava/lang/String;
    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, garb:I
    if-ltz v7, :cond_3

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v11

    :cond_3
    const-string v0, "  )  "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const-string v1, "  (  "

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  ) "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v6           #address:Ljava/lang/String;
    .end local v7           #garb:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v9           #mailIndex:I
    :cond_5
    if-eqz v8, :cond_0

    const-string v0, " AND read = 0 AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 ) "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getViewContactCardIntent(J)Landroid/content/Intent;
    .locals 3
    .parameter "personId"

    .prologue
    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcContactCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getViewOrEditMyContactCardIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcContactEditActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION_ME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONTACT_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getViewOrEditMyContactCardIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, intent:Landroid/content/Intent;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/provider/Contacts$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/high16 v0, 0x2000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v3, v7

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {}, Landroid/provider/HtcUnionContact$ContactUtils;->getEditMyContactCardIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_0
.end method

.method public static insertMyCotactCardInfoEntry(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/myContactCard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static isPeopleEvent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 11
    .parameter "context"
    .parameter "eventUri"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/HtcUnionContact$ContactUtils;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, eventCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .local v7, eventId:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "%s = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    .local v1, eventsMapUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/HtcUnionContact$ContactUtils;->EVENTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, eventsMapCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, result:Z
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static queryContactEmailAddresses(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "HtcUnionContact"

    const-string v1, "queryContactEmailAddresses: you should never use this api."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryContactMethodsInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "contact_methods"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, methodsUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$ContactMethodInfo;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, methodsCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-string v2, "HtcUnionContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactMethodsInfo invalid contact uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HtcUnionContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryContactMethodsInfo no contact methods"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v6

    goto :goto_0
.end method

.method public static queryContactsByName(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://contacts/people/filter/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryContactsByNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "person"

    aput-object v5, v2, v4

    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://contacts/phones/filter/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryFavoritesGroupId(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-wide/16 v7, 0x0

    :cond_0
    :goto_0
    return-wide v7

    :cond_1
    const-wide/16 v7, 0x0

    .local v7, result:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/groups/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$Group;->GROUP_NAME_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static queryGroupContains(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "personId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://contacts/people/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/groupmembership"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$Group;->GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryGroupMembers(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/contacts/group"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/HtcUnionContact$SmartDialing;->SMART_SEARCH_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryMissedCallCount(Landroid/content/ContentResolver;J)I
    .locals 8
    .parameter "r"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    const-string v0, "content://contacts/calls/missed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, MISSCALL_URI:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, nCount:I
    sget-object v2, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND new <> 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    invoke-static {}, Landroid/provider/HtcUnionContact;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HtcUnionContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bubble queryMissedCallCount personId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v7
.end method

.method public static queryMyCotactCardInfo(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/myContactCard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$MyContactCard;->MY_CONTACT_CARD_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryNonGroupMembers(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "content://contacts/contacts/exclude/group"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/HtcUnionContact$SmartDialing;->SMART_SEARCH_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryPeopleInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/HtcUnionContact$PeopleInfo;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, personCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-string v1, "HtcUnionContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPeopleInfo invalid contact uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HtcUnionContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPeopleInfo invalid contact uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v3, v6

    goto :goto_0
.end method

.method public static queryPhonesInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "phones"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, phonesUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$PhoneInfo;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, phonesCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-string v2, "HtcUnionContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPhonesInfo invalid contact uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HtcUnionContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPhonesInfo no phones "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v6

    goto :goto_0
.end method

.method public static queryUnreadEmailCount(Landroid/content/ContentResolver;J)I
    .locals 12
    .parameter "r"
    .parameter "personId"

    .prologue
    const/16 v6, 0x2c

    const/4 v4, 0x0

    const/4 v10, 0x0

    .local v10, nCount:I
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/HtcUnionContact;->UnreadEmailCountProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "person="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, addr:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, " _fromEmail in ("

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/provider/HtcUnionContact;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcUnionContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bubble queryUnreadEmailCount addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "content://mail/allmessagesCountUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, UNREAD_EMAIL_URI:Landroid/net/Uri;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, subCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "count"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v3           #UNREAD_EMAIL_URI:Landroid/net/Uri;
    .end local v11           #subCursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    .end local v8           #addr:Ljava/lang/StringBuilder;
    :cond_4
    invoke-static {}, Landroid/provider/HtcUnionContact;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HtcUnionContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bubble queryUnreadEmailCount personId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v10

    .restart local v3       #UNREAD_EMAIL_URI:Landroid/net/Uri;
    .restart local v8       #addr:Ljava/lang/StringBuilder;
    .restart local v11       #subCursor:Landroid/database/Cursor;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static queryUnreadMessageCount(Landroid/content/ContentResolver;J)I
    .locals 19
    .parameter "r"
    .parameter "personId"

    .prologue
    const/16 v8, 0xf0

    .local v8, MAX_WHERE_OR_DEPTH:I
    const-string v2, "content://mms-sms/allmessages"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, UNREAD_MESSAGE_URI:Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .local v12, messageCount:I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .local v16, phonematch:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .local v17, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/HtcUnionContact;->UnreadMessageCountProjection:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "person="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .local v15, phonecursor:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    const/4 v14, -0x1

    .local v14, numberIndex:I
    const-string v2, "pureNumber"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const/4 v13, 0x0

    .local v13, number:Ljava/lang/String;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .end local v13           #number:Ljava/lang/String;
    .end local v14           #numberIndex:I
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, times:I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13       #number:Ljava/lang/String;
    const-string v2, "PHONE_NUMBERS_EQUAL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(  address , "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  ) "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v18, v18, 0x1

    const/16 v2, 0xf0

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v18, 0x0

    const/4 v2, 0x0

    const-string v3, " ( "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ) AND read = 0 "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v12, v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v2, "  OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .end local v11           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13           #number:Ljava/lang/String;
    .end local v18           #times:I
    :cond_4
    invoke-static/range {p0 .. p2}, Landroid/provider/HtcUnionContact$ContactUtils;->getUnreadMessageQuertForMailAddressSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    .local v5, mailaddressSelection:Ljava/lang/String;
    if-eqz v5, :cond_5

    sget-object v4, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v12, v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {}, Landroid/provider/HtcUnionContact;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "HtcUnionContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bubble queryUnreadMessageCount personId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v12
.end method

.method public static setContactPhoto(Landroid/content/Context;JLandroid/graphics/Bitmap;)Z
    .locals 7
    .parameter "context"
    .parameter "personId"
    .parameter "photo"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, mResolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://contacts/people/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {p3, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v1, v3, v5}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static setPersonalRingtone(Landroid/content/Context;JLandroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "personId"
    .parameter "ringtoneUri"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "custom_ringtone"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://contacts/people/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    :cond_0
    const-string v3, "HtcUnionContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPersonalRingtone: invalid id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateGroupNameWithId(Landroid/content/Context;JLjava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "groupId"
    .parameter "name"

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move v2, v8

    :goto_0
    return v2

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v8

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v2, v4, p1

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/HtcUnionContact$Group;->QUERY_GROUPS_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/HtcUnionContact$Group;->GROUP_NAME_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    const-string v2, "name"

    invoke-virtual {v7, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    move v2, v8

    goto :goto_0
.end method

.method public static updateImageViewWithContactPhoto(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .parameter "context"
    .parameter "imageView"
    .parameter "contactUri"
    .parameter "placeholderImageResource"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "HtcUnionContact"

    const-string v3, "updateImageViewWithContactPhoto: OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcUnionContact"

    const-string v3, "updateImageViewWithContactPhoto: exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static updateImageViewWithGroupPhoto(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 2
    .parameter "context"
    .parameter "imageView"
    .parameter "groupUri"
    .parameter "placeholderImageResource"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, inputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static updateImageViewWithMyContactPhoto(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 12
    .parameter "context"
    .parameter "imageView"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://contacts/myContactCard"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, myContactUri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, builder:Ljava/lang/StringBuilder;
    const-string v3, "type"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .local v11, idxBlobData:I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v2, "blobdata"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .local v6, blobdata:[B
    if-eqz v6, :cond_2

    const/4 v2, 0x0

    array-length v3, v6

    invoke-static {v6, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #blobdata:[B
    .end local v7           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v6       #blobdata:[B
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v6           #blobdata:[B
    :catch_0
    move-exception v10

    .local v10, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v10           #iae:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static final updateImageViewWithMyContactPossiblePhoto(Landroid/content/ContentResolver;Landroid/widget/ImageView;ILandroid/graphics/BitmapFactory$Options;)V
    .locals 26
    .parameter "resolver"
    .parameter "imageView"
    .parameter "placeholderImageResource"
    .parameter "opts"

    .prologue
    const/16 v21, 0x0

    .local v21, result:Landroid/graphics/Bitmap;
    const-string v2, "content://contacts/myContactCard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, meContactUri:Landroid/net/Uri;
    const-string v8, "HTCContactUtils"

    .local v8, TAG:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid contact uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .local v16, idxType:I
    const-string v2, "subtype"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .local v15, idxSubType:I
    const-string v2, "data2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .local v14, idxData2:I
    const-string v2, "blobdata"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .local v13, idxBlobData:I
    const/16 v20, 0x0

    .local v20, photoBytes:[B
    const/4 v12, 0x0

    .local v12, facePhotoBytes:[B
    const/16 v18, 0x0

    .local v18, isGetData:Z
    const/16 v19, 0x0

    .local v19, isGetFBData:Z
    const/4 v9, -0x1

    .local v9, autoupdate:I
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .local v25, type:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .local v23, subtype:I
    sparse-switch v25, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-nez v18, :cond_2

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    :cond_2
    const/16 v18, 0x1

    goto :goto_1

    .end local v9           #autoupdate:I
    .end local v12           #facePhotoBytes:[B
    .end local v13           #idxBlobData:I
    .end local v14           #idxData2:I
    .end local v15           #idxSubType:I
    .end local v16           #idxType:I
    .end local v18           #isGetData:Z
    .end local v19           #isGetFBData:Z
    .end local v20           #photoBytes:[B
    .end local v23           #subtype:I
    .end local v25           #type:I
    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid column index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #autoupdate:I
    .restart local v12       #facePhotoBytes:[B
    .restart local v13       #idxBlobData:I
    .restart local v14       #idxData2:I
    .restart local v15       #idxSubType:I
    .restart local v16       #idxType:I
    .restart local v18       #isGetData:Z
    .restart local v19       #isGetFBData:Z
    .restart local v20       #photoBytes:[B
    .restart local v23       #subtype:I
    .restart local v25       #type:I
    :sswitch_1
    const v2, 0xff04

    move/from16 v0, v23

    if-ne v0, v2, :cond_4

    if-nez v19, :cond_3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    :cond_3
    const/16 v19, 0x1

    goto :goto_1

    :cond_4
    const v2, 0xff01

    move/from16 v0, v23

    if-ne v0, v2, :cond_1

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .local v22, str:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto :goto_1

    :catch_1
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    const/4 v9, -0x1

    goto :goto_1

    .end local v11           #e:Ljava/lang/Exception;
    .end local v22           #str:Ljava/lang/String;
    .end local v23           #subtype:I
    .end local v25           #type:I
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    const/16 v17, 0x0

    .local v17, isFaceBook:Z
    if-ltz v9, :cond_7

    and-int/lit8 v2, v9, 0x1

    if-lez v2, :cond_7

    const/16 v17, 0x1

    :goto_2
    if-eqz v17, :cond_8

    move-object/from16 v24, v12

    .local v24, target:[B
    :goto_3
    if-eqz v24, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .end local v24           #target:[B
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v24, v20

    goto :goto_3

    .restart local v24       #target:[B
    :cond_9
    invoke-virtual/range {p1 .. p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static updateMyCotactCardInfoEntry(Landroid/content/Context;Landroid/content/ContentValues;J)I
    .locals 5
    .parameter "context"
    .parameter "values"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/myContactCard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const-string v2, "HtcUnionContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCotactCardInfoEntry: invalid id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
