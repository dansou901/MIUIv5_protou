.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$1;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static mOperatorsPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*/%"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionChar(C)Z

    move-result v0

    return v0
.end method

.method public static build(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 589
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 590
    .local v0, ex:Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p1, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 683
    iget-object v2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 684
    .local v1, newExps:[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 701
    :goto_0
    return-object v2

    .line 690
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 691
    new-instance v4, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>([Lmiui/maml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 692
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 693
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    .line 697
    const-string v2, "Expression"

    invoke-virtual {v0}, Lmiui/maml/ScreenElementLoadException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0           #e:Lmiui/maml/ScreenElementLoadException;
    :cond_2
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 701
    goto :goto_0
.end method

.method private static buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 15
    .parameter "exp"

    .prologue
    const/4 v12, 0x0

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v1, v12

    .line 679
    :cond_0
    :goto_0
    return-object v1

    .line 601
    :cond_1
    new-instance v9, Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {v9, p0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 602
    .local v9, tk:Lmiui/maml/data/Expression$Tokenizer;
    const/4 v10, 0x0

    .line 603
    .local v10, token:Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v8, 0x0

    .line 604
    .local v8, preToken:Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 605
    .local v7, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 606
    .local v3, expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    const/4 v4, 0x0

    .line 607
    .local v4, minus:Z
    :goto_1
    invoke-virtual {v9}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 611
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 666
    :goto_2
    move-object v8, v10

    goto :goto_1

    .line 617
    :pswitch_0
    const/4 v5, 0x0

    .line 618
    .local v5, newExp:Lmiui/maml/data/Expression;
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_1

    :cond_2
    move-object v6, v5

    .line 639
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .local v6, newExp:Lmiui/maml/data/Expression;
    :goto_3
    if-eqz v4, :cond_a

    .line 640
    new-instance v5, Lmiui/maml/data/Expression$UnaryExpression;

    const-string v11, "-"

    invoke-direct {v5, v6, v11}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .line 642
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 620
    :pswitch_1
    new-instance v5, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 621
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 623
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_2
    new-instance v5, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 624
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 626
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_3
    new-instance v5, Lmiui/maml/data/Expression$NumberExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const-string v11, "-"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    const/4 v4, 0x0

    move-object v6, v5

    .line 628
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 626
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    :cond_3
    const-string v11, ""

    goto :goto_5

    .line 630
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_4
    new-instance v5, Lmiui/maml/data/Expression$StringExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 631
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 633
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_5
    invoke-static {v10, v7}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 634
    if-nez v5, :cond_2

    move-object v1, v12

    .line 635
    goto/16 :goto_0

    .line 645
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    :pswitch_6
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v8, :cond_4

    iget-object v11, v8, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v13, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v11, v13, :cond_6

    .line 647
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 654
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 655
    .local v1, exp2:Lmiui/maml/data/Expression;
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 656
    .local v0, exp1:Lmiui/maml/data/Expression;
    new-instance v13, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v13, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v0           #exp1:Lmiui/maml/data/Expression;
    .end local v1           #exp2:Lmiui/maml/data/Expression;
    :cond_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v13, v11}, Lmiui/maml/data/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_7

    .line 650
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    const/4 v13, 0x2

    if-ge v11, v13, :cond_5

    .line 651
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid operation position:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 652
    goto/16 :goto_0

    .line 658
    :cond_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const/4 v4, 0x0

    .line 661
    goto/16 :goto_2

    .line 663
    :pswitch_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 669
    :cond_8
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-eq v11, v13, :cond_9

    .line 670
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid expression:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 671
    goto/16 :goto_0

    .line 674
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 675
    .restart local v1       #exp2:Lmiui/maml/data/Expression;
    :goto_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 676
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 677
    .restart local v0       #exp1:Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .end local v1           #exp2:Lmiui/maml/data/Expression;
    .local v2, exp2:Lmiui/maml/data/Expression;
    move-object v1, v2

    .line 678
    .end local v2           #exp2:Lmiui/maml/data/Expression;
    .restart local v1       #exp2:Lmiui/maml/data/Expression;
    goto :goto_6

    .end local v0           #exp1:Lmiui/maml/data/Expression;
    .end local v1           #exp2:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    :cond_a
    move-object v5, v6

    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    goto/16 :goto_4

    .line 611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 618
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 552
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    .line 553
    .local v0, exps:[Lmiui/maml/data/Expression;
    array-length v3, v0

    new-array v2, v3, [Lmiui/maml/data/RootExpression;

    .line 554
    .local v2, roots:[Lmiui/maml/data/RootExpression;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 555
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v2, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_0
    new-instance v3, Lmiui/maml/data/RootExpression;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_1

    .line 557
    :cond_1
    return-object v2
.end method

.method private static buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .parameter "exp"

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, bracketCount:I
    const/4 v4, 0x0

    .line 563
    .local v4, inApostrophe:Z
    const/4 v6, 0x0

    .line 564
    .local v6, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 566
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 567
    .local v1, c:C
    if-nez v4, :cond_0

    .line 568
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 569
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v6, v3, 0x1

    .line 577
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 578
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 565
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 578
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 581
    .end local v1           #c:C
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 582
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 585
    .local v5, ret:[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 705
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 706
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 707
    const/4 v1, 0x0

    .line 709
    :goto_1
    return v1

    .line 705
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "op1"
    .parameter "op2"

    .prologue
    .line 717
    invoke-static {p0}, Lmiui/maml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lmiui/maml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "op"

    .prologue
    .line 721
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 722
    sget-object v1, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 725
    .end local v0           #i:I
    :goto_1
    return v0

    .line 721
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 543
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 547
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 539
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Lmiui/maml/data/ExpressionVisitor;)V
.end method

.method public abstract evaluate(Lmiui/maml/data/Variables;)D
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method
