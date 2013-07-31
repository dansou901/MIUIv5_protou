.class public Lmiui/provider/yellowpage/model/Social;
.super Ljava/lang/Object;
.source "Social.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mProviderId:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "name"
    .parameter "providerId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/yellowpage/model/Social;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lmiui/provider/yellowpage/model/Social;->mName:Ljava/lang/String;

    iput p3, p0, Lmiui/provider/yellowpage/model/Social;->mProviderId:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Social;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/yellowpage/model/Social;->mProviderId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Social;->mUrl:Ljava/lang/String;

    return-object v0
.end method
