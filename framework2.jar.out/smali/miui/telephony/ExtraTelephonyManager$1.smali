.class final Lmiui/telephony/ExtraTelephonyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/ExtraTelephonyManager;->waitAndGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;


# direct methods
.method constructor <init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lmiui/telephony/ExtraTelephonyManager$1;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/telephony/ExtraTelephonyManager$1;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    const-string v1, "device_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
