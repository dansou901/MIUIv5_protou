.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x12d

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    .local v15, isHtcLateUpdateNetworkState:Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .local v13, info:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    .local v27, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x12

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v26

    .local v26, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v30

    aget-object v30, v30, v27

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_3

    sget-object v30, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v27

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v27

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v30, v0

    const/16 v31, 0x12

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Dropping ConnectivityChange for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v13           #info:Landroid/net/NetworkInfo;
    .end local v15           #isHtcLateUpdateNetworkState:Z
    .end local v26           #state:Landroid/net/NetworkInfo$State;
    .end local v27           #type:I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_1

    .restart local v13       #info:Landroid/net/NetworkInfo;
    .restart local v15       #isHtcLateUpdateNetworkState:Z
    .restart local v26       #state:Landroid/net/NetworkInfo$State;
    .restart local v27       #type:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v30

    aput-object v26, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ConnectivityChange for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", default="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    and-int/lit8 v30, v30, 0xf

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v31

    and-int/lit8 v31, v31, 0x3f

    shl-int/lit8 v31, v31, 0x4

    or-int v30, v30, v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v31

    shl-int/lit8 v31, v31, 0xa

    or-int v12, v30, v31

    .local v12, eventLogParam:I
    const v30, 0xc364

    move/from16 v0, v30

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    :cond_5
    :goto_2
    const/16 v30, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v31 .. v31}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v31 .. v31}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v31

    aget-object v30, v30, v31

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .local v5, activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    :goto_4
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, sActiveDefaultNetwork:Ljava/lang/String;
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mActiveDefaultNetwork: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v5           #activeNetworkInfo:Landroid/net/NetworkInfo;
    .end local v24           #sActiveDefaultNetwork:Ljava/lang/String;
    :catch_0
    move-exception v30

    goto/16 :goto_0

    :cond_6
    sget-object v30, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_8

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_2

    :cond_8
    sget-object v30, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_a

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_2

    :cond_a
    sget-object v30, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v30

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService$DualMode;->access$1700(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v30

    if-nez v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleConnectDualMode(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v13, v15}, Lcom/android/server/ConnectivityService$DualMode;->access$1800(Lcom/android/server/ConnectivityService$DualMode;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v13, v15}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .restart local v5       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_d
    :try_start_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v30

    goto/16 :goto_4

    .end local v5           #activeNetworkInfo:Landroid/net/NetworkInfo;
    .end local v12           #eventLogParam:I
    .end local v13           #info:Landroid/net/NetworkInfo;
    .end local v15           #isHtcLateUpdateNetworkState:Z
    .end local v26           #state:Landroid/net/NetworkInfo$State;
    .end local v27           #type:I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .restart local v13       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v13, v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .end local v13           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .restart local v13       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x18

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    if-eqz v30, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_e

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    aget-object v30, v30, v31

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v31 .. v31}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v31

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v32

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Lcom/android/server/connectivity/Tethering;->htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_0

    .end local v13           #info:Landroid/net/NetworkInfo;
    :sswitch_4
    const/4 v6, 0x0

    .local v6, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    monitor-enter v31

    :try_start_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v30

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v6

    :cond_10
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetTransition Wakelock for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " released by timeout"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v30

    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v30

    .end local v6           #causedBy:Ljava/lang/String;
    :sswitch_5
    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v31, 0x94

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v31, 0xaf

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    :cond_11
    sget-short v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v31, 0x50

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .restart local v13       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x2d

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    if-eqz v30, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/net/ConnectivityManager;->isSubTypeCDMA(I)Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    aget-object v30, v30, v31

    const-string v31, "exclusive"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    aget-object v30, v30, v31

    const-string v31, "apn"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    .end local v13           #info:Landroid/net/NetworkInfo;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/ConnectivityService$FeatureUser;

    .local v29, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .end local v29           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .local v19, netType:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .local v8, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v1, v8}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .end local v8           #condition:I
    .end local v19           #netType:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .restart local v19       #netType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .local v25, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    move/from16 v2, v25

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .end local v19           #netType:I
    .end local v25           #sequence:I
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .local v22, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .end local v22           #preference:I
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    const/4 v11, 0x1

    .local v11, enabled:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .end local v11           #enabled:Z
    :cond_13
    const/4 v11, 0x0

    goto :goto_5

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    const/16 v17, 0x1

    .local v17, met:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v17

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .end local v17           #met:Z
    :cond_14
    const/16 v17, 0x0

    goto :goto_6

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v31

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/content/Intent;

    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v14}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v14           #intent:Landroid/content/Intent;
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .local v20, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    const/4 v11, 0x1

    .restart local v11       #enabled:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v1, v11}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .end local v11           #enabled:Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_7

    .end local v20           #networkType:I
    :sswitch_10
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "issue reconnect to special network:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v23

    .local v23, result:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    new-instance v32, Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_0

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3500()Z

    move-result v30

    if-eqz v30, :cond_16

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3600()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to reconnect "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " type "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .local v16, mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v16, v30

    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v16, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x33

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v16

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .end local v16           #mParams:[Ljava/lang/Object;
    .end local v23           #result:Z
    :catch_1
    move-exception v30

    goto/16 :goto_0

    :sswitch_11
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "issue teardown to special network:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " from ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/net/NetworkStateTracker;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v30

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x0

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->teardown()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService$DualMode;->access$1700(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v30

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x11

    const-string v32, ""

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[Dual mode]:receive EVENT_DUAL_MODE_SWITCH: mActiveDefaultNetwork("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "ConnectivityService"

    const-string v31, "[Dual mode]:start hanleDualModeSwitch()"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleDualModeSwitch(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$DualMode;->access$3900(Lcom/android/server/ConnectivityService$DualMode;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .restart local v13       #info:Landroid/net/NetworkInfo;
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .local v7, changedNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    aget-object v30, v30, v7

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    aget-object v30, v30, v7

    if-eqz v30, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    aget-object v30, v30, v7

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v31 .. v31}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v31

    aget-object v31, v31, v7

    invoke-interface/range {v31 .. v31}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v30, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v30

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_19

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3500()Z

    move-result v30

    if-eqz v30, :cond_18

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3600()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to reconnect avaliable net : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x34

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    :cond_19
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v30

    if-nez v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/IWifiManager;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v30

    if-eqz v30, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/Tethering;->htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v7           #changedNetType:I
    :cond_1b
    :goto_8
    const/16 v28, 0x0

    .local v28, typeName:Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move-object/from16 v28, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .end local v28           #typeName:Ljava/lang/String;
    .restart local v7       #changedNetType:I
    :catch_3
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[tether] error to getHotspotEnabled:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v7           #changedNetType:I
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #info:Landroid/net/NetworkInfo;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/ConnectivityService;->handleSystemReady()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .local v21, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileDataPhoneType(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .end local v21           #phoneType:I
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .local v18, mobileType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    const/4 v10, 0x1

    .local v10, enable:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v30

    aget-object v30, v30, v18

    check-cast v30, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/net/MobileDataStateTracker;->setUserDataEnableDualGsm(Z)V

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3500()Z

    move-result v30

    if-eqz v30, :cond_1c

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3600()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "setUserDataEnableDualGsm: mobileType= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " enable= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .restart local v16       #mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v16, v30

    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Boolean;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v31, v16, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    const/16 v31, 0x77

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v16

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v10           #enable:Z
    .end local v16           #mParams:[Ljava/lang/Object;
    :cond_1d
    const/4 v10, 0x0

    goto :goto_9

    .end local v18           #mobileType:I
    .restart local v13       #info:Landroid/net/NetworkInfo;
    .restart local v28       #typeName:Ljava/lang/String;
    :catch_4
    move-exception v30

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
        0x65 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6b -> :sswitch_a
        0x6c -> :sswitch_4
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x73 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_14
        0x76 -> :sswitch_15
        0x77 -> :sswitch_16
        0x12d -> :sswitch_1
        0x12e -> :sswitch_13
        0x12f -> :sswitch_12
        0x130 -> :sswitch_5
        0x131 -> :sswitch_0
    .end sparse-switch
.end method
