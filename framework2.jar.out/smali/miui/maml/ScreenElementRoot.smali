.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field protected mElementGroup:Lmiui/maml/elements/ElementGroup;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

.field private mFinished:Z

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mNormalFrameRate:F

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mScale:F

.field private mScaleByDensity:Z

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mTargetDensity:I

.field private mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/maml/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 59
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 63
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 164
    new-instance v0, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    .line 183
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    .line 184
    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 185
    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 186
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string/jumbo v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    .line 187
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string/jumbo v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    .line 188
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string/jumbo v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    .line 189
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string/jumbo v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    .line 190
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string/jumbo v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 191
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 193
    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/maml/SoundManager;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    .line 194
    return-void
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    .line 323
    if-nez p1, :cond_1

    .line 346
    :cond_0
    return-void

    .line 326
    :cond_1
    new-instance v5, Lmiui/maml/util/ConfigFile;

    invoke-direct {v5}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 327
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/ConfigFile$Variable;

    .line 331
    .local v4, v:Lmiui/maml/util/ConfigFile$Variable;
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string/jumbo v6, "string"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v7, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "number"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    :try_start_0
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 336
    .local v0, d:D
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v0           #d:D
    :catch_0
    move-exception v5

    goto :goto_0

    .line 341
    .end local v4           #v:Lmiui/maml/util/ConfigFile$Variable;
    :cond_4
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/util/Task;

    .line 342
    .local v3, t:Lmiui/maml/util/Task;
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "name"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 343
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "package"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 344
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "class"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "root"

    .prologue
    .line 580
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 581
    .local v2, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 582
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 583
    .local v1, item:Lorg/w3c/dom/Node;
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 590
    const-string/jumbo v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, updater:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I
    .locals 12
    .parameter "root"
    .parameter "attr"
    .parameter "target"
    .parameter "def"

    .prologue
    .line 549
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, extraResources:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 551
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, resources:[Ljava/lang/String;
    const v7, 0x7fffffff

    .line 553
    .local v7, minDiff:I
    const/4 v1, 0x0

    .line 554
    .local v1, closestInt:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v9, v0, v5

    .line 556
    .local v9, str:Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 557
    .local v10, sw:I
    sub-int v11, p2, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 558
    .local v3, diff:I
    if-ge v3, v7, :cond_1

    .line 559
    move v7, v3

    .line 560
    move v1, v10

    .line 561
    if-nez v3, :cond_1

    .line 568
    .end local v3           #diff:I
    .end local v9           #str:Ljava/lang/String;
    .end local v10           #sw:I
    :cond_0
    sub-int v11, p2, p3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 569
    .local v2, defaultDiff:I
    if-lt v2, v7, :cond_2

    .line 576
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestInt:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :goto_1
    return v1

    .line 564
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestInt:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #minDiff:I
    .restart local v8       #resources:[Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 554
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 573
    .end local v9           #str:Ljava/lang/String;
    .restart local v2       #defaultDiff:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 576
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestInt:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 13
    .parameter "root"

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 491
    const-string v9, "scaleByDensity"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, scaleByDensity:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 495
    :cond_0
    const-string v9, "screenWidth"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 496
    const-string v9, "resDensity"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 497
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v9}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 498
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v9, :cond_6

    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v9, :cond_6

    .line 499
    const/16 v9, 0x1e0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 500
    const/16 v9, 0xf0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 508
    :cond_1
    :goto_0
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v9, v11}, Lmiui/maml/ResourceManager;->setResourceDensity(I)V

    .line 510
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 511
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 513
    .local v0, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 514
    .local v6, size:Landroid/graphics/Point;
    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 515
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 516
    .local v4, rotation:I
    if-eq v4, v3, :cond_2

    const/4 v9, 0x3

    if-ne v4, v9, :cond_8

    .line 517
    .local v3, rotated:Z
    :cond_2
    :goto_1
    if-eqz v3, :cond_9

    iget v9, v6, Landroid/graphics/Point;->y:I

    :goto_2
    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    .line 518
    if-eqz v3, :cond_a

    iget v9, v6, Landroid/graphics/Point;->x:I

    :goto_3
    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    .line 519
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 520
    .local v2, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 521
    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 522
    const-string v9, "ScreenElementRoot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init target density: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v9, "extraResourcesDensity"

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {p1, v9, v11, v12}, Lmiui/maml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v1

    .line 524
    .local v1, extraDensity:I
    if-lez v1, :cond_b

    .line 525
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v9, v1}, Lmiui/maml/ResourceManager;->setExtraResourceDensity(I)V

    .line 534
    :cond_3
    :goto_4
    const-string/jumbo v9, "width"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    .line 535
    const-string v9, "height"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    .line 536
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v9, :cond_4

    .line 537
    const-string/jumbo v9, "view_width"

    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 539
    :cond_4
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v9, :cond_5

    .line 540
    const-string/jumbo v9, "view_height"

    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 543
    :cond_5
    iget-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    invoke-virtual {p0, v9}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 544
    return-void

    .line 501
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #extraDensity:I
    .end local v2           #outMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #rotated:Z
    .end local v4           #rotation:I
    .end local v6           #size:Landroid/graphics/Point;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_6
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v9, :cond_7

    .line 503
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/lit16 v9, v9, 0xf0

    div-int/lit16 v9, v9, 0x1e0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_0

    .line 504
    :cond_7
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v9, :cond_1

    .line 505
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    mul-int/lit16 v9, v9, 0x1e0

    div-int/lit16 v9, v9, 0xf0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_0

    .restart local v0       #display:Landroid/view/Display;
    .restart local v4       #rotation:I
    .restart local v6       #size:Landroid/graphics/Point;
    .restart local v8       #wm:Landroid/view/WindowManager;
    :cond_8
    move v3, v10

    .line 516
    goto/16 :goto_1

    .line 517
    .restart local v3       #rotated:Z
    :cond_9
    iget v9, v6, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 518
    :cond_a
    iget v9, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_3

    .line 527
    .restart local v1       #extraDensity:I
    .restart local v2       #outMetrics:Landroid/util/DisplayMetrics;
    :cond_b
    const-string v9, "extraResourcesScreenWidth"

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    invoke-static {p1, v9, v11, v12}, Lmiui/maml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v7

    .line 528
    .local v7, w:I
    if-lez v7, :cond_3

    .line 529
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v9, v7}, Lmiui/maml/ResourceManager;->setExtraResourceScreenWidth(I)V

    goto :goto_4
