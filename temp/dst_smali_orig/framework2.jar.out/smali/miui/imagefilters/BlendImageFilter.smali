.class public Lmiui/imagefilters/BlendImageFilter;
.super Ljava/lang/Object;
.source "BlendImageFilter.java"

# interfaces
.implements Lmiui/imagefilters/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;,
        Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$Blender;
    }
.end annotation


# static fields
.field static final BLEND_TYPE_COLOR:I = 0x15

.field static final BLEND_TYPE_COLOR_BURN:I = 0xa

.field static final BLEND_TYPE_COLOR_DODGE:I = 0x9

.field static final BLEND_TYPE_DARKEN:I = 0x3

.field static final BLEND_TYPE_DIFFERENCE:I = 0x5

.field static final BLEND_TYPE_DIVIDE:I = 0x17

.field static final BLEND_TYPE_EXCLUSION:I = 0x12

.field static final BLEND_TYPE_HARD_LIGHT:I = 0xc

.field static final BLEND_TYPE_HARD_MIX:I = 0x11

.field static final BLEND_TYPE_HUE:I = 0x13

.field static final BLEND_TYPE_LIGHTEN:I = 0x4

.field static final BLEND_TYPE_LINEAR_BURN:I = 0x7

.field static final BLEND_TYPE_LINEAR_DODGE:I = 0x6

.field static final BLEND_TYPE_LINEAR_LIGHT:I = 0xf

.field static final BLEND_TYPE_LUMINOSITY:I = 0x16

.field static final BLEND_TYPE_MULTIPLY:I = 0x1

.field static final BLEND_TYPE_NORMAL:I = 0x0

.field static final BLEND_TYPE_OPACITY:I = 0xb

.field static final BLEND_TYPE_OVERLAY:I = 0x8

.field static final BLEND_TYPE_PIN_LIGHT:I = 0x10

.field static final BLEND_TYPE_SATURATION:I = 0x14

.field static final BLEND_TYPE_SCREEN:I = 0x2

.field static final BLEND_TYPE_SOFT_LIGHT:I = 0xd

.field static final BLEND_TYPE_SUBTRACT:I = 0x18

.field static final BLEND_TYPE_VIVID_LIGHT:I = 0xe

.field static final TAG:Ljava/lang/String; = "BlendImageFilter"


# instance fields
.field private mBlendType:I

.field private mInputImage:Lmiui/imagefilters/ImageData;

.field private mInputImageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/imagefilters/ImageData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInputImageOnTop:Z

.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
    .locals 3

    .prologue
    iget v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blender type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$1;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$1;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$2;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$2;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$3;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$3;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$4;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$4;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$5;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$5;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$6;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$6;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$7;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$7;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$8;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$8;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$9;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$9;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$10;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$10;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$11;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$11;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$12;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$12;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$13;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$13;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$14;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$14;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$15;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$15;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$16;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$16;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$17;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$17;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$18;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$18;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_12
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$19;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$19;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_13
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$20;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$20;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_14
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$21;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$21;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :pswitch_15
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$22;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$22;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$23;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$23;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$24;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$24;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$25;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$25;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_18
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$26;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$26;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_1

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$27;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$27;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_2

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$28;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$28;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_3

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$29;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$29;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_4

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$30;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$30;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_5

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$31;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$31;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_6

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$32;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$32;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_7

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$33;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$33;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_8

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$34;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$34;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_9

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$35;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$35;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_a

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$36;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$36;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_b

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$37;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$37;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_c

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$38;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$38;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_d

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$39;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$39;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_e

    new-instance v0, Lmiui/imagefilters/BlendImageFilter$40;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$40;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport porter duff mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private mergeWidthHeight(II)I
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image\'s width or height to large:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    return v0
.end method

