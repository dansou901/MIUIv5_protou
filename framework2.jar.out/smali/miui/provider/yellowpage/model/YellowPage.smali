.class public Lmiui/provider/yellowpage/model/YellowPage;
.super Ljava/lang/Object;
.source "YellowPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPage"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mBrief:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mGallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHot:Z

.field private mIsMasterPage:Z

.field private mIsPreset:Z

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoUrl:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;

.field private mProviderId:I

.field private mSocials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceId:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
    .parameter "yid"
    .parameter "name"
    .parameter "pinyin"
    .parameter "brief"
    .parameter "alias"
    .parameter "address"
    .parameter
    .parameter
    .parameter "thumbnailUrl"
    .parameter "photoUrl"
    .parameter
    .parameter "providerId"
    .parameter "url"
    .parameter "sourceUrl"
    .parameter "sourceId"
    .parameter "isMasterPage"
    .parameter "isPreset"
    .parameter "isHot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p8, phones:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .local p9, socials:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    .local p12, gallery:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mYid:J

    .line 47
    iput-object p3, p0, Lmiui/provider/yellowpage/model/YellowPage;->mName:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAlias:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAddress:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    .line 51
    if-eqz p8, :cond_0

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    iget-object v1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v1, p8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    iput-object p9, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSocials:Ljava/util/List;

    .line 55
    iput-object p10, p0, Lmiui/provider/yellowpage/model/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    .line 56
    iput-object p11, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhotoUrl:Ljava/lang/String;

    .line 57
    iput-object p12, p0, Lmiui/provider/yellowpage/model/YellowPage;->mGallery:Ljava/util/List;

    .line 58
    iput p13, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    .line 59
    move/from16 v0, p17

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsMasterPage:Z

    .line 60
    move/from16 v0, p18

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsPreset:Z

    .line 61
    move/from16 v0, p19

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsHot:Z

    .line 62
    move-object/from16 v0, p14

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mUrl:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lmiui/provider/yellowpage/model/YellowPage;->mBrief:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p15

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceUrl:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p16

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPinyin:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;
    .locals 47
    .parameter "json"

    .prologue
    .line 238
    :try_start_0
    new-instance v38, Lorg/json/JSONObject;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v38, jsonObj:Lorg/json/JSONObject;
    const-string/jumbo v4, "sid"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 240
    .local v5, yid:J
    const-string v4, "sName_py"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, pinyin:Ljava/lang/String;
    const-string v4, "sName"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, name:Ljava/lang/String;
    const-string v4, "aliasName"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 243
    .local v22, alias:Ljava/lang/String;
    const-string v4, "address"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 244
    .local v23, address:Ljava/lang/String;
    const-string/jumbo v4, "site"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 245
    .local v30, url:Ljava/lang/String;
    const-string/jumbo v4, "sourceUrl"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 246
    .local v31, sourceUrl:Ljava/lang/String;
    const-string/jumbo v4, "sourceId"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 247
    .local v32, sourceId:Ljava/lang/String;
    const-string v4, "shInfo"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 248
    .local v21, brief:Ljava/lang/String;
    const-string v4, "provider"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 250
    .local v11, pid:I
    const-string v4, "sType"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    const/16 v33, 0x1

    .line 251
    .local v33, isMasterPage:Z
    :goto_0
    const-string v4, "hot"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2

    const/16 v35, 0x1

    .line 252
    .local v35, isHotPage:Z
    :goto_1
    const-string v4, "buildIn"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_3

    const/16 v34, 0x1

    .line 255
    .local v34, isPreset:Z
    :goto_2
    const-string v4, "phone"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v39

    .line 256
    .local v39, phoneArray:Lorg/json/JSONArray;
    const/16 v24, 0x0

    .line 257
    .local v24, phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    if-eqz v39, :cond_5

    .line 258
    const/16 v37, 0x0

    .local v37, i:I
    :goto_3
    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_5

    .line 259
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v40

    .line 260
    .local v40, phoneJson:Lorg/json/JSONObject;
    const-string v4, "phone"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, number:Ljava/lang/String;
    const-string v4, "contactName"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, tag:Ljava/lang/String;
    const-string v4, "contactName_py"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, tagPinyin:Ljava/lang/String;
    const-string v4, "hide"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v13, 0x1

    .line 264
    .local v13, visible:Z
    :goto_4
    if-nez v24, :cond_0

    .line 265
    new-instance v24, Ljava/util/ArrayList;

    .end local v24           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v24       #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    :cond_0
    new-instance v4, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v15}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v37, v37, 0x1

    goto :goto_3

    .line 250
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v13           #visible:Z
    .end local v15           #tagPinyin:Ljava/lang/String;
    .end local v24           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .end local v33           #isMasterPage:Z
    .end local v34           #isPreset:Z
    .end local v35           #isHotPage:Z
    .end local v37           #i:I
    .end local v39           #phoneArray:Lorg/json/JSONArray;
    .end local v40           #phoneJson:Lorg/json/JSONObject;
    :cond_1
    const/16 v33, 0x0

    goto :goto_0

    .line 251
    .restart local v33       #isMasterPage:Z
    :cond_2
    const/16 v35, 0x0

    goto :goto_1

    .line 252
    .restart local v35       #isHotPage:Z
    :cond_3
    const/16 v34, 0x0

    goto :goto_2

    .line 263
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v15       #tagPinyin:Ljava/lang/String;
    .restart local v24       #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .restart local v34       #isPreset:Z
    .restart local v37       #i:I
    .restart local v39       #phoneArray:Lorg/json/JSONArray;
    .restart local v40       #phoneJson:Lorg/json/JSONObject;
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 274
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v15           #tagPinyin:Ljava/lang/String;
    .end local v37           #i:I
    .end local v40           #phoneJson:Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v4, "snsInfo"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v43

    .line 275
    .local v43, socialArray:Lorg/json/JSONArray;
    const/16 v25, 0x0

    .line 276
    .local v25, socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    if-eqz v43, :cond_6

    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 277
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .restart local v25       #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    const/16 v37, 0x0

    .restart local v37       #i:I
    :goto_5
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_6

    .line 279
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v44

    .line 280
    .local v44, socialJson:Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 281
    .local v46, ypUrl:Ljava/lang/String;
    const-string v4, "name"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 282
    .local v45, ypName:Ljava/lang/String;
    const-string v4, "provider"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v41

    .line 283
    .local v41, providerId:I
    new-instance v42, Lmiui/provider/yellowpage/model/Social;

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lmiui/provider/yellowpage/model/Social;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    .local v42, social:Lmiui/provider/yellowpage/model/Social;
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v37, v37, 0x1

    goto :goto_5

    .line 288
    .end local v37           #i:I
    .end local v41           #providerId:I
    .end local v42           #social:Lmiui/provider/yellowpage/model/Social;
    .end local v44           #socialJson:Lorg/json/JSONObject;
    .end local v45           #ypName:Ljava/lang/String;
    .end local v46           #ypUrl:Ljava/lang/String;
    :cond_6
    const-string v4, "photo"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 289
    .local v27, photoUrl:Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 291
    .local v26, thumbnailUrl:Ljava/lang/String;
    new-instance v16, Lmiui/provider/yellowpage/model/YellowPage;

    const/16 v28, 0x0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v14

    move/from16 v29, v11

    invoke-direct/range {v16 .. v35}, Lmiui/provider/yellowpage/model/YellowPage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 294
    .local v16, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/provider/yellowpage/model/YellowPage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v5           #yid:J
    .end local v7           #name:Ljava/lang/String;
    .end local v11           #pid:I
    .end local v14           #pinyin:Ljava/lang/String;
    .end local v16           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    .end local v21           #brief:Ljava/lang/String;
    .end local v22           #alias:Ljava/lang/String;
    .end local v23           #address:Ljava/lang/String;
    .end local v24           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .end local v25           #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    .end local v26           #thumbnailUrl:Ljava/lang/String;
    .end local v27           #photoUrl:Ljava/lang/String;
    .end local v30           #url:Ljava/lang/String;
    .end local v31           #sourceUrl:Ljava/lang/String;
    .end local v32           #sourceId:Ljava/lang/String;
    .end local v33           #isMasterPage:Z
    .end local v34           #isPreset:Z
    .end local v35           #isHotPage:Z
    .end local v38           #jsonObj:Lorg/json/JSONObject;
    .end local v39           #phoneArray:Lorg/json/JSONArray;
    .end local v43           #socialArray:Lorg/json/JSONArray;
    :goto_6
    return-object v16

    .line 296
    :catch_0
    move-exception v36

    .line 297
    .local v36, e:Lorg/json/JSONException;
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONException;->printStackTrace()V

    .line 299
    const/16 v16, 0x0

    goto :goto_6
.end method

.method private setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 303
    iput-object p1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mContent:Ljava/lang/String;

    .line 304
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mGallery:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mYid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 233
    :cond_0
    :goto_0
    return-object v3

    .line 217
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 218
    .local v4, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, miuiNormalizedNumber:Ljava/lang/String;
    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 221
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, normalizedNumber:Ljava/lang/String;
    iget-object v6, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 224
    iget-object v6, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/provider/yellowpage/model/YellowPagePhone;

    .line 225
    .local v3, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    invoke-virtual {v3}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_3
    move-object v3, v5

    .line 233
    goto :goto_0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSocials:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsHot:Z

    return v0
.end method

.method public isMasterPage()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsMasterPage:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsPreset:Z

    return v0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
