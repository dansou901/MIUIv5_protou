.class Lcom/android/server/am/ActivityStack$3;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 5249
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5252
    const-string v0, "CpuWake"

    const-string v1, ">>nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeReleaseCpuPerfWakeLock()V

    .line 5254
    const-string v0, "CpuWake"

    const-string v1, "<<nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    return-void
.end method
