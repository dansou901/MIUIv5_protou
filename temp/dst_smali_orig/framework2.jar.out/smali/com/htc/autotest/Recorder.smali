.class public Lcom/htc/autotest/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"


# static fields
.field private static sInstance:Lcom/htc/autotest/RecordManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShowActivity(Ljava/lang/Object;Z)V
    .locals 1
    .parameter "obj"
    .parameter "isShow"

    .prologue
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/autotest/RecordManager;->dumpShowActivity(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public static dumpShowDialog(Ljava/lang/Object;Z)V
    .locals 1
    .parameter "obj"
    .parameter "isShow"

    .prologue
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/autotest/RecordManager;->dumpShowDialog(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public static dumpShowMenu(Landroid/view/KeyEvent;ZZ)V
    .locals 1
    .parameter "event"
    .parameter "isExpanded"
    .parameter "isExpandMenuShow"

    .prologue
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/autotest/RecordManager;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    :cond_0
    return-void
.end method

.method public static startMonitor(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V
    .locals 1
    .parameter "context"
    .parameter "msgQueue"
    .parameter "handler"
    .parameter "ins"

    .prologue
    invoke-static {p0}, Lcom/htc/autotest/RecordManager;->getInstance(Landroid/content/Context;)Lcom/htc/autotest/RecordManager;

    move-result-object v0

    sput-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/htc/autotest/RecordManager;->runRecorder(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V

    return-void
.end method
