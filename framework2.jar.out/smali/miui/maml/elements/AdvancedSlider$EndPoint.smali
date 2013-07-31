.class Lmiui/maml/elements/AdvancedSlider$EndPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/maml/data/Expression;

.field private mPathY:Lmiui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 767
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    .line 768
    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 765
    const/16 v0, 0x96

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 769
    invoke-direct {p0, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 770
    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 752
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 752
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    .locals 22
    .parameter "x"
    .parameter "y"

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 811
    new-instance v12, Lmiui/maml/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v18, p1, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v20, p2, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 831
    :cond_0
    return-object v12

    .line 814
    :cond_1
    const/4 v12, 0x0

    .line 815
    .local v12, pos:Lmiui/maml/util/Utils$Point;
    const-wide v6, 0x7fefffffffffffffL

    .line 816
    .local v6, dist:D
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v16, p1, v18

    .line 818
    .local v16, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v17, p2, v18

    .line 819
    .local v17, y0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 820
    .local v14, pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 821
    .local v15, pt2:Lmiui/maml/elements/AdvancedSlider$Position;
    new-instance v10, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v14}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v14}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 822
    .local v10, p1:Lmiui/maml/util/Utils$Point;
    new-instance v11, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v15}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v15}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 823
    .local v11, p2:Lmiui/maml/util/Utils$Point;
    new-instance v9, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 824
    .local v9, p0:Lmiui/maml/util/Utils$Point;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v10, v11, v9, v0}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v13

    .line 825
    .local v13, pt:Lmiui/maml/util/Utils$Point;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v9, v0}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    .line 826
    .local v4, d:D
    cmpg-double v18, v4, v6

    if-gez v18, :cond_2

    .line 827
    move-wide v6, v4

    .line 828
    move-object v12, v13

    .line 816
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 774
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 775
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 855
    const-string v4, "Path"

    invoke-static {p1, v4}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 856
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_1

    .line 857
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 870
    :cond_0
    return-void

    .line 860
    :cond_1
    const-string/jumbo v4, "tolerance"

    const/16 v5, 0x96

    invoke-static {v0, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 862
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 863
    const-string/jumbo v4, "x"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    .line 864
    const-string/jumbo v4, "y"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    .line 865
    const-string v4, "Position"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 866
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 867
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 868
    .local v2, item:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v5, Lmiui/maml/elements/AdvancedSlider$Position;

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    invoke-direct {v5, v6, v2, v7, v8}, Lmiui/maml/elements/AdvancedSlider$Position;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 873
    const-string v4, "Intent"

    invoke-static {p1, v4}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 874
    .local v2, intentEle:Lorg/w3c/dom/Element;
    const-string v4, "Command"

    invoke-static {p1, v4}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 875
    .local v0, commandEle:Lorg/w3c/dom/Element;
    const-string v4, "Trigger"

    invoke-static {p1, v4}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 876
    .local v3, triggerEle:Lorg/w3c/dom/Element;
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    new-instance v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iput-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    .line 880
    if-eqz v2, :cond_2

    .line 881
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-static {v2}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    goto :goto_0

    .line 882
    :cond_2
    if-eqz v0, :cond_3

    .line 883
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v5, v5, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v5}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/ActionCommand;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    .line 884
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-nez v4, :cond_0

    .line 885
    const-string v4, "LockScreen_AdvancedSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid Command element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_3
    if-eqz v3, :cond_0

    .line 889
    :try_start_0
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v5, Lmiui/maml/CommandTrigger;

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v5, v3, v6}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_1
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, v4, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-nez v4, :cond_0

    .line 894
    const-string v4, "LockScreen_AdvancedSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid Trigger element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 788
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->finish()V

    .line 789
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    .line 792
    :cond_0
    return-void
.end method

.method public getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F
    .locals 9
    .parameter "pt"
    .parameter "x"
    .parameter "y"

    .prologue
    const v3, 0x7f7fffff

    .line 838
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 839
    const v0, 0x7effffff

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    if-nez p1, :cond_2

    move v0, v3

    .line 842
    goto :goto_0

    .line 844
    :cond_2
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v4

    sub-float v1, p2, v4

    .line 845
    .local v1, x0:F
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v4

    sub-float v2, p3, v4

    .line 846
    .local v2, y0:F
    new-instance v4, Lmiui/maml/util/Utils$Point;

    float-to-double v5, v1

    float-to-double v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    double-to-float v0, v4

    .line 847
    .local v0, dist:F
    iget v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_0

    move v0, v3

    .line 850
    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 779
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 780
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 783
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 784
    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 901
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 905
    :cond_0
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 913
    :goto_1
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 907
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_1

    .line 905
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 795
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->pause()V

    .line 796
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    .line 799
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 802
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->resume()V

    .line 803
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    .line 806
    :cond_0
    return-void
.end method