.end method


# virtual methods
.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 749
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 750
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 752
    :cond_0
    return-void
.end method

.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 729
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 771
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 197
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 261
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 279
    :cond_2
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 280
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->doneRender()V

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 272
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->doneRender()V

    .line 738
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 256
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 249
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 617
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->save()Z

    .line 662
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 665
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_3

    .line 666
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    .line 668
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->finish()V

    .line 671
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_5

    .line 672
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    .line 674
    :cond_5
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    .line 676
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 631
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/high16 v0, 0x3f80

    .line 635
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 613
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 290
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 293
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1, v2}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 295
    const-string v0, "raw_screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 296
    const-string v0, "raw_screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 297
    const-string v0, "screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 298
    const-string v0, "screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 300
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    .line 307
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->init()V

    .line 311
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->init()V

    .line 315
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 318
    :cond_3
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->reset()V

    .line 319
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    .line 320
    return-void
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .parameter "command"
    .parameter "para1"
    .parameter "para2"

    .prologue
    .line 788
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 790
    .local v0, l:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 792
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0           #l:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    :cond_0
    return-void
.end method

.method public load()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 428
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v5}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 429
    .local v3, root:Lorg/w3c/dom/Element;
    if-nez v3, :cond_0

    .line 458
    .end local v3           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v4

    .line 432
    .restart local v3       #root:Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mName:Ljava/lang/String;

    .line 433
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 434
    const-string v5, "frameRate"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v5, v6}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    .line 435
    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    .line 437
    new-instance v5, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v5, v3, p0}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    .line 439
    const-string v5, "VariableBinders"

    invoke-static {v3, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 441
    .local v0, binders:Lorg/w3c/dom/Element;
    new-instance v5, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v5, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    .line 443
    const-string v5, "ExternalCommands"

    invoke-static {v3, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 444
    .local v1, commands:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    .line 445
    new-instance v5, Lmiui/maml/ExternalCommandManager;

    invoke-direct {v5, v1, p0}, Lmiui/maml/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    .line 449
    :cond_1
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 451
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 452
    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 453
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v3           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 454
    .local v2, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v2}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v2           #e:Lmiui/maml/ScreenElementLoadException;
    :catch_1
    move-exception v2

    .line 456
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 201
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 202
    return-void
.end method

.method public onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 726
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 714
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v1, :cond_0

    .line 716
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v1, p1}, Lmiui/maml/ExternalCommandManager;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 391
    iget-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 399
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 401
    .local v2, y:F
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 402
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 417
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 418
    .local v0, ret:Z
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 405
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 406
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 407
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 409
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 414
    :pswitch_2
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 358
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 361
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    .line 364
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->pause()V

    .line 367
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    .line 369
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    .line 370
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    .line 599
    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 600
    return-void
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V
    .locals 1
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 245
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 775
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 776
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 351
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 354
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 374
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 377
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    .line 380
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->resume()V

    .line 383
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    .line 386
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    .line 387
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 798
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 799
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    if-nez p2, :cond_1

    .line 804
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 811
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 812
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 205
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 236
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 237
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 651
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 652
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 784
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 785
    return-void

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRenderController(Lmiui/maml/RendererController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 741
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->setRenderController(Lmiui/maml/RendererController;)V

    .line 742
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 462
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 464
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    if-eqz p1, :cond_2

    .line 468
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v0}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 469
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 476
    :goto_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    .line 478
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 479
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    goto :goto_0

    .line 472
    :cond_2
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 473
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    goto :goto_1
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public showFramerate(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 284
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 285
    return-void
.end method

.method public tick(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 210
    iget-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v3, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 216
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 217
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 218
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ITicker;

    invoke-interface {v3, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :cond_2
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    .line 225
    :cond_3
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v3}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    .line 226
    .local v1, d:Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateFramerate(J)J
    .locals 13
    .parameter "time"

    .prologue
    .line 683
    const-wide v4, 0x7fffffffffffffffL

    .line 684
    .local v4, nextUpdateInterval:J
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 685
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 686
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v9, p1, p2}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v2

    .line 687
    .local v2, l:J
    cmp-long v9, v2, v4

    if-gez v9, :cond_0

    .line 688
    move-wide v4, v2

    .line 685
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v2           #l:J
    :cond_1
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v9, :cond_2

    .line 693
    new-instance v9, Lmiui/maml/util/IndexedNumberVariable;

    const-string v10, "frame_rate"

    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v11, v11, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v9, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 694
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 697
    :cond_2
    iget-wide v9, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 698
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 710
    :cond_3
    :goto_1
    return-wide v4

    .line 700
    :cond_4
    iget-wide v9, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v7, p1, v9

    .line 701
    .local v7, t:J
    const-wide/16 v9, 0x3e8

    cmp-long v9, v7, v9

    if-ltz v9, :cond_3

    .line 702
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    div-long/2addr v9, v7

    long-to-int v6, v9

    .line 703
    .local v6, r:I
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v9, v6}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 704
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v10, v6

    invoke-virtual {v9, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 705
    const/4 v9, 0x0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 706
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
