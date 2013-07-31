.class Landroid/view/ViewConfiguration$Injector;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static final sV5Configrations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration$Injector;->sV5Configrations:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration$Injector;->sV5Configrations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->getInstance(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    sget-object v3, Landroid/view/ViewConfiguration$Injector;->sV5Configrations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v1           #density:I
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOverFlingDistance(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "defaultValue"

    .prologue
    const v1, 0x6010081

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    .local v0, id:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int p1, v1

    .end local p1
    :cond_0
    return p1
.end method

.method static getOverScrollDistance(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "defaultValue"

    .prologue
    const v1, 0x6010082

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    .local v0, id:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int p1, v1

    .end local p1
    :cond_0
    return p1
.end method
