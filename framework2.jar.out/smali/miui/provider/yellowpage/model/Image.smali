.class public Lmiui/provider/yellowpage/model/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/model/Image$ImageProcessor;
    }
.end annotation


# instance fields
.field private mImageProcesser:Lmiui/provider/yellowpage/model/Image$ImageProcessor;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 24
    if-ne p1, p0, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    .line 28
    :cond_0
    instance-of v1, p1, Lmiui/provider/yellowpage/model/Image;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 29
    check-cast v0, Lmiui/provider/yellowpage/model/Image;

    .line 30
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    iget-object v1, v0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 32
    .end local v0           #image:Lmiui/provider/yellowpage/model/Image;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "originImage"

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mImageProcesser:Lmiui/provider/yellowpage/model/Image$ImageProcessor;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Image;->mImageProcesser:Lmiui/provider/yellowpage/model/Image$ImageProcessor;

    invoke-interface {v0, p1}, Lmiui/provider/yellowpage/model/Image$ImageProcessor;->processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 49
    .end local p1
    :cond_0
    return-object p1
.end method

.method public setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V
    .locals 0
    .parameter "processor"

    .prologue
    .line 60
    iput-object p1, p0, Lmiui/provider/yellowpage/model/Image;->mImageProcesser:Lmiui/provider/yellowpage/model/Image$ImageProcessor;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Image url is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/provider/yellowpage/model/Image;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
