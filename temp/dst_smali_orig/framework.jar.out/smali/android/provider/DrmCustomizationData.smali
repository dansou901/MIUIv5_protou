.class Landroid/provider/DrmCustomizationData;
.super Ljava/lang/Object;
.source "DrmStore.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmCustomization"


# instance fields
.field protected mBundleData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/provider/DrmCustomizationData;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/provider/DrmCustomizationData;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customizationData"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/provider/DrmCustomizationData;->setData(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "strFunctionName"

    .prologue
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strFunctionName"

    .prologue
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customizationData"

    .prologue
    iput-object p1, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    return-void
.end method