.method private obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v5

    .local v5, widthHeight:I
    iget-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    if-nez v6, :cond_0

    const/4 v0, 0x0

    .local v0, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lmiui/imagefilters/ImageData;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/imagefilters/ImageData;

    :goto_1
    return-object v6

    .end local v0           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lmiui/imagefilters/ImageData;>;"
    :cond_0
    iget-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v0, v6

    goto :goto_0

    .restart local v0       #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lmiui/imagefilters/ImageData;>;"
    :cond_1
    iget-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v6, v6, Lmiui/imagefilters/ImageData;->width:I

    iget-object v7, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v7, v7, Lmiui/imagefilters/ImageData;->height:I

    invoke-direct {p0, v6, v7}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v4

    .local v4, originWidthHeight:I
    if-ne v4, v5, :cond_2

    iget-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    invoke-static {v6}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, originBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {v3, p1, p2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, newBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lmiui/imagefilters/ImageData;->bitampToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v2

    .local v2, newImageData:Lmiui/imagefilters/ImageData;
    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    move-object v6, v2

    goto :goto_1
.end method


# virtual methods
.method public process(Lmiui/imagefilters/ImageData;)V
    .locals 14
    .parameter "imgData"

    .prologue
    iget-object v13, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    if-nez v13, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;

    move-result-object v0

    .local v0, blendable:Lmiui/imagefilters/BlendImageFilter$Blender;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;

    move-result-object v7

    .local v7, porterDuffBlender:Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
    if-eqz v7, :cond_0

    iget v10, p1, Lmiui/imagefilters/ImageData;->width:I

    .local v10, width:I
    iget v5, p1, Lmiui/imagefilters/ImageData;->height:I

    .local v5, height:I
    iget-object v6, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .local v6, pixels:[I
    move-object v4, v6

    .local v4, dstPixels:[I
    invoke-direct {p0, v10, v5}, Lmiui/imagefilters/BlendImageFilter;->obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;

    move-result-object v13

    iget-object v9, v13, Lmiui/imagefilters/ImageData;->pixels:[I

    .local v9, srcPixels:[I
    iget-boolean v13, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    if-nez v13, :cond_2

    move-object v4, v9

    move-object v9, v6

    :cond_2
    const/4 v11, 0x0

    .local v11, x:I
    :goto_0
    if-ge v11, v10, :cond_0

    const/4 v12, 0x0

    .local v12, y:I
    :goto_1
    if-ge v12, v5, :cond_3

    mul-int v13, v12, v10

    add-int v2, v13, v11

    .local v2, colorIndex:I
    aget v3, v4, v2

    .local v3, dstArgb:I
    aget v8, v9, v2

    .local v8, srcArgb:I
    invoke-virtual {v0, v3, v8}, Lmiui/imagefilters/BlendImageFilter$Blender;->blendColor(II)I

    move-result v1

    .local v1, blendedSrcArgb:I
    invoke-virtual {v7, v3, v1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;->blendFinal(II)I

    move-result v13

    aput v13, v6, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v1           #blendedSrcArgb:I
    .end local v2           #colorIndex:I
    .end local v3           #dstArgb:I
    .end local v8           #srcArgb:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public setBlendType(I)V
    .locals 0
    .parameter "blendType"

    .prologue
    iput p1, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    return-void
.end method

.method public setBlendTypeName(Ljava/lang/String;)V
    .locals 3
    .parameter "typeName"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    :goto_0
    return-void

    :cond_1
    const-string v0, "Multiply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_2
    const-string v0, "Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_3
    const-string v0, "Darken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_4
    const-string v0, "Lighten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_5
    const-string v0, "Difference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_6
    const-string v0, "LinearDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_7
    const-string v0, "LinearBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_8
    const-string v0, "Overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_9
    const-string v0, "ColorDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_a
    const-string v0, "ColorBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_0

    :cond_b
    const-string v0, "Opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "HardLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_d
    const-string v0, "SoftLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_e
    const-string v0, "VividLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_f
    const-string v0, "LinearLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_10
    const-string v0, "PinLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_11
    const-string v0, "HardMix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_12
    const-string v0, "Exclusion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_13
    const-string v0, "Hue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_14
    const-string v0, "Saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_15
    const-string v0, "Color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_16
    const-string v0, "Luminosity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_17
    const-string v0, "Divide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x17

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_18
    const-string v0, "Subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x18

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_0

    :cond_19
    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blend type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitampToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    return-void
.end method

.method public setIsInputImageOnTop(Z)V
    .locals 0
    .parameter "value"

    .prologue
    iput-boolean p1, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    return-void
.end method

.method public setPorterDuffMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter "value"

    .prologue
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method
