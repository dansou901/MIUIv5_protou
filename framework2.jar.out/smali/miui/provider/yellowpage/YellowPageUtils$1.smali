.class final Lmiui/provider/yellowpage/YellowPageUtils$1;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/yellowpage/YellowPageUtils;->markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lmiui/provider/yellowpage/YellowPageUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/provider/yellowpage/YellowPageUtils$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lmiui/provider/yellowpage/YellowPageUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/provider/yellowpage/YellowPageUtils$1;->val$number:Ljava/lang/String;

    #calls: Lmiui/provider/yellowpage/YellowPageUtils;->updateCallLogAntispamTag(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    return-void
.end method
