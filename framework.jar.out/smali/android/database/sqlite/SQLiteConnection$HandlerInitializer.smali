.class Landroid/database/sqlite/SQLiteConnection$HandlerInitializer;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerInitializer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1545
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "kii sqlite hook"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v0, mThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1547
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection;->access$702(Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;)Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;

    .line 1548
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1543
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1543
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$HandlerInitializer;-><init>()V

    return-void
.end method
