.class Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;
.super Landroid/os/Handler;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HookMessageHandler"
.end annotation


# instance fields
.field private msgNum:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 1612
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1609
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->msgNum:I

    .line 1613
    return-void
.end method

.method private enqueueMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x12

    .line 1638
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1639
    :try_start_0
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1640
    .local v2, set:Ljava/util/HashMap;
    if-nez v2, :cond_0

    .line 1641
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #set:Ljava/util/HashMap;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1642
    .restart local v2       #set:Ljava/util/HashMap;
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1645
    .local v1, oldOpObj:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 1655
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #oldOpObj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1656
    .local v0, oldOpCode:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_0

    .line 1675
    monitor-exit v4

    .line 1688
    .end local v0           #oldOpCode:I
    :goto_0
    return-void

    .line 1658
    .restart local v0       #oldOpCode:I
    :sswitch_0
    if-eq v0, v6, :cond_1

    .line 1659
    const/16 v3, 0x17

    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 1686
    .end local v0           #oldOpCode:I
    :cond_1
    :goto_1
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    monitor-exit v4

    goto :goto_0

    .end local v2           #set:Ljava/util/HashMap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1663
    .restart local v0       #oldOpCode:I
    .restart local v2       #set:Ljava/util/HashMap;
    :sswitch_1
    if-ne v0, v6, :cond_1

    .line 1664
    const/16 v3, 0x12

    :try_start_1
    iput v3, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 1668
    :sswitch_2
    if-ne v0, v6, :cond_1

    .line 1669
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    monitor-exit v4

    goto :goto_0

    .line 1677
    .end local v0           #oldOpCode:I
    .restart local v1       #oldOpObj:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$900()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 1684
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1656
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method private static sendIntent()V
    .locals 25

    .prologue
    .line 1698
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    .line 1699
    :try_start_0
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 1700
    .local v15, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1701
    const-string v3, "SQLiteConnection"

    const-string/jumbo v5, "no any recorded row id found in sqlite change event"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    monitor-exit v24

    .line 1738
    :goto_0
    return-void

    .line 1705
    :cond_0
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 1709
    .local v16, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1710
    .local v21, idStr:Ljava/lang/StringBuilder;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1711
    .local v23, tableName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1713
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 1714
    .local v22, ids:Ljava/util/HashMap;
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    .line 1715
    .local v20, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1716
    .local v19, id:Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1736
    .end local v16           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #id:Ljava/util/Map$Entry;
    .end local v20           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v21           #idStr:Ljava/lang/StringBuilder;
    .end local v22           #ids:Ljava/util/HashMap;
    .end local v23           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1719
    .restart local v16       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .restart local v21       #idStr:Ljava/lang/StringBuilder;
    .restart local v22       #ids:Ljava/util/HashMap;
    .restart local v23       #tableName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1720
    const/16 v3, 0x24

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.kii.SQLITE_CHANGE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$1100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1728
    .local v2, iActivityManager:Landroid/app/IActivityManager;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1730
    .end local v2           #iActivityManager:Landroid/app/IActivityManager;
    :catch_0
    move-exception v14

    .line 1731
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SQLiteConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot send intent for sqlite change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1735
    .end local v4           #intent:Landroid/content/Intent;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v16           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v21           #idStr:Ljava/lang/StringBuilder;
    .end local v22           #ids:Ljava/util/HashMap;
    .end local v23           #tableName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$800()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1736
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, -0x1

    .line 1616
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    .line 1617
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1620
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->msgNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->msgNum:I

    .line 1621
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->enqueueMessage(Landroid/os/Message;)V

    .line 1632
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->msgNum:I

    if-nez v0, :cond_2

    .line 1625
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->sendIntent()V

    goto :goto_0

    .line 1628
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->msgNum:I

    .line 1629
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sendIntent(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 1745
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.kii.SQLITE_CHANGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1747
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1748
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1751
    .local v0, iActivityManager:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    .end local v0           #iActivityManager:Landroid/app/IActivityManager;
    :goto_0
    return-void

    .line 1752
    :catch_0
    move-exception v12

    .line 1753
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "SQLiteConnection"

    const-string v3, "Cannot send sqlite update notificaiton Intent successfully"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
