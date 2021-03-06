.class public Lcom/android/server/am/HtcWrapProcessRecord;
.super Ljava/lang/Object;
.source "HtcWrapProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWrapProcessRecord"


# instance fields
.field public info:Landroid/content/pm/ApplicationInfo;

.field public isDirty:Z

.field private mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public pid:I

.field public pkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string v0, "HtcWrapProcessRecord"

    const-string v1, "You can not wrap a null ProcessRecord"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcWrapProcessRecord;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 38
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 40
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 42
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    .line 43
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    iput-boolean v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    goto :goto_0
.end method

.method public static create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;
    .locals 1
    .parameter "r"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/HtcWrapProcessRecord;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcWrapProcessRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method


# virtual methods
.method public setIsDirty(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iput-boolean p1, v0, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    .line 23
    return-void
.end method
