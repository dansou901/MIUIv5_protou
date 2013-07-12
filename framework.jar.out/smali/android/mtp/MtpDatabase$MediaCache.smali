.class public Landroid/mtp/MtpDatabase$MediaCache;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCache"
.end annotation


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpDatabase$FileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaProvider:Landroid/content/IContentProvider;


# direct methods
.method constructor <init>(Landroid/content/IContentProvider;)V
    .locals 7
    .parameter "provider"

    .prologue
    const-wide/16 v5, 0x400

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    .line 125
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 127
    .local v0, sMemInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    div-long/2addr v1, v5

    const-wide/32 v3, 0xbb800

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 129
    const/16 v1, 0x1770

    invoke-static {v1}, Landroid/mtp/MtpDatabase;->access$002(I)I

    .line 130
    :cond_0
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",MediaCacheLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/mtp/MtpDatabase;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method


# virtual methods
.method public invalid(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;
    .locals 6
    .parameter "iHandle"
    .parameter "sUri"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 153
    .local v1, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    iget-object v2, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    check-cast v1, Landroid/mtp/MtpDatabase$FileCache;

    .line 155
    .restart local v1       #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-nez v1, :cond_1

    .line 156
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, sCur:Landroid/database/Cursor;
    iget-object v2, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    check-cast v1, Landroid/mtp/MtpDatabase$FileCache;

    .line 159
    .restart local v1       #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v0           #sCur:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :cond_1
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] queryFileById.mCache:size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryFilepathById(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "iHandle"
    .parameter "uri"

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v0

    .line 234
    .local v0, f:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, v0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryObjectInfoCache(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "sUri"
    .parameter "szSelection"
    .parameter "aszSelectionArgs"

    .prologue
    .line 187
    const/16 v24, 0x0

    .line 191
    .local v24, sCur:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {}, Landroid/mtp/MtpDatabase;->access$100()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v24

    .line 192
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 193
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 194
    .local v23, iRowId:Ljava/lang/Integer;
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBF] queryObjectInfoCache.mCache:Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 197
    new-instance v2, Landroid/mtp/MtpDatabase$FileCache;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v15, 0x9

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xb

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xc

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v20, 0xd

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0xe

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0xf

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v2 .. v22}, Landroid/mtp/MtpDatabase$FileCache;-><init>(IIIILjava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 202
    .local v2, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {}, Landroid/mtp/MtpDatabase;->access$000()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v23

    .end local v23           #iRowId:Ljava/lang/Integer;
    check-cast v23, Ljava/lang/Integer;

    .line 206
    .restart local v23       #iRowId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    .end local v2           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    .end local v23           #iRowId:Ljava/lang/Integer;
    :catch_0
    move-exception v25

    .line 224
    .local v25, sEx:Landroid/os/RemoteException;
    const-string v3, "MtpDatabase"

    const-string v4, "RemoteException"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v25           #sEx:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-object v24

    .line 212
    :cond_2
    if-nez v24, :cond_3

    .line 213
    :try_start_1
    const-string v3, "MtpDatabase"

    const-string v4, "[USBF] queryObjectInfoCache.mCache:Count=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_3
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBF] queryObjectInfoCache.mCache:Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    .line 137
    return-void
.end method
