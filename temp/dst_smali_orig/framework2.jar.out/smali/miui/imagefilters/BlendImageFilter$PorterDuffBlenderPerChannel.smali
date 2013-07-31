.class abstract Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendAlpha(FF)F
.end method

.method public abstract blendChannel(FFFF)F
.end method

.method public blendFinal(II)I
    .locals 21
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    ushr-int/lit8 v17, p2, 0x18

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .local v13, srcA:I
    ushr-int/lit8 v17, p2, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .local v16, srcR:I
    ushr-int/lit8 v17, p2, 0x8

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .local v15, srcG:I
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0xff

    .local v14, srcB:I
    ushr-int/lit8 v17, p1, 0x18

    move/from16 v0, v17

    and-int/lit16 v5, v0, 0xff

    .local v5, dstA:I
    ushr-int/lit8 v17, p1, 0x10

    move/from16 v0, v17

    and-int/lit16 v8, v0, 0xff

    .local v8, dstR:I
    ushr-int/lit8 v17, p1, 0x8

    move/from16 v0, v17

    and-int/lit16 v7, v0, 0xff

    .local v7, dstG:I
    move/from16 v0, p1

    and-int/lit16 v6, v0, 0xff

    .local v6, dstB:I
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x437f

    div-float v3, v17, v18

    .local v3, Da:F
    int-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x437f

    div-float v4, v17, v18

    .local v4, Sa:F
    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendAlpha(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    .local v9, resultA:I
    const/16 v17, 0x0

    int-to-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x437f

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x437f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .local v12, resultR:I
    const/16 v17, 0x0

    int-to-float v0, v7

    move/from16 v18, v0

    const/high16 v19, 0x437f

    div-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    const/high16 v20, 0x437f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .local v11, resultG:I
    const/16 v17, 0x0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x437f

    div-float v18, v18, v19

    int-to-float v0, v14

    move/from16 v19, v0

    const/high16 v20, 0x437f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .local v10, resultB:I
    shl-int/lit8 v17, v9, 0x18

    shl-int/lit8 v18, v12, 0x10

    or-int v17, v17, v18

    shl-int/lit8 v18, v11, 0x8

    or-int v17, v17, v18

    or-int v17, v17, v10

    return v17
.end method
