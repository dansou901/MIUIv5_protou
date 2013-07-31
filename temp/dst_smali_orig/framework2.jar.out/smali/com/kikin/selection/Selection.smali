.class public Lcom/kikin/selection/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/selection/Selection$Mode;
    }
.end annotation


# instance fields
.field private mAlt:Ljava/lang/String;

.field private mH1:Ljava/lang/String;

.field private mH2:Ljava/lang/String;

.field private mHl:Ljava/lang/String;

.field private mHref:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mMode:Lcom/kikin/selection/Selection$Mode;

.field private mPosthl:Ljava/lang/String;

.field private mPrehl:Ljava/lang/String;

.field private mSelectionLanguage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchedWord:Ljava/lang/String;

.field private mType:Lcom/kikin/selection/SelectionType;

.field private mUrl:Landroid/net/Uri;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .parameter "selection"

    .prologue
    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    sget-object v2, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, selectionMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/kikin/selection/Selection$Mode;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    const-string v2, "selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    const-string v2, "textBeforeSelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    const-string v2, "textAfterSelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    const-string v2, "selectionType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, selectionType:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/kikin/selection/SelectionType;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    const-string v2, "selectionLanguage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    const-string v2, "touchedWord"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    const-string v2, "keywords"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    const-string v2, "h1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    const-string v2, "h2"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    const-string v2, "alt"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    const-string v2, "href"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-void

    .end local v1           #selectionType:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    goto/16 :goto_0

    .restart local v1       #selectionType:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    iput-object p8, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "keywords"
    .parameter "title"
    .parameter "h1TagText"
    .parameter "h2TagText"
    .parameter "tagName"
    .parameter "alt"
    .parameter "href"
    .parameter "value"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    sget-object v1, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local p8
    :goto_0
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    if-eqz p9, :cond_1

    invoke-virtual {p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p9
    :goto_1
    iput-object p9, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    if-eqz p10, :cond_2

    invoke-virtual {p10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .end local p10
    :goto_2
    iput-object p10, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    if-eqz p11, :cond_3

    invoke-virtual {p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .end local p11
    :goto_3
    iput-object p11, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    if-eqz p12, :cond_4

    invoke-virtual {p12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .end local p12
    :goto_4
    iput-object p12, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    if-eqz p13, :cond_5

    invoke-virtual {p13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .end local p13
    :goto_5
    iput-object p13, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    if-eqz p14, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .end local p14
    :goto_6
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    return-void

    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    .restart local p12
    .restart local p13
    .restart local p14
    :cond_0
    const/4 p8, 0x0

    goto :goto_0

    .end local p8
    :cond_1
    const/4 p9, 0x0

    goto :goto_1

    .end local p9
    :cond_2
    const/4 p10, 0x0

    goto :goto_2

    .end local p10
    :cond_3
    const/4 p11, 0x0

    goto :goto_3

    .end local p11
    :cond_4
    const/4 p12, 0x0

    goto :goto_4

    .end local p12
    :cond_5
    const/4 p13, 0x0

    goto :goto_5

    .end local p13
    :cond_6
    const/16 p14, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getH1()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    return-object v0
.end method

.method public getH2()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/kikin/selection/Selection$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method

.method public getPosthl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrehl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setH1(Ljava/lang/String;)V
    .locals 1
    .parameter "h1"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    return-void

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setH2(Ljava/lang/String;)V
    .locals 1
    .parameter "h2"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    return-void

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setHl(Ljava/lang/String;)V
    .locals 0
    .parameter "hl"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    return-void

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/kikin/selection/Selection$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    return-void
.end method

.method public setPosthl(Ljava/lang/String;)V
    .locals 0
    .parameter "posthl"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    return-void
.end method

.method public setPrehl(Ljava/lang/String;)V
    .locals 0
    .parameter "prehl"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    return-void
.end method

.method public setSelectionLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    return-void
.end method

.method public setSelectionType(Lcom/kikin/selection/SelectionType;)V
    .locals 0
    .parameter "type"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-void
.end method

.method public setSelectionType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    invoke-static {p1}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    return-void

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    return-void

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .parameter "touchedWord"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0
    .parameter "url"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "mode"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v2}, Lcom/kikin/selection/Selection$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "selection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textBeforeSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textAfterSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "selectionType"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v2}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "selectionLanguage"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "touchedWord"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keywords"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "h1"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "h2"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tag"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "alt"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "href"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, ret:Lorg/json/JSONObject;
    const-string v2, "mode"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v3}, Lcom/kikin/selection/Selection$Mode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .local v0, data:Lorg/json/JSONObject;
    const-string v2, "text"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "prehl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "posthl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tw"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "h1"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "h2"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "keywords"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "alt"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "href"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ul"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v3}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nSelection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nPre text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nPost text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\nLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTouched word:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nH1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nH2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nAlt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nHref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\nUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
