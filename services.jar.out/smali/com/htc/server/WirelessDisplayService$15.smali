.class Lcom/htc/server/WirelessDisplayService$15;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$15;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2958
    const-string v0, "WirelessDisplayService"

    const-string v1, "Receive INTENT_NOTIFY_EXTEND_TURNOFF_HOTSPOT_TIMER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$15;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v0}, Lcom/htc/server/WirelessDisplayService;->extendTurnOffHotspotTimer()V

    .line 2960
    return-void
.end method
