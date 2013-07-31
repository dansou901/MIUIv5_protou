.class public Lmiui/provider/yellowpage/model/CustomNumberCategory;
.super Lmiui/provider/yellowpage/model/Category;
.source "CustomNumberCategory.java"


# instance fields
.field private mIsUserCustom:Z

.field private mMarkedCount:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "id"
    .parameter "names"
    .parameter "number"
    .parameter "markedCount"
    .parameter "isUserCustom"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/model/Category;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mNumber:Ljava/lang/String;

    iput-boolean p5, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mIsUserCustom:Z

    iput p4, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mMarkedCount:I

    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mMarkedCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isNumberCategoryCustom()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mIsUserCustom:Z

    return v0
.end method
