.class public Lcom/ti/bt/server/TiBtServiceLoader;
.super Ljava/lang/Object;
.source "TiBtServiceLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TiBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;ILandroid/server/BluetoothService;)V
    .locals 2
    .parameter "context"
    .parameter "factoryTest"
    .parameter "bluetooth"

    .prologue
    const-string v0, "TiBtServiceLoader"

    const-string v1, "Nothing need to do when current stack configuration is not TI bluetooth!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
