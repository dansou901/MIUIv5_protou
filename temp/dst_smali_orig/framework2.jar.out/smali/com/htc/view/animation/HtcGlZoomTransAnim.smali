.class public Lcom/htc/view/animation/HtcGlZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlZoomTransAnim.java"


# instance fields
.field private mAnimDuration:J

.field protected mPointX:I

.field protected mPointY:I

.field private final mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .local v0, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v1

    .local v1, point:Landroid/graphics/Point;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "0"

    aput-object v2, v0, v3

    const-string v2, "0"

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method public getZoomPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    if-ltz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setOpenOrClose(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    invoke-super {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getTransitType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    :cond_0
    return-void
.end method

.method public setZoomPoint(Landroid/graphics/Point;)V
    .locals 3
    .parameter "_point"

    .prologue
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
