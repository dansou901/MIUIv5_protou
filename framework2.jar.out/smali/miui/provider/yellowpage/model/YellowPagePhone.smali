.class public Lmiui/provider/yellowpage/model/YellowPagePhone;
.super Ljava/lang/Object;
.source "YellowPagePhone.java"


# static fields
.field public static final INVALIDE_YID:I = -0x1

.field public static final TYPE_ANTISPAM:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YELLOW_PAGE:I = 0x1


# instance fields
.field private mMarkCount:I

.field private mNumber:Ljava/lang/String;

.field private mProviderId:I

.field private mTag:Ljava/lang/String;

.field private mTagPinyin:Ljava/lang/String;

.field private mType:I

.field private mVisible:Z

.field private mYpId:J

.field private mYpName:Ljava/lang/String;

.field private mYpNamePinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ypId"
    .parameter "ypName"
    .parameter "tag"
    .parameter "number"
    .parameter "type"
    .parameter "providerId"
    .parameter "markedCount"
    .parameter "visible"
    .parameter "ypNamePinyin"
    .parameter "tagPinyin"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 38
    iput p6, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    .line 39
    iput-boolean p9, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mVisible:Z

    .line 40
    iput p8, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mMarkCount:I

    .line 41
    iput-wide p1, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpId:J

    .line 42
    iput p7, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    .line 43
    iput-object p10, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 44
    iput-object p11, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mMarkCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPageId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpId:J

    return-wide v0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpName:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPagePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public isAntispam()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMarked()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mVisible:Z

    return v0
.end method

.method public isYellowPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
