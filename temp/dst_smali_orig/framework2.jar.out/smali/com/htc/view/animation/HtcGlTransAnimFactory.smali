.class public Lcom/htc/view/animation/HtcGlTransAnimFactory;
.super Ljava/lang/Object;
.source "HtcGlTransAnimFactory.java"


# static fields
.field public static final OPEN_ALL_HTC_TRANSITION_ANIM:Z

.field public static final USE_HTC_TRANSITION_ANIM:Z

.field private static final mAnimTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "use_htcgl_anim"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "force_close_htcgl_anim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    const-string v0, "open_all_htcgl_anim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->OPEN_ALL_HTC_TRANSITION_ANIM:Z

    sget-object v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimTypeMap:Ljava/util/HashMap;

    sput-object v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGlAnim(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    sget-object v3, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, anim_type:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->OPEN_ALL_HTC_TRANSITION_ANIM:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "temporary skip htc trans anim set by XML"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object v3, v2

    :goto_1
    return-object v3

    :cond_1
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlZoomTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::ZoomTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::CubicRotateTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::CentralZoomTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::ContentZoomTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::RecentAppZoomTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/htc/view/animation/HtcGlTransAnimFactory;->mAnimTypeMap:Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    .end local v2           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v2, p0, p1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::SwipeCubicTrans is created."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v3, :cond_8

    const-string v3, "HtcGlAnimation"

    const-string v4, "XML::Unknown htc animation name... return null."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public static createGlAnim(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 4
    .parameter "in"

    .prologue
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, anim_type:I
    const/4 v1, 0x0

    .local v1, glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    new-instance v1, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "ZoomTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object v2, v1

    :goto_1
    return-object v2

    :cond_1
    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    new-instance v1, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "CubicRotateTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    new-instance v1, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "CentralZoomTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    new-instance v1, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "ContentZoomTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v2, 0xe

    if-ne v0, v2, :cond_5

    new-instance v1, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "RecentAppZoomTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v2, 0xf

    if-ne v0, v2, :cond_6

    new-instance v1, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    .end local v1           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v1, p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;-><init>(Landroid/os/Parcel;)V

    .restart local v1       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "SwipeCubicTrans is created."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_7

    const-string v2, "HtcGlAnimation"

    const-string v3, "Unknown htc animation name... return null."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 4
    .parameter "anim_type"

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcGlAnimation"

    const-string v3, "no animation type is specified... return null."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    .local v0, glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    const-string v2, "zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::ZoomTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "cubic_rotate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::CubicRotateTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "central_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::CentralZoomTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v2, "content_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::ContentZoomTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v2, "recentapp_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::RecentAppZoomTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v2, "swipe_cubic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    .end local v0           #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;-><init>()V

    .restart local v0       #glAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcGlAnimation"

    const-string v2, "API::SwipeCubicTrans is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v2, :cond_9

    const-string v2, "HtcGlAnimation"

    const-string v3, "API::Unknown htc animation name... return null."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public overrideHtcGlAppTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 2
    .parameter "animObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "animation object is null ...return."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->OPEN_ALL_HTC_TRANSITION_ANIM:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "temporary skip htc trans anim set by API"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    if-eqz v0, :cond_3

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Landroid/view/IWindowManager;->overrideHtcGlAppTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "please turn on USE_HTC_TRANSITION_ANIM flag..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
