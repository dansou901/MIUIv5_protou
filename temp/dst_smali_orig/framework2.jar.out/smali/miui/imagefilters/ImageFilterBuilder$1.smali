.class Lmiui/imagefilters/ImageFilterBuilder$1;
.super Lmiui/imagefilters/ImageFilterBuilder$ParamData;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/ImageFilterBuilder;

.field final synthetic val$allowIgnore:Z

.field final synthetic val$paramName:Ljava/lang/String;

.field final synthetic val$paramValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/imagefilters/ImageFilterBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->this$0:Lmiui/imagefilters/ImageFilterBuilder;

    iput-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramValue:Ljava/lang/String;

    iput-boolean p4, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$allowIgnore:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/imagefilters/ImageFilterBuilder$ParamData;-><init>(Lmiui/imagefilters/ImageFilterBuilder$1;)V

    iget-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mParamName:Ljava/lang/String;

    iget-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramValue:Ljava/lang/String;

    iput-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mParamValue:Ljava/lang/String;

    iget-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$allowIgnore:Z

    iput-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mIgnoreWhenNotSupported:Z

    return-void
.end method
