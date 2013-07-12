.class Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchActivityRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;->mIntent:Landroid/content/Intent;

    .line 206
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;->mContext:Landroid/content/Context;

    .line 207
    const-string v0, "HtcPolicyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchActivityRunnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "HtcPolicyUtils"

    const-string v2, "LaunchActivityRunnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
