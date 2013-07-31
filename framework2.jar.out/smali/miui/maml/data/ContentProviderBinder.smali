.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$Variable;,
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDependency:Ljava/lang/String;

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOrder:Ljava/lang/String;

.field private mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/ContentProviderBinder$Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 2
    .parameter "root"
    .parameter "l"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 70
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;Lmiui/maml/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 196
    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 197
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0
    .parameter "node"
    .parameter "root"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p2, p3}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 186
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/data/ContentProviderBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method static synthetic access$600(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    return-object v0
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 506
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    .line 515
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 510
    .local v0, elapsedTime:J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 511
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 512
    const-wide/16 v0, 0x0

    .line 514
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 236
    monitor-exit v1

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 238
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 240
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 242
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 247
    const-string v0, "ContentProviderBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lmiui/maml/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 251
    const-string v0, "dependency"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    .line 253
    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    .line 254
    .local v4, uriExp:Lmiui/maml/data/Expression;
    const-string/jumbo v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 255
    .local v5, uriFormatExp:Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uriFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 257
    const-string v0, "columns"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v13

    :goto_0
    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 259
    const-string/jumbo v0, "whereExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    .line 260
    .local v10, whereExp:Lmiui/maml/data/Expression;
    const-string/jumbo v0, "whereFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    .line 261
    .local v11, whereFormatExp:Lmiui/maml/data/Expression;
    new-instance v6, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v0, "where"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "whereFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "whereParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 263
    const-string v0, "args"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 264
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v13

    :goto_1
    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 265
    const-string v0, "order"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 266
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v12, v13

    .end local v12           #tmp:Ljava/lang/String;
    :cond_1
    iput-object v12, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 268
    const-string v0, "countName"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .restart local v12       #tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    iput-object v13, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 274
    :cond_2
    const-string/jumbo v0, "updateInterval"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 275
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_3

    .line 276
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 282
    :cond_3
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 283
    return-void

    .line 258
    .end local v10           #whereExp:Lmiui/maml/data/Expression;
    .end local v11           #whereFormatExp:Lmiui/maml/data/Expression;
    :cond_4
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    .restart local v10       #whereExp:Lmiui/maml/data/Expression;
    .restart local v11       #whereFormatExp:Lmiui/maml/data/Expression;
    :cond_5
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v13, v12

    .line 269
    goto :goto_2
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 287
    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 288
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 289
    .local v1, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    invoke-virtual {p0, v1}, Lmiui/maml/data/ContentProviderBinder;->addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v1           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_0
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 352
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    if-eqz p1, :cond_4

    .line 357
    :try_start_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->closeCursor()V

    .line 358
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 359
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-ne v0, v3, :cond_2

    .line 360
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 362
    :cond_2
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->updateVariables()V

    .line 363
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-eq v0, v3, :cond_3

    .line 364
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 368
    :cond_3
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 370
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerObserver(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "c"
    .parameter "reg"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    if-eqz p2, :cond_1

    .line 380
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 384
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method private setNull(Lmiui/maml/data/ContentProviderBinder$Variable;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-virtual {p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p1, Lmiui/maml/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p1, Lmiui/maml/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method

.method private updateVariables()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v11

    .line 390
    :try_start_0
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v10, :cond_2

    .line 391
    .local v2, count:I
    :goto_0
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v10, :cond_0

    .line 392
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v12, v2

    invoke-virtual {v10, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 394
    :cond_0
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query result count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_1

    if-nez v2, :cond_4

    .line 396
    :cond_1
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 397
    .local v6, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    invoke-direct {p0, v6}, Lmiui/maml/data/ContentProviderBinder;->setNull(Lmiui/maml/data/ContentProviderBinder$Variable;)V

    goto :goto_1

    .line 444
    .end local v2           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 390
    :cond_2
    :try_start_1
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 399
    .restart local v2       #count:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit v11

    .line 445
    :goto_2
    return-void

    .line 401
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 402
    .restart local v6       #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    const/4 v5, 0x1

    .line 403
    .local v5, isNull:Z
    const/4 v9, 0x0

    .line 404
    .local v9, valueStr:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 405
    .local v7, value:D
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_6

    .line 407
    :try_start_2
    iget-object v1, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 408
    .local v1, column:Ljava/lang/String;
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 409
    .local v0, col:I
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 410
    invoke-virtual {v6}, Lmiui/maml/data/ContentProviderBinder$Variable;->isString()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 411
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 421
    :cond_5
    :goto_4
    const/4 v5, 0x0

    .line 430
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    :cond_6
    :goto_5
    :try_start_3
    invoke-virtual {v6}, Lmiui/maml/data/ContentProviderBinder$Variable;->isString()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 431
    iget-object v10, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v10, v9}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 412
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v10, "double"

    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 413
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    goto :goto_4

    .line 414
    :cond_8
    const-string v10, "float"

    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 415
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    float-to-double v7, v10

    goto :goto_4

    .line 416
    :cond_9
    const-string v10, "int"

    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "integer"

    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 417
    :cond_a
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-double v7, v10

    goto :goto_4

    .line 418
    :cond_b
    const-string v10, "long"

    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 419
    iget-object v10, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v12

    long-to-double v7, v12

    goto :goto_4

    .line 423
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 424
    .local v3, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v10, "ContentProviderBinder"

    const-string v12, "failed to get value from cursor"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 425
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 426
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "column does not exist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 433
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_c
    iget-object v12, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v5, :cond_d

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v12, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto/16 :goto_3

    :cond_d
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_6

    .line 444
    .end local v5           #isNull:Z
    .end local v6           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    .end local v7           #value:D
    .end local v9           #valueStr:Ljava/lang/String;
    :cond_e
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 294
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public createCountVar()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->closeCursor()V

    .line 216
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    .line 218
    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    .line 209
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 212
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 231
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 226
    return-void
.end method

.method public startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 298
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 299
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 300
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 307
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 308
    return-void
.end method
