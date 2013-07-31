.class Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;
.super Landroid/os/Handler;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService$MdbRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MdbRestoreManagerHandler"
.end annotation


# static fields
.field private static final MESSAGE_MDB_RESTORE_ACCEPT:I = 0x0

.field private static final MESSAGE_MDB_RESTORE_CANCEL:I = 0x1

.field private static final MESSAGE_MDB_RESTORE_CONFIRM:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/miui/server/MiuiUsbService$MdbRestoreManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiUsbService$MdbRestoreManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;->this$1:Lcom/miui/server/MiuiUsbService$MdbRestoreManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;->this$1:Lcom/miui/server/MiuiUsbService$MdbRestoreManager;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;->this$1:Lcom/miui/server/MiuiUsbService$MdbRestoreManager;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;->this$1:Lcom/miui/server/MiuiUsbService$MdbRestoreManager;

    #calls: Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->showConfirmationUI()V
    invoke-static {v0}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->access$300(Lcom/miui/server/MiuiUsbService$MdbRestoreManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
