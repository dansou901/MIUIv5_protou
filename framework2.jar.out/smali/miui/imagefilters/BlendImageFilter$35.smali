.class Lmiui/imagefilters/BlendImageFilter$35;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$35;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 1
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 613
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    mul-float/2addr v0, p2

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 1
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 617
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p3

    mul-float/2addr v0, p2

    return v0
.end method
