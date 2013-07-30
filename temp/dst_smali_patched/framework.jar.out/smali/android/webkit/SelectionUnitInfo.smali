.class Landroid/webkit/SelectionUnitInfo;
.super Ljava/lang/Object;
.source "SelectionUnitInfo.java"


# static fields
.field private static final FIRST_LETTER_SELECTION_OFFSET:I = 0x2

.field private static final LAST_LETTER_SELECTION_OFFSET:I = 0x3


# instance fields
.field bound:Landroid/graphics/Rect;

.field boxNodeBound:Landroid/graphics/Rect;

.field endIndex:I

.field isOneChar:Z

.field node:I

.field sb:Ljava/lang/StringBuffer;

.field startIndex:I

.field type:I

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webView"

    .prologue
    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/webkit/SelectionUnitInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/webkit/SelectionUnitInfo;

    .local v0, info:Landroid/webkit/SelectionUnitInfo;
    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .end local v0           #info:Landroid/webkit/SelectionUnitInfo;
    :cond_0
    return v1
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method selectLeft()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method selectRight()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method set(Landroid/webkit/SelectionUnitInfo;)V
    .locals 3
    .parameter "src"

    .prologue
    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->node:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxNodeBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
