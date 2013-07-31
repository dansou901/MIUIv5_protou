.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 43
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 55
    if-eqz p1, :cond_1

    .line 56
    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    .line 57
    const-string/jumbo v2, "threshold"

    const/high16 v3, 0x3f80

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    .line 58
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    .line 59
    const-string v2, "const"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    .line 60
    iget-boolean v2, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_2

    .line 61
    new-instance v2, Lmiui/maml/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 62
    new-instance v2, Lmiui/maml/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 68
    :goto_0
    const-string v2, "VariableAnimation"

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 69
    .local v0, ani:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    new-instance v2, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v2, v0, p2}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 80
    .end local v0           #ani:Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 64
    :cond_2
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 65
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v4, "old_value"

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0

    .line 72
    .restart local v0       #ani:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method private update()V
    .locals 8

    .prologue
    .line 119
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v3, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 120
    .local v3, var:Lmiui/maml/data/Variables;
    iget-boolean v4, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, str:Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, oldStr:Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 133
    .end local v0           #oldStr:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 134
    .local v2, value:Ljava/lang/Double;
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v4, :cond_6

    .line 135
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v4}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 140
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v4, :cond_4

    .line 142
    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 144
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v4, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 145
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 146
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 147
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    .line 149
    :cond_5
    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto :goto_0

    .line 136
    :cond_6
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_3

    .line 137
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 85
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 115
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->init()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 104
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->reset(J)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 110
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 90
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->tick(J)V

    .line 96
    :cond_2
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    goto :goto_0
.end method
