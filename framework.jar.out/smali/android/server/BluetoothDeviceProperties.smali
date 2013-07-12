.class Landroid/server/BluetoothDeviceProperties;
.super Ljava/lang/Object;
.source "BluetoothDeviceProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceProperties"


# instance fields
.field private final mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    .line 36
    return-void
.end method


# virtual methods
.method addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .parameter "address"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v9, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 45
    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 46
    .local v6, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 47
    new-instance v6, Ljava/util/HashMap;

    .end local v6           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local v6       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, p2

    if-ge v1, v8, :cond_6

    .line 51
    aget-object v4, p2, v1

    .line 52
    .local v4, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 54
    .local v5, newValue:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 55
    const-string v8, "BluetoothDeviceProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: Remote Device Property at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const-string v8, "UUIDs"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Nodes"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Services"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 60
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v7, str:Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    aget-object v8, p2, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 62
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 63
    add-int/lit8 v1, v1, 0x1

    aget-object v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66
    :cond_3
    if-lez v3, :cond_4

    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .end local v2           #j:I
    .end local v3           #len:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 81
    .end local v1           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #newValue:Ljava/lang/String;
    .end local v6           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 71
    .restart local v1       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #newValue:Ljava/lang/String;
    .restart local v6       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    aget-object v5, p2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "BluetoothDeviceProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in retrieving protperties"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v5, 0x0

    goto :goto_3

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #newValue:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v8, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 86
    return-object v6
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "property"

    .prologue
    .line 120
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 122
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    .line 135
    :goto_0
    return-object v1

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 133
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    const-string v1, "BluetoothDeviceProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isInCache(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 102
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 90
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 92
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_0
    monitor-exit v2

    .line 99
    return-void

    .line 96
    :cond_0
    const-string v1, "BluetoothDeviceProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteDeviceProperty for a device not in cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateCache(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
