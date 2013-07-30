.class public Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlCubicRotateTransAnim.java"


# instance fields
.field protected mContentBottom:I

.field protected mContentLeft:I

.field protected mContentRight:I

.field protected mContentTop:I

.field private final mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field protected mFooterBottom:I

.field protected mFooterLeft:I

.field protected mFooterRight:I

.field protected mFooterTop:I

.field protected mHeaderBottom:I

.field protected mHeaderLeft:I

.field protected mHeaderRight:I

.field protected mHeaderTop:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    const-string v0, "TRANSIT_CUBIC_ROTATE_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_CUBIC_ROTATE_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setAnimationType(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    const-string v0, "TRANSIT_CUBIC_ROTATE_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_CUBIC_ROTATE_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setAnimationType(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    const-string v0, "TRANSIT_CUBIC_ROTATE_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_CUBIC_ROTATE_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setAnimationType(I)V

    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xc

    new-array v3, v4, [Ljava/lang/String;

    .local v3, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, Header:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, Content:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, Footer:Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    const/16 v4, 0x8

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_2
    return-object v3

    .end local v0           #Content:Landroid/graphics/Rect;
    .end local v1           #Footer:Landroid/graphics/Rect;
    :cond_0
    const-string v4, "0"

    aput-object v4, v3, v5

    const-string v4, "0"

    aput-object v4, v3, v6

    const-string v4, "0"

    aput-object v4, v3, v7

    const-string v4, "0"

    aput-object v4, v3, v8

    goto :goto_0

    .restart local v0       #Content:Landroid/graphics/Rect;
    :cond_1
    const-string v4, "0"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0"

    aput-object v5, v3, v4

    goto :goto_1

    .restart local v1       #Footer:Landroid/graphics/Rect;
    :cond_2
    const/16 v4, 0x8

    const-string v5, "0"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0"

    aput-object v5, v3, v4

    goto :goto_2
.end method

.method public getContentArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    if-ltz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    if-ltz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    if-ltz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mCubicRotateExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setContentArea(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "content"

    .prologue
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content area is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "content rect is null! Not to override content area"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFooterArea(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "footer"

    .prologue
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "footer area is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "footer rect is null! Not to override footer area"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHeaderArea(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "header"

    .prologue
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header area is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "header rect is null! Not to override header area"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mHeaderBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mContentBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->mFooterBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
