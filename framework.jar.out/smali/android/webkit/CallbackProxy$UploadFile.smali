.class Landroid/webkit/CallbackProxy$UploadFile;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mValue:Landroid/net/Uri;

.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1844
    invoke-direct {p0, p1}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;)V

    return-void
.end method


# virtual methods
.method public getResult()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    return-object v0
.end method

.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1847
    iput-object p1, p0, Landroid/webkit/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    .line 1848
    iget-object v1, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1850
    :try_start_0
    invoke-static {}, Landroid/webkit/CallbackProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallbackProxy"

    const-string v2, "Main thread notify "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1853
    monitor-exit v1

    .line 1854
    return-void

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1844
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/CallbackProxy$UploadFile;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
