.class Landroid/view/HtcHardwareRenderer$CallbackWrapper;
.super Ljava/lang/Object;
.source "HtcHardwareRenderer.java"

# interfaces
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HtcHardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/HtcHardwareRenderer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/HtcHardwareRenderer$CallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    invoke-interface {v0, p1}, Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    invoke-interface {v0, p1}, Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setCallbacks(Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    iput-object p1, p0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->mCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    return-void
.end method
