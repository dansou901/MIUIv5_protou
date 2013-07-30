.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    array-length v1, p4

    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 7
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, -0x1

    const/4 v6, 0x0

    .local v6, column:Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, iMetadata:I
    sparse-switch p1, :sswitch_data_0

    const/4 v3, 0x0

    .local v3, type:I
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, p1, v3, v1}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    :goto_1
    return-object v0

    .end local v3           #type:I
    :sswitch_0
    const-string v6, "storage_id"

    const/4 v3, 0x6

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_1
    const-string v6, "format"

    const/4 v3, 0x4

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_2
    const/4 v3, 0x4

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_3
    const-string v6, "_size"

    const/16 v3, 0x8

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_4
    const-string v6, "_data"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_5
    const-string v6, "title"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_6
    const-string v6, "date_modified"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_7
    const-string v6, "date_added"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_8
    const-string v6, "year"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_9
    const-string v6, "parent"

    const/4 v3, 0x6

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_a
    const-string v6, "storage_id"

    const/16 v3, 0xa

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_b
    const-string v6, "duration"

    const/4 v3, 0x6

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_c
    const-string v6, "track"

    const/4 v3, 0x4

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_d
    const-string v6, "_display_name"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_e
    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_f
    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_10
    const-string v6, "album_artist"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_11
    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_12
    const-string v6, "composer"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_13
    const-string v6, "description"

    const v3, 0xffff

    .restart local v3       #type:I
    goto :goto_0

    .end local v3           #type:I
    :sswitch_14
    const/4 v3, 0x4

    .restart local v3       #type:I
    const/16 v5, 0x65

    goto :goto_0

    .end local v3           #type:I
    :sswitch_15
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x66

    goto :goto_0

    .end local v3           #type:I
    :sswitch_16
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x67

    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_17
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x6a

    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_18
    const-string v6, "width"

    const/4 v3, 0x6

    .restart local v3       #type:I
    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_19
    const-string v6, "height"

    const/4 v3, 0x6

    .restart local v3       #type:I
    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_1a
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x68

    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_1b
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x6a

    goto/16 :goto_0

    .end local v3           #type:I
    :sswitch_1c
    const/4 v3, 0x6

    .restart local v3       #type:I
    const/16 v5, 0x69

    goto/16 :goto_0

    :cond_0
    if-le v5, v4, :cond_1

    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;IIII)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-direct {v0, p0, p1, v3, v4}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc87 -> :sswitch_18
        0xdc88 -> :sswitch_19
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde93 -> :sswitch_15
        0xde94 -> :sswitch_14
        0xde99 -> :sswitch_16
        0xde9a -> :sswitch_17
        0xde9b -> :sswitch_1a
        0xde9c -> :sswitch_1b
        0xde9d -> :sswitch_1c
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private getFormatType(Ljava/lang/Long;)I
    .locals 2
    .parameter "iFormat"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    .local v0, format:I
    sparse-switch v0, :sswitch_data_0

    const/16 v1, 0x3000

    :goto_0
    return v1

    :sswitch_0
    const/16 v1, 0x3009

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x300b

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x3801

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    add-int/lit16 v0, v2, 0xff

    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v7, :cond_0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v7, :cond_0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v0

    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    goto :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string v2, "queryGenre exception"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catch_0
    move-exception v0

    if-eqz v7, :cond_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v7, :cond_0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 38
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    const/4 v3, 0x1

    move/from16 v0, p3

    if-le v0, v3, :cond_1

    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const v5, 0xa808

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    const/16 v27, 0x1

    .local v27, mEnableDataCache:Z
    if-nez p2, :cond_7

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-object v3, v3, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v33

    .local v33, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v33, :cond_7

    const/16 v22, 0x1

    .local v22, count:I
    const/16 v19, 0x0

    .local v19, bDoQuery:Z
    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getPropertyList.length: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    mul-int v3, v3, v22

    const/16 v5, 0x2001

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .local v2, result:Landroid/mtp/MtpPropertyList;
    const/16 v31, 0x0

    .local v31, propertyIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_6

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v3, v31

    .local v30, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .local v4, propertyCode:I
    sparse-switch v4, :sswitch_data_0

    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled property="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    :sswitch_0
    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    move-object/from16 v36, v0

    .local v36, value:Ljava/lang/String;
    if-eqz v36, :cond_3

    const-string v3, "/"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    :cond_2
    invoke-static/range {v36 .. v36}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v3, "MtpPropertyGroup"

    const-string v5, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    .end local v36           #value:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, name:Ljava/lang/String;
    if-nez v28, :cond_4

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    invoke-static/range {v28 .. v28}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_4
    if-eqz v28, :cond_5

    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v3, "MtpPropertyGroup"

    const-string v5, "[USBF] PROPERTY_NAME: skip invalid path null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    .end local v28           #name:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_5
    move-object/from16 v0, v33

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    int-to-long v6, v3

    .local v6, puid:J
    const/16 v3, 0x20

    shl-long/2addr v6, v3

    move/from16 v0, p1

    int-to-long v8, v0

    add-long/2addr v6, v8

    const/16 v5, 0xa

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .end local v6           #puid:J
    :sswitch_6
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v33

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_8
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v33

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_9
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v33

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_a
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbumArtist:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_b
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszComposer:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_c
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszDescription:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszDisplayName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_e
    move-object/from16 v0, v30

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/mtp/MtpDatabase$FileCache;->miDuration:J

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_f
    move-object/from16 v0, v33

    iget v0, v0, Landroid/mtp/MtpDatabase$FileCache;->miOriginalReleaseDate:I

    move/from16 v37, v0

    .local v37, year:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "0101T000000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .local v23, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .end local v23           #dateTime:Ljava/lang/String;
    .end local v37           #year:I
    :sswitch_10
    const/4 v11, 0x4

    move-object/from16 v0, v33

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_11
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_12
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_13
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_14
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    :sswitch_15
    const/4 v11, 0x6

    const-wide/16 v12, 0x0

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .end local v4           #propertyCode:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_6
    if-eqz v19, :cond_0

    .end local v2           #result:Landroid/mtp/MtpPropertyList;
    .end local v19           #bDoQuery:Z
    .end local v22           #count:I
    .end local v31           #propertyIndex:I
    .end local v33           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    :cond_7
    if-nez p2, :cond_b

    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    const/4 v11, 0x0

    .local v11, where:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, whereArgs:[Ljava/lang/String;
    :goto_3
    const/16 v20, 0x0

    .local v20, c:Landroid/database/Cursor;
    if-gtz p3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_e

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    if-nez v20, :cond_e

    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v5, 0x2009

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v20, :cond_0

    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #where:Ljava/lang/String;
    .end local v12           #whereArgs:[Ljava/lang/String;
    .end local v20           #c:Landroid/database/Cursor;
    :cond_9
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    .restart local v12       #whereArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    const-string v11, "parent=?"

    .restart local v11       #where:Ljava/lang/String;
    goto :goto_3

    .end local v11           #where:Ljava/lang/String;
    :cond_a
    const-string v11, "_id=?"

    .restart local v11       #where:Ljava/lang/String;
    goto :goto_3

    .end local v11           #where:Ljava/lang/String;
    .end local v12           #whereArgs:[Ljava/lang/String;
    :cond_b
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    const-string v11, "format=?"

    .restart local v11       #where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    .restart local v12       #whereArgs:[Ljava/lang/String;
    goto :goto_3

    .end local v11           #where:Ljava/lang/String;
    .end local v12           #whereArgs:[Ljava/lang/String;
    :cond_c
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    .restart local v12       #whereArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    const-string v11, "parent=? AND format=?"

    .restart local v11       #where:Ljava/lang/String;
    goto :goto_3

    .end local v11           #where:Ljava/lang/String;
    :cond_d
    const-string v11, "_id=? AND format=?"

    .restart local v11       #where:Ljava/lang/String;
    goto :goto_3

    .restart local v20       #c:Landroid/database/Cursor;
    :cond_e
    if-nez v20, :cond_10

    const/16 v22, 0x1

    .restart local v22       #count:I
    :goto_5
    :try_start_1
    new-instance v2, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    mul-int v3, v3, v22

    const/16 v5, 0x2001

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .restart local v2       #result:Landroid/mtp/MtpPropertyList;
    const/16 v35, 0x0

    .local v35, szFileName:Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, iFormat:Ljava/lang/Long;
    const/16 v34, 0x0

    .local v34, sRetriever:Landroid/media/MediaMetadataRetriever;
    const/16 v29, 0x0

    .local v29, objectIndex:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_1a

    if-eqz v20, :cond_f

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 p1, v0

    :cond_f
    const/16 v31, 0x0

    .restart local v31       #propertyIndex:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v3, v31

    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .restart local v4       #propertyCode:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .local v21, column:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->miMetadata:I

    move/from16 v26, v0

    .local v26, iMetadata:I
    sparse-switch v4, :sswitch_data_1

    :goto_8
    move-object/from16 v0, v30

    iget v3, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v5, 0xffff

    if-ne v3, v5, :cond_17

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    :goto_9
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .end local v2           #result:Landroid/mtp/MtpPropertyList;
    .end local v4           #propertyCode:I
    .end local v21           #column:I
    .end local v22           #count:I
    .end local v25           #iFormat:Ljava/lang/Long;
    .end local v26           #iMetadata:I
    .end local v29           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31           #propertyIndex:I
    .end local v34           #sRetriever:Landroid/media/MediaMetadataRetriever;
    .end local v35           #szFileName:Ljava/lang/String;
    :cond_10
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_5

    .restart local v2       #result:Landroid/mtp/MtpPropertyList;
    .restart local v4       #propertyCode:I
    .restart local v21       #column:I
    .restart local v22       #count:I
    .restart local v25       #iFormat:Ljava/lang/Long;
    .restart local v26       #iMetadata:I
    .restart local v29       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31       #propertyIndex:I
    .restart local v34       #sRetriever:Landroid/media/MediaMetadataRetriever;
    .restart local v35       #szFileName:Ljava/lang/String;
    :sswitch_16
    const/16 v16, 0x4

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .end local v2           #result:Landroid/mtp/MtpPropertyList;
    .end local v4           #propertyCode:I
    .end local v21           #column:I
    .end local v22           #count:I
    .end local v25           #iFormat:Ljava/lang/Long;
    .end local v26           #iMetadata:I
    .end local v29           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31           #propertyIndex:I
    .end local v34           #sRetriever:Landroid/media/MediaMetadataRetriever;
    .end local v35           #szFileName:Ljava/lang/String;
    :catch_0
    move-exception v24

    .local v24, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v5, 0x2002

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v20, :cond_0

    goto/16 :goto_4

    .end local v24           #e:Landroid/os/RemoteException;
    .restart local v2       #result:Landroid/mtp/MtpPropertyList;
    .restart local v4       #propertyCode:I
    .restart local v21       #column:I
    .restart local v22       #count:I
    .restart local v25       #iFormat:Ljava/lang/Long;
    .restart local v26       #iMetadata:I
    .restart local v29       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31       #propertyIndex:I
    .restart local v34       #sRetriever:Landroid/media/MediaMetadataRetriever;
    .restart local v35       #szFileName:Ljava/lang/String;
    :sswitch_17
    :try_start_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .restart local v36       #value:Ljava/lang/String;
    if-eqz v36, :cond_13

    const-string v3, "/"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    :goto_a
    move-object/from16 v35, v36

    goto :goto_9

    :cond_11
    invoke-static/range {v36 .. v36}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    .end local v2           #result:Landroid/mtp/MtpPropertyList;
    .end local v4           #propertyCode:I
    .end local v21           #column:I
    .end local v22           #count:I
    .end local v25           #iFormat:Ljava/lang/Long;
    .end local v26           #iMetadata:I
    .end local v29           #objectIndex:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31           #propertyIndex:I
    .end local v34           #sRetriever:Landroid/media/MediaMetadataRetriever;
    .end local v35           #szFileName:Ljava/lang/String;
    .end local v36           #value:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v20, :cond_12

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v3

    .restart local v2       #result:Landroid/mtp/MtpPropertyList;
    .restart local v4       #propertyCode:I
    .restart local v21       #column:I
    .restart local v22       #count:I
    .restart local v25       #iFormat:Ljava/lang/Long;
    .restart local v26       #iMetadata:I
    .restart local v29       #objectIndex:I
    .restart local v30       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31       #propertyIndex:I
    .restart local v34       #sRetriever:Landroid/media/MediaMetadataRetriever;
    .restart local v35       #szFileName:Ljava/lang/String;
    .restart local v36       #value:Ljava/lang/String;
    :cond_13
    const/16 v3, 0x2009

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_9

    .end local v36           #value:Ljava/lang/String;
    :sswitch_18
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28       #name:Ljava/lang/String;
    if-nez v28, :cond_14

    const-string v3, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_14
    if-nez v28, :cond_15

    const-string v3, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_15

    invoke-static/range {v28 .. v28}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_15
    if-eqz v28, :cond_16

    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    :cond_16
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_9

    .end local v28           #name:Ljava/lang/String;
    :sswitch_19
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1a
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .restart local v37       #year:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "0101T000000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .restart local v23       #dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    .end local v23           #dateTime:Ljava/lang/String;
    .end local v37           #year:I
    :sswitch_1b
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .restart local v6       #puid:J
    const/16 v3, 0x20

    shl-long/2addr v6, v3

    move/from16 v0, p1

    int-to-long v8, v0

    add-long/2addr v6, v8

    const/16 v5, 0xa

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    .end local v6           #puid:J
    :sswitch_1c
    const/16 v16, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :sswitch_1d
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1e
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1f
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_20
    const/16 v16, 0x6

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :sswitch_21
    const/16 v16, 0x4

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :sswitch_22
    const/16 v16, 0x6

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :sswitch_23
    const/16 v16, 0x6

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :sswitch_24
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, v30

    iget v3, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v3, :cond_18

    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    const-wide/16 v17, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-object v13, v2

    move/from16 v14, p1

    move v15, v4

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .end local v4           #propertyCode:I
    .end local v21           #column:I
    .end local v26           #iMetadata:I
    .end local v30           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_19
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .end local v31           #propertyIndex:I
    :cond_1a
    const/16 v35, 0x0

    const/16 v25, 0x0

    if-eqz v34, :cond_1b

    :try_start_5
    throw v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1b
    :goto_b
    if-eqz v20, :cond_0

    goto/16 :goto_4

    :catch_1
    move-exception v32

    .local v32, sEx:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v3, "MtpPropertyGroup"

    const-string v5, "RuntimeException"

    move-object/from16 v0, v32

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_8
        0xdc02 -> :sswitch_6
        0xdc03 -> :sswitch_0
        0xdc04 -> :sswitch_7
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_11
        0xdc48 -> :sswitch_c
        0xdc4e -> :sswitch_4
        0xdc87 -> :sswitch_15
        0xdc88 -> :sswitch_15
        0xdc89 -> :sswitch_e
        0xdc8b -> :sswitch_10
        0xdc8c -> :sswitch_13
        0xdc96 -> :sswitch_b
        0xdc99 -> :sswitch_f
        0xdc9a -> :sswitch_12
        0xdc9b -> :sswitch_a
        0xdce0 -> :sswitch_d
        0xde93 -> :sswitch_15
        0xde94 -> :sswitch_14
        0xde99 -> :sswitch_15
        0xde9a -> :sswitch_15
        0xde9b -> :sswitch_15
        0xde9c -> :sswitch_15
        0xde9d -> :sswitch_15
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xdc02 -> :sswitch_24
        0xdc03 -> :sswitch_16
        0xdc07 -> :sswitch_17
        0xdc09 -> :sswitch_19
        0xdc41 -> :sswitch_1b
        0xdc44 -> :sswitch_18
        0xdc46 -> :sswitch_1d
        0xdc4e -> :sswitch_19
        0xdc87 -> :sswitch_23
        0xdc88 -> :sswitch_23
        0xdc8b -> :sswitch_1c
        0xdc8c -> :sswitch_1f
        0xdc99 -> :sswitch_1a
        0xdc9a -> :sswitch_1e
        0xde93 -> :sswitch_22
        0xde94 -> :sswitch_21
        0xde99 -> :sswitch_22
        0xde9a -> :sswitch_22
        0xde9b -> :sswitch_20
        0xde9c -> :sswitch_20
        0xde9d -> :sswitch_20
    .end sparse-switch
.end method
