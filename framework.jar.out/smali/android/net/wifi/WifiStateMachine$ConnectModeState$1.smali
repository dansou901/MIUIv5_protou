.class Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$ConnectModeState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$ConnectModeState;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$ConnectModeState;)V
    .locals 0
    .parameter

    .prologue
    .line 7163
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;->this$1:Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7166
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 7167
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;->this$1:Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22010

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7168
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;->this$1:Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2200a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7169
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$202(Z)Z

    .line 7171
    :cond_0
    return-void
.end method
