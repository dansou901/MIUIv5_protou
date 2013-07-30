.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 74
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v67, v0

    .local v67, type:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .local v10, arg1:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .local v11, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v51

    .local v51, previousState:I
    sparse-switch v67, :sswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :sswitch_0
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-result-object v69

    if-nez v69, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/OutputTVDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->show()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-result-object v69

    if-nez v69, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/HdmiPlugDialog;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;->show()V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    if-nez v69, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$502(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVibrator:Landroid/os/Vibrator;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/Vibrator;

    move-result-object v69

    const-wide/16 v70, 0xc8

    invoke-virtual/range {v69 .. v71}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    if-nez v69, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->show()V

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5

    const-string v69, "WirelessDisplayService"

    const-string v70, "Disconnect due to updateWivuList: curDongle is been removed"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x3

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v20

    .local v20, e:Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v20           #e:Ljava/lang/Exception;
    :sswitch_5
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_5
    const/16 v69, 0x3

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestDelayTimerStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v20

    .restart local v20       #e:Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v20           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v20

    .restart local v20       #e:Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v20           #e:Ljava/lang/Exception;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v20

    .restart local v20       #e:Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v20           #e:Ljava/lang/Exception;
    :sswitch_6
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_CHANGE_STATE previousState = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", state="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " err="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v51

    if-eq v10, v0, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_8

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_8

    const-string v69, "WirelessDisplayService"

    const-string v70, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_9

    const/16 v69, 0x33

    const/16 v70, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .local v34, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v34           #msg2:Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1610(Lcom/htc/server/WirelessDisplayService;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v69

    if-nez v69, :cond_a

    const-string v69, "WirelessDisplayService"

    const-string v70, "wifi scan fail!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v69, 0x11

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v43

    .local v43, msgWifiScan:Landroid/os/Message;
    const-wide/16 v69, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v43           #msgWifiScan:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    :sswitch_8
    new-instance v50, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v50, notifyUserSwitch:Landroid/content/Intent;
    const-string v69, "visible"

    const/16 v70, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v69, "WirelessDisplayService"

    const-string v70, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v50           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v68

    .local v68, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v68, :cond_0

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v25

    .local v25, ipAddress:I
    move/from16 v63, v25

    .local v63, temp:I
    const-string v69, "%d.%d.%d.%d"

    const/16 v70, 0x4

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x1

    shr-int/lit8 v72, v25, 0x8

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x2

    shr-int/lit8 v72, v25, 0x10

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x3

    shr-int/lit8 v72, v25, 0x18

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    invoke-static/range {v69 .. v70}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .local v26, ipStr:Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "  "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1800()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .local v30, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_f

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v69

    const-string v70, "0.0.0.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-nez v69, :cond_f

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Got the IP address"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_4
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-nez v69, :cond_e

    new-instance v69, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v72

    const-string v73, "3655"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v69

    const/16 v71, -0x1

    move/from16 v0, v69

    move/from16 v1, v71

    if-ne v0, v1, :cond_d

    const-string v69, "WirelessDisplayService"

    const-string v71, "Something Wrong with netHD initialization Delete mWivuThread"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    :cond_c
    :goto_1
    monitor-exit v70
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    :try_start_5
    const-string v69, "WirelessDisplayService"

    const-string v71, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x191

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v57

    .local v57, setif:Landroid/os/Message;
    const-string v69, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual/range {v57 .. v57}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x28

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v44

    .local v44, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v44           #msg_leave:Landroid/os/Message;
    .end local v57           #setif:Landroid/os/Message;
    :catchall_0
    move-exception v69

    monitor-exit v70
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v69

    :cond_e
    :try_start_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x28

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v44

    .restart local v44       #msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .end local v44           #msg_leave:Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    const/16 v69, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .local v23, getIp:Landroid/os/Message;
    const-wide/16 v69, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v23           #getIp:Landroid/os/Message;
    .end local v25           #ipAddress:I
    .end local v26           #ipStr:Ljava/lang/String;
    .end local v30           #matcher2:Ljava/util/regex/Matcher;
    .end local v63           #temp:I
    .end local v68           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_a
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_STOP_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v69

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    const-string v69, "WirelessDisplayService"

    const-string v70, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .local v37, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x49

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v37           #msgChangeState:Landroid/os/Message;
    :cond_12
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_13

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    :cond_13
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    monitor-exit v70

    goto/16 :goto_2

    :catchall_1
    move-exception v69

    monitor-exit v70
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v69

    :cond_14
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_8
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_15

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    :cond_15
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    monitor-exit v70

    goto/16 :goto_2

    :catchall_2
    move-exception v69

    monitor-exit v70
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v69

    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    new-instance v50, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v50       #notifyUserSwitch:Landroid/content/Intent;
    const-string v69, "visible"

    const/16 v70, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0xde

    const/16 v71, 0x0

    const/16 v72, 0x0

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    .local v19, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0xde

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/16 v70, 0x1388

    move-object/from16 v0, v69

    move-object/from16 v1, v19

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    const/16 v71, 0x1

    const/16 v72, 0x0

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .local v31, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/16 v70, 0x13ba

    move-object/from16 v0, v69

    move-object/from16 v1, v31

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v19           #disableSwitchMsg:Landroid/os/Message;
    .end local v31           #mirrorMsg:Landroid/os/Message;
    .end local v50           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x4

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v41

    .local v41, msgTimeOut:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v69

    if-eqz v69, :cond_16

    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)V

    const-wide/32 v69, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-eqz v69, :cond_17

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3510(Lcom/htc/server/WirelessDisplayService;)I

    const-string v69, "WirelessDisplayService"

    const-string v70, "Keep Polling Music Alive, Wait 2 sec later"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v69, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)V

    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1f

    const/16 v70, 0x21

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v65

    .local v65, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v41           #msgTimeOut:Landroid/os/Message;
    .end local v65           #timeOutStop:Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_9
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_18

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_19

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    :cond_18
    :goto_3
    monitor-exit v70

    goto/16 :goto_0

    :catchall_3
    move-exception v69

    monitor-exit v70
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v69

    :cond_19
    :try_start_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :sswitch_f
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "Mirror State: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v69

    if-eqz v69, :cond_0

    new-instance v69, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    :sswitch_10
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_WIFI_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v70

    new-instance v71, Landroid/content/Intent;

    const-string v72, "com.htc.wfdservice.IWfdService"

    invoke-direct/range {v71 .. v72}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v72

    const/16 v73, 0x1

    invoke-virtual/range {v70 .. v73}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Z)Z

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Bind WHDMI WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4102(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Unbind WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/16 v69, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :sswitch_13
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_14
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const-string v70, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    :sswitch_15
    move v13, v10

    .local v13, configState:I
    const/16 v69, 0x3

    move/from16 v0, v69

    if-eq v10, v0, :cond_1b

    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v10, v0, :cond_20

    :cond_1b
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "receiver WfdServices Call back, "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v32, mirrorResultIntent:Landroid/content/Intent;
    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v10, v0, :cond_1f

    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

    .local v14, currentDongle:Lcom/htc/service/DongleInfo;
    const/16 v69, 0x4

    move/from16 v0, v69

    if-eq v10, v0, :cond_1d

    if-eqz v14, :cond_1e

    iget v0, v14, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x2

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .end local v14           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_1f
    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v10, v0, :cond_1c

    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_4

    .end local v32           #mirrorResultIntent:Landroid/content/Intent;
    :cond_20
    const/16 v69, 0x5

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v13           #configState:I
    :sswitch_16
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_21

    const/16 v69, 0x1

    :goto_5
    move-object/from16 v0, v70

    move/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    :cond_21
    const/16 v69, 0x0

    goto :goto_5

    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_res"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .local v61, status:Ljava/lang/String;
    const/16 v69, 0x3e

    move/from16 v0, v69

    if-ne v10, v0, :cond_24

    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_23

    const-string v69, "VALUE=1"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_22

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_0

    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x2

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v64

    .local v64, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v70, 0x15f90

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v64           #timeOut2:Landroid/os/Message;
    :cond_22
    const-string v69, "VALUE=0"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_23
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :cond_24
    const/16 v69, 0x3f

    move/from16 v0, v69

    if-ne v10, v0, :cond_27

    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_26

    const-string v69, "VALUE=1"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_25

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_26
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :cond_27
    const/16 v69, 0x40

    move/from16 v0, v69

    if-ne v10, v0, :cond_28

    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_28
    const/16 v69, 0x41

    move/from16 v0, v69

    if-eq v10, v0, :cond_0

    const/16 v69, 0x42

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    move-object/from16 v66, v61

    .local v66, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v61           #status:Ljava/lang/String;
    .end local v66           #tosend:Ljava/lang/String;
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_req"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .local v54, request:Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WIVU_REQ:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", arg1 = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " , arg2 = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v54, :cond_32

    const/16 v69, 0x16

    move/from16 v0, v69

    if-ne v10, v0, :cond_32

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x16

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    .local v29, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_29
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5300()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_2a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5500()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_2b
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IP = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", audioPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", videoPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v72

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_30

    const/16 v69, 0x2

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_2c

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_30

    :cond_2c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_2e

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_2d

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x29

    const/16 v72, 0x2a

    const/16 v73, 0x2c

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .local v35, msg3:Landroid/os/Message;
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const-wide/16 v71, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v35           #msg3:Landroid/os/Message;
    :goto_6
    monitor-exit v70

    goto/16 :goto_0

    :catchall_4
    move-exception v69

    monitor-exit v70
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v69

    :cond_2d
    :try_start_c
    const-string v69, "WirelessDisplayService"

    const-string v71, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    :cond_2e
    const/16 v69, 0x2

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    const/16 v69, 0x1

    const/16 v70, 0x9

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    const/16 v71, 0x2

    const/16 v72, 0x1

    #calls: Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;IIZ)V

    const-string v69, "WirelessDisplayService"

    const-string v70, "IncomingCallReceiver during configuring set mAppCallScreen:PAUSE_CALL"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2f
    const/16 v69, 0x33

    const/16 v70, 0x34

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .local v33, msg1:Landroid/os/Message;
    const-wide/16 v69, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v33           #msg1:Landroid/os/Message;
    :cond_30
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_31

    const-string v69, "WirelessDisplayService"

    const-string v71, "Dongle wrong state: take it out"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    const/16 v69, 0x1f

    const/16 v71, 0x21

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    .local v28, makeSure:Landroid/os/Message;
    const-wide/16 v71, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v28           #makeSure:Landroid/os/Message;
    :cond_31
    monitor-exit v70

    goto/16 :goto_0

    :catchall_5
    move-exception v69

    monitor-exit v70
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v69

    .end local v29           #matcher:Ljava/util/regex/Matcher;
    :cond_32
    const/16 v69, 0x17

    move/from16 v0, v69

    if-ne v10, v0, :cond_36

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x17

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_33

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_33

    const-string v69, "WirelessDisplayService"

    const-string v71, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x6

    const/16 v71, -0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .local v62, stopTrans:Landroid/os/Message;
    const-wide/16 v71, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-wide/from16 v2, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v62           #stopTrans:Landroid/os/Message;
    :cond_33
    monitor-exit v70
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_34

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_35

    const-string v69, "WirelessDisplayService"

    const-string v70, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6200()Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "Switching the dongle"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    :catchall_6
    move-exception v69

    :try_start_f
    monitor-exit v70
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v69

    :cond_35
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .local v38, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7

    .end local v38           #msgChangeState1:Landroid/os/Message;
    :cond_36
    const/16 v69, 0x18

    move/from16 v0, v69

    if-ne v10, v0, :cond_37

    const-string v69, "="

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .local v27, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v27

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6300(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-interface/range {v69 .. v70}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v27           #macs:[Ljava/lang/String;
    :cond_37
    const/16 v69, 0x1b

    move/from16 v0, v69

    if-ne v10, v0, :cond_38

    move-object/from16 v6, v54

    .local v6, addToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-interface/range {v69 .. v70}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x2

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v6           #addToList:Ljava/lang/String;
    :cond_38
    const/16 v69, 0x19

    move/from16 v0, v69

    if-ne v10, v0, :cond_39

    const-string v69, "WirelessDisplayService"

    const-string v70, "SWUPGRADE and send notification"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6400(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    :cond_39
    const/16 v69, 0x1a

    move/from16 v0, v69

    if-ne v10, v0, :cond_3c

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_3a

    const/16 v69, 0x2

    move/from16 v0, v69

    if-ge v11, v0, :cond_3a

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Current Interface"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", Mirror State:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v17

    .local v17, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v17, :cond_0

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "curDongle state:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    const/16 v69, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v17           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_3a
    if-eqz v11, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    :cond_3b
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3c
    const/16 v69, 0x1c

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.5"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x7

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Z)Z

    const/16 v69, 0xc9

    const/16 v70, 0x3

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const/16 v69, 0x12f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0x1388

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v54           #request:Ljava/lang/String;
    :sswitch_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_10
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-nez v69, :cond_3e

    monitor-exit v70

    goto/16 :goto_0

    :catchall_7
    move-exception v69

    monitor-exit v70
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v69

    :cond_3e
    const/16 v69, 0x20

    move/from16 v0, v69

    if-ne v10, v0, :cond_40

    :try_start_11
    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_DISCOVERY"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    :cond_3f
    :goto_8
    monitor-exit v70

    goto/16 :goto_0

    :cond_40
    const/16 v69, 0x21

    move/from16 v0, v69

    if-ne v10, v0, :cond_43

    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_PLUGGED:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, -0x1

    .local v53, req:I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_42

    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_41

    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_41

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v71, 0x16

    move/from16 v0, v69

    move/from16 v1, v71

    if-ne v0, v1, :cond_41

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->reset_lastsink()I

    :cond_41
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_3f

    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x2

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v64

    .restart local v64       #timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v71, 0x15f90

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    move-wide/from16 v2, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .end local v64           #timeOut2:Landroid/os/Message;
    :cond_42
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v53

    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    .local v39, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .end local v39           #msgChangeState2:Landroid/os/Message;
    .end local v53           #req:I
    :cond_43
    const/16 v69, 0x22

    move/from16 v0, v69

    if-ne v10, v0, :cond_44

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_8

    :cond_44
    const/16 v69, 0x23

    move/from16 v0, v69

    if-ne v10, v0, :cond_45

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_8

    :cond_45
    const/16 v69, 0x24

    move/from16 v0, v69

    if-ne v10, v0, :cond_47

    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_STOP_DIS"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .local v40, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v71, 0x49

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_8

    .end local v40           #msgChangeState3:Landroid/os/Message;
    :cond_47
    const/16 v69, 0x25

    move/from16 v0, v69

    if-ne v10, v0, :cond_48

    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_PEER_SELECT"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "dongle_staBssid"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .local v58, staBssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v58

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .end local v58           #staBssid2:Ljava/lang/String;
    :cond_48
    const/16 v69, 0x27

    move/from16 v0, v69

    if-ne v10, v0, :cond_4a

    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "interface"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, ifname:Ljava/lang/String;
    const/16 v53, -0x1

    .restart local v53       #req:I
    if-eqz v24, :cond_3f

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_49

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v53

    :goto_9
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_49
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v53

    goto :goto_9

    .end local v24           #ifname:Ljava/lang/String;
    .end local v53           #req:I
    :cond_4a
    const/16 v69, 0x28

    move/from16 v0, v69

    if-ne v10, v0, :cond_4d

    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, -0x1

    .restart local v53       #req:I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_4b

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_3f

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v53

    goto/16 :goto_8

    :cond_4b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_3f

    :cond_4c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_8

    .end local v53           #req:I
    :cond_4d
    const/16 v69, 0x191

    move/from16 v0, v69

    if-ne v10, v0, :cond_4f

    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "interfaceRoute"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #ifname:Ljava/lang/String;
    const/16 v53, -0x1

    .restart local v53       #req:I
    if-eqz v24, :cond_3f

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_4e

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v53

    goto/16 :goto_8

    :cond_4e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_8

    .end local v24           #ifname:Ljava/lang/String;
    .end local v53           #req:I
    :cond_4f
    const/16 v69, 0x192

    move/from16 v0, v69

    if-ne v10, v0, :cond_3f

    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6700(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v53, -0x1

    .restart local v53       #req:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$6700(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->enabledAAC(Z)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_8

    .end local v53           #req:I
    :sswitch_1a
    const/16 v69, 0x34

    move/from16 v0, v69

    if-ne v10, v0, :cond_52

    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_START"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x3

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    const/16 v59, -0x1

    .local v59, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v59

    if-nez v59, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    :cond_50
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_12
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_51

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_51
    monitor-exit v70
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :catchall_8
    move-exception v69

    :try_start_13
    monitor-exit v70
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v69

    .end local v59           #star:I
    :cond_52
    const/16 v69, 0x35

    move/from16 v0, v69

    if-ne v10, v0, :cond_54

    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x4

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_53

    :cond_53
    const/16 v59, -0x1

    .restart local v59       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7000(Lcom/htc/server/WirelessDisplayService;)I

    move-result v59

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .end local v59           #star:I
    :cond_54
    const/16 v69, 0x36

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_RESTART"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v59, -0x1

    .restart local v59       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v59

    const/16 v69, -0x1

    move/from16 v0, v59

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_14
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_55

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_55
    monitor-exit v70
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :catchall_9
    move-exception v69

    :try_start_15
    monitor-exit v70
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v69

    .end local v59           #star:I
    :sswitch_1b
    move/from16 v60, v51

    .local v60, state:I
    const/16 v21, 0x0

    .local v21, err:I
    const/16 v69, 0x1

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    const/16 v69, 0x2b

    move/from16 v0, v69

    if-ne v10, v0, :cond_5c

    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_PAUSE event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v11, v0, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7000(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .local v8, app:I
    if-nez v8, :cond_56

    const/16 v60, 0x7

    .end local v8           #app:I
    :cond_56
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v60

    move/from16 v2, v21

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :cond_57
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v11, v0, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v60, 0x4

    goto :goto_a

    :cond_58
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v11, v0, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.5"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_5b

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;Z)V

    :cond_5a
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v60, 0x9

    goto :goto_a

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_5a

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_b

    :catch_4
    move-exception v20

    .restart local v20       #e:Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v20           #e:Ljava/lang/Exception;
    :cond_5c
    const/16 v69, 0x2a

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    :try_start_17
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-nez v69, :cond_5d

    monitor-exit v70

    goto/16 :goto_0

    :catchall_a
    move-exception v69

    monitor-exit v70
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v69

    :cond_5d
    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v11, v0, :cond_61

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_5e

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .local v9, app2:I
    if-nez v9, :cond_5f

    const/16 v60, 0x3

    .end local v9           #app2:I
    :cond_5e
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v60

    move/from16 v2, v21

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    monitor-exit v70

    goto/16 :goto_0

    .restart local v9       #app2:I
    :cond_5f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v71

    monitor-enter v71
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :try_start_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_60

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_60
    monitor-exit v71

    const/16 v60, 0x1

    const/16 v21, -0x4

    goto :goto_c

    :catchall_b
    move-exception v69

    monitor-exit v71
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    throw v69

    .end local v9           #app2:I
    :cond_61
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v11, v0, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v60, 0x3

    goto :goto_c

    :cond_62
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v11, v0, :cond_5e

    const-string v69, "WirelessDisplayService"

    const-string v71, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x9

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_5e

    const/16 v60, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v71, "4.5"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v71, "4.0"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_64

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;Z)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto/16 :goto_c

    :cond_64
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    goto :goto_d

    :catch_5
    move-exception v20

    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_1c
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "exception caught"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v20           #e:Ljava/lang/Exception;
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .restart local v9       #app2:I
    if-nez v9, :cond_66

    const/16 v60, 0x3

    goto/16 :goto_c

    :cond_66
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v71

    monitor-enter v71
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :try_start_1d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_67

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_67
    monitor-exit v71

    const/16 v60, 0x1

    const/16 v21, -0x4

    goto/16 :goto_c

    :catchall_c
    move-exception v69

    monitor-exit v71
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :try_start_1e
    throw v69
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .end local v9           #app2:I
    .end local v21           #err:I
    .end local v60           #state:I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7300(Lcom/htc/server/WirelessDisplayService;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const-string v71, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v70 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1d
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", arg:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-nez v69, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_68

    const/16 v69, 0x70

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .local v42, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v69, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WfdService not ready, resent, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7610(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .end local v42           #msgUseWfdService:Landroid/os/Message;
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-eqz v69, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7602(Lcom/htc/server/WirelessDisplayService;I)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_6a

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v69, 0x13

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v55

    .local v55, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v70, 0x249f0

    move-object/from16 v0, v69

    move-object/from16 v1, v55

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Use WfdService, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .local v16, defgDongle:Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7700(Lcom/htc/server/WirelessDisplayService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v16

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$7800(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    :cond_69
    const-string v69, "WirelessDisplayService"

    const-string v70, "Resend HANDLE_FINGER_GESTURE again due to timing cause default Dongle is null"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x6f

    const/16 v70, 0x1

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v16           #defgDongle:Lcom/htc/service/DongleInfo;
    .end local v55           #resetWFD_Flag:Landroid/os/Message;
    :cond_6a
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6b
    const-string v69, "WirelessDisplayService"

    const-string v70, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1e
    move v4, v10

    .local v4, absoluteDirection:I
    move/from16 v52, v11

    .local v52, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v52

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$7900(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v22

    .local v22, fingerIndicator:I
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v22

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$8002(Lcom/htc/server/WirelessDisplayService;I)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v70

    const/16 v71, 0x6f

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v71

    move/from16 v2, v22

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v70

    const-wide/16 v71, 0x3e8

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v4           #absoluteDirection:I
    .end local v22           #fingerIndicator:I
    .end local v52           #relativeDirection:I
    :sswitch_1f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_6c

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_6c

    const-string v69, "WirelessDisplayService"

    const-string v70, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6c
    const/16 v69, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v10, v0, :cond_6e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    const/16 v69, 0x1

    move/from16 v0, v69

    new-array v15, v0, [Ljava/lang/Object;

    .local v15, debug2:[Ljava/lang/Object;
    const/16 v69, 0x0

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "curMirrStatus: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    aput-object v70, v15, v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const-string v70, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_6d

    const-string v69, "WirelessDisplayService"

    const-string v70, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    :cond_6d
    const-string v69, "WirelessDisplayService"

    const-string v70, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v48

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v48, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v15           #debug2:[Ljava/lang/Object;
    .end local v48           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_6e
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_6f

    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/content/Intent;

    const-string v71, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v70 .. v71}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_6

    :cond_6f
    :goto_e
    const/16 v69, 0x3

    move/from16 v0, v51

    move/from16 v1, v69

    if-eq v0, v1, :cond_70

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_71

    :cond_70
    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v32       #mirrorResultIntent:Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "mirror mode status: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v69, 0x7

    move/from16 v0, v51

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v47, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v47

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v47, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v32           #mirrorResultIntent:Landroid/content/Intent;
    .end local v47           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_6
    move-exception v56

    .local v56, se:Ljava/lang/SecurityException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v56           #se:Ljava/lang/SecurityException;
    :cond_71
    new-instance v46, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v46

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v46, notifyConfigerTool:Landroid/content/Intent;
    new-instance v45, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v45, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v49, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v49, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v69, 0x1000

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v69, "caller"

    const-string v70, "3finger"

    move-object/from16 v0, v46

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v69, 0x1000

    move-object/from16 v0, v45

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v69, 0x1000

    move-object/from16 v0, v49

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v69, "caller"

    const-string v70, "3finger"

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v32       #mirrorResultIntent:Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v69

    if-nez v69, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_73

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/Hashtable;->size()I

    move-result v69

    if-nez v69, :cond_75

    :cond_73
    const-string v69, "WirelessDisplayService"

    const-string v70, "FINGER GESTURE, No Dongle Found(WIFI DISABLED)"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_74
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v7

    .local v7, ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v69

    if-eqz v69, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v18

    .local v18, dfgDongle:Lcom/htc/service/DongleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_76

    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v69, v0

    if-nez v69, :cond_0

    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_21} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_76
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x4

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_77

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_78

    :cond_77
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v69, "DONGLE_MAC"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_22} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    .end local v12           #bundle:Landroid/os/Bundle;
    :cond_78
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x2

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_79

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    :cond_79
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    move/from16 v69, v0

    if-eqz v69, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v69

    if-nez v69, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$8402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/DongleConnectedDialog;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;->show()V

    goto/16 :goto_0

    :cond_7b
    const/16 v69, 0xb

    const/16 v70, -0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .local v36, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const/16 v69, 0x70

    const/16 v70, 0x0

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .restart local v42       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v69, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v18           #dfgDongle:Lcom/htc/service/DongleInfo;
    .end local v36           #msgBindWfdService:Landroid/os/Message;
    .end local v42           #msgUseWfdService:Landroid/os/Message;
    :cond_7c
    const-string v69, "sys.wfd.autoTestFlag"

    const-string v70, ""

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8502(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8500()Ljava/lang/String;

    move-result-object v69

    const-string v70, "reconnect"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v69

    if-nez v69, :cond_0

    const-string v69, "WirelessDisplayService"

    const-string v70, "wifi scan fail!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7d
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x4 -> :sswitch_c
        0x5 -> :sswitch_10
        0x6 -> :sswitch_e
        0x9 -> :sswitch_16
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xd -> :sswitch_15
        0xf -> :sswitch_1c
        0x10 -> :sswitch_f
        0x11 -> :sswitch_7
        0x13 -> :sswitch_13
        0x14 -> :sswitch_d
        0x15 -> :sswitch_18
        0x1f -> :sswitch_19
        0x29 -> :sswitch_1b
        0x33 -> :sswitch_1a
        0x3d -> :sswitch_17
        0x6f -> :sswitch_1f
        0x70 -> :sswitch_1d
        0x71 -> :sswitch_1e
        0x72 -> :sswitch_b
        0x73 -> :sswitch_14
        0x74 -> :sswitch_4
        0x75 -> :sswitch_5
        0xc9 -> :sswitch_0
        0xde -> :sswitch_8
        0x12f -> :sswitch_2
        0x130 -> :sswitch_1
        0x14d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
