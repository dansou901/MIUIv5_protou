.class public Lmiui/imagefilters/ImageFilterBuilder;
.super Ljava/lang/Object;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/ImageFilterBuilder$ParamData;,
        Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFilterBuilder"


# instance fields
.field private mFilterName:Ljava/lang/String;

.field private mIgnoreWhenNotSupported:Z

.field private mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/imagefilters/ImageFilterBuilder$ParamData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    return-void
.end method

.method private static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "obj"
    .parameter "property"
    .parameter "value"

    .prologue
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, strPropertyMethod:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, propertyMethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, methods:[Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    move-object v8, v4

    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    if-nez v8, :cond_2

    const-string v10, "ImageFilterBuilder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown property:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",obj:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1
    return v10

    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v7, v10, v11

    .local v7, paramClass:Ljava/lang/Class;
    const/4 v6, 0x0

    .local v6, objValue:Ljava/lang/Object;
    :try_start_0
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, p2

    .end local v6           #objValue:Ljava/lang/Object;
    :goto_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_1

    .restart local v6       #objValue:Ljava/lang/Object;
    :cond_3
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, objValue:Ljava/lang/Integer;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_4
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .local v6, objValue:Ljava/lang/Float;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_5
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .local v6, objValue:Ljava/lang/Double;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_6
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, objValue:Ljava/lang/Boolean;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_7
    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, objValue:Landroid/graphics/Bitmap;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v7, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    .local v6, objValue:Ljava/lang/Enum;
    goto :goto_2

    .local v6, objValue:Ljava/lang/Object;
    :cond_9
    const-string v10, "ImageFilterBuilder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown param type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",obj:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",property:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    goto/16 :goto_1

    .end local v6           #objValue:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ImageFilterBuilder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set property fail. obj:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",property:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "paramName"
    .parameter "paramValue"
    .parameter "allowIgnore"

    .prologue
    iget-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    new-instance v1, Lmiui/imagefilters/ImageFilterBuilder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lmiui/imagefilters/ImageFilterBuilder$1;-><init>(Lmiui/imagefilters/ImageFilterBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createImageFilter()Lmiui/imagefilters/IImageFilter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, filter:Lmiui/imagefilters/IImageFilter;
    const-string v4, "Hsl"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lmiui/imagefilters/HslWrapFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/HslWrapFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    :goto_0
    iget-object v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;

    .local v2, param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    iget-object v4, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    iget-object v5, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamValue:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lmiui/imagefilters/ImageFilterBuilder;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mIgnoreWhenNotSupported:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-eqz v4, :cond_7

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_1
    :goto_1
    return-object v3

    :cond_2
    const-string v4, "Edges"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lmiui/imagefilters/EdgesFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/EdgesFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    :cond_3
    const-string v4, "Levels"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Lmiui/imagefilters/LevelsFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/LevelsFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    :cond_4
    const-string v4, "GrayScale"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Lmiui/imagefilters/GrayScaleFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/GrayScaleFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    :cond_5
    const-string v4, "BlendImage"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lmiui/imagefilters/BlendImageFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/BlendImageFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    :cond_6
    const-string v4, "ImageFilterBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown filter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-nez v4, :cond_1

    new-instance v3, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_7
    new-instance v3, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .parameter "filterName"

    .prologue
    iput-object p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreWhenNotSupported(Z)V
    .locals 0
    .parameter "isAllowIgnore"

    .prologue
    iput-boolean p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    return-void
.end method
