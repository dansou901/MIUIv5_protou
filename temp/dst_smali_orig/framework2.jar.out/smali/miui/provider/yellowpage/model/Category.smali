.class public Lmiui/provider/yellowpage/model/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private mCustomName:Ljava/lang/String;

.field private mId:I

.field private mNameMap:Ljava/util/HashMap;
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

.field private mNames:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 10
    .parameter "id"
    .parameter "names"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/provider/yellowpage/model/Category;->mId:I

    iput-object p2, p0, Lmiui/provider/yellowpage/model/Category;->mNames:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/provider/yellowpage/model/Category;->isUserCustom()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mNames:Ljava/lang/String;

    iput-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mCustomName:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mNames:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, namesArray:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .local v6, nameEntry:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, nameArray:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v2, v5, v8

    .local v2, language:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v4, v5, v8

    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mNameMap:Ljava/util/HashMap;

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mNameMap:Ljava/util/HashMap;

    :cond_2
    iget-object v8, p0, Lmiui/provider/yellowpage/model/Category;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCategoryAllNames()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Category;->mNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/yellowpage/model/Category;->mId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/provider/yellowpage/model/Category;->isUserCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/provider/yellowpage/model/Category;->mCustomName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Category;->mNameMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public isUserCustom()Z
    .locals 2

    .prologue
    iget v0, p0, Lmiui/provider/yellowpage/model/Category;->mId:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
