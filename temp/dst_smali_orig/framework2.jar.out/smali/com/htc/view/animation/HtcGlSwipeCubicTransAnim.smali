.class public Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlSwipeCubicTransAnim.java"


# static fields
.field public static final TRANSIT_DIRECTION_LEFT:I = 0x1

.field public static final TRANSIT_DIRECTION_RIGHT:I


# instance fields
.field private final mAnimDuration:J

.field private mDirection:I

.field private final mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    .local v0, mGlAttributeSet:[Ljava/lang/String;
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-nez v1, :cond_1

    const-string v1, "right"

    aput-object v1, v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-ne v1, v3, :cond_0

    const-string v1, "left"

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    return v0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation direction is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p1, v1, :cond_3

    iput v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "Invaild animation direction, Default value: Right"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
