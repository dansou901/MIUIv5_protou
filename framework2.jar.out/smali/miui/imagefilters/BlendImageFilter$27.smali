.class Lmiui/imagefilters/BlendImageFilter$27;
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
    .line 523
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$27;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 0
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 525
    return p1
.end method

.method public blendChannel(FFFF)F
    .locals 0
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 529
    return p1
.end method
