.class Landroid/net/wifi/WifiStateMachine$CwHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CwHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] EVENT_CW_REGISTER_START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterCapability()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] no register capability"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] mCWService does not bind!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v7, "com.htc.cw.ICWService$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .local v5, stubrefClass:Ljava/lang/Class;
    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, asInterface:Ljava/lang/reflect/Method;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "Get the ICWService"

    const-string v8, "mCWService is null..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    :cond_2
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "register"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, register:Ljava/lang/reflect/Method;
    if-nez v3, :cond_3

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] can not get the CWService method register"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v3       #register:Ljava/lang/reflect/Method;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    :cond_3
    const/4 v7, 0x0

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] call CW Register success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :pswitch_1
    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] EVENT_CW_DEREGISTER_START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] mCWService does not bind!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Z

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v7, "com.htc.cw.ICWService$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5       #stubrefClass:Ljava/lang/Class;
    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, "Get the ICWService"

    const-string v8, "mCWService is null..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_5
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    :cond_5
    const/4 v7, 0x1

    :try_start_4
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "unRegister"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .local v6, unRegister:Ljava/lang/reflect/Method;
    if-nez v6, :cond_6

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] can not get the CWService method unRegister"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    .end local v6           #unRegister:Ljava/lang/reflect/Method;
    :catch_6
    move-exception v2

    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    .restart local v6       #unRegister:Ljava/lang/reflect/Method;
    :cond_6
    const/4 v7, 0x0

    :try_start_5
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] call CW unRegister success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    .end local v6           #unRegister:Ljava/lang/reflect/Method;
    :catch_7
    move-exception v2

    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v2

    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v2

    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :pswitch_2
    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] EVENT_CW_REGISTER_EXPIRE_START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] mCWService does not bind!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Z

    goto/16 :goto_0

    :cond_7
    :try_start_6
    const-string v7, "com.htc.cw.ICWService$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5       #stubrefClass:Ljava/lang/Class;
    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_8

    const-string v7, "Get the ICWService"

    const-string v8, "mCWService is null..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_e

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_a
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    :cond_8
    const/4 v7, 0x1

    :try_start_7
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "registerExpire"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, registerExpire:Ljava/lang/reflect/Method;
    if-nez v4, :cond_9

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] can not get the CWService method registerExpire"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_e

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #registerExpire:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_b
    move-exception v2

    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v4       #registerExpire:Ljava/lang/reflect/Method;
    .restart local v5       #stubrefClass:Ljava/lang/Class;
    :cond_9
    const/4 v7, 0x0

    :try_start_8
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "WifiStateMachine"

    const-string v8, "[C+W] call CW registerExpire success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_e

    goto/16 :goto_0

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #registerExpire:Ljava/lang/reflect/Method;
    .end local v5           #stubrefClass:Ljava/lang/Class;
    :catch_c
    move-exception v2

    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_d
    move-exception v2

    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_e
    move-exception v2

    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
