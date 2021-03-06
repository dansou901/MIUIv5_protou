.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/high16 v1, 0x3f40

    .line 4452
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4446
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4448
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4454
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 4457
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 4458
    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {p1}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4459
    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4460
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4462
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 4464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 4466
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 4440
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->extreamCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4440
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4440
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 5026
    const-string v3, "   Current: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5027
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 5028
    .local v2, set:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5029
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5030
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5031
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 5034
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    const-string v3, "\n   Last audible: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5035
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 5036
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5037
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5038
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5039
    .restart local v0       #entry:Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 5042
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method

.method private declared-synchronized extreamCount()I
    .locals 4

    .prologue
    .line 4996
    monitor-enter p0

    const/4 v0, 0x0

    .line 4997
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4998
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4999
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mExtreamCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$5400(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 4998
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5001
    :cond_0
    monitor-exit p0

    return v0

    .line 4996
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 6
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 5007
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5008
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 5009
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 5010
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$5500(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    move-object v1, v0

    .line 5022
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 5008
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5016
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 5017
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    move-object v1, v0

    .line 5022
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 5019
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string/jumbo v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2
.end method

.method private getValidIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 4766
    if-gez p1, :cond_1

    .line 4767
    const/4 p1, 0x0

    .line 4772
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 4768
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 4769
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private declared-synchronized muteCount()I
    .locals 4

    .prologue
    .line 4986
    monitor-enter p0

    const/4 v0, 0x0

    .line 4987
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4988
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4989
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2000(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 4988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4991
    :cond_0
    monitor-exit p0

    return v0

    .line 4986
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public adjustIndex(II)Z
    .locals 2
    .parameter "deltaIndex"
    .parameter "device"

    .prologue
    .line 4595
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized adjustLastAudibleIndex(II)V
    .locals 1
    .parameter "deltaIndex"
    .parameter "device"

    .prologue
    .line 4721
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4724
    monitor-exit p0

    return-void

    .line 4721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyAllVolumes()V
    .locals 9

    .prologue
    const/high16 v8, 0x8

    .line 4569
    monitor-enter p0

    :try_start_0
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0xa

    const/high16 v7, 0x8

    invoke-static {v5, v6, v7}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4573
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 4574
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4575
    .local v2, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4576
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4577
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4578
    .local v0, device:I
    if-eq v0, v8, :cond_0

    .line 4579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v4, v5, 0xa

    .line 4581
    .local v4, volume:I
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIgnoreMute:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 4584
    :cond_1
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->shouldEnforceShutterSound()Z
    invoke-static {v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 4585
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v5

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v4, v5, v6

    .line 4587
    :cond_2
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v4, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4569
    .end local v0           #device:I
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #i:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/Set;
    .end local v4           #volume:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4592
    .restart local v2       #i:Ljava/util/Iterator;
    .restart local v3       #set:Ljava/util/Set;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public applyDeviceVolume(I)V
    .locals 3
    .parameter "device"

    .prologue
    .line 4553
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 4555
    .local v0, volume:I
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIgnoreMute:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4564
    :goto_0
    return-void

    .line 4558
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->shouldEnforceShutterSound()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4559
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v1, v2

    .line 4561
    :cond_1
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_0
.end method

.method public declared-synchronized extream(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 4777
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 4778
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 4779
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4783
    :goto_0
    monitor-exit p0

    return-void

    .line 4782
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->extream(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4777
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllIndexes(Z)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "lastAudible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4732
    if-eqz p1, :cond_0

    .line 4733
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4735
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public declared-synchronized getIndex(IZ)I
    .locals 3
    .parameter "device"
    .parameter "lastAudible"

    .prologue
    .line 4676
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 4677
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4681
    .local v1, indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4682
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4684
    if-nez v0, :cond_0

    .line 4685
    const/high16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 4687
    .restart local v0       #index:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 4679
    .end local v0           #index:Ljava/lang/Integer;
    .end local v1           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 4676
    .end local v1           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getLastAudibleVolumeIndexSettingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4792
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 4727
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(ZI)Ljava/lang/String;
    .locals 4
    .parameter "lastAudible"
    .parameter "device"

    .prologue
    .line 4469
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 4472
    .local v0, name:Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 4473
    .local v1, suffix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4476
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 4469
    .end local v1           #suffix:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    goto :goto_0

    .line 4476
    .restart local v0       #name:Ljava/lang/String;
    .restart local v1       #suffix:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 4762
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public getVolumeIndexSettingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4787
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mute(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 4753
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 4754
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 4755
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4759
    :goto_0
    monitor-exit p0

    return-void

    .line 4758
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4753
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readSettings()V
    .locals 13

    .prologue
    .line 4480
    monitor-enter p0

    const v12, 0xfffff

    .line 4482
    .local v12, remainingDevices:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-eqz v12, :cond_a

    .line 4483
    const/4 v0, 0x1

    shl-int v4, v0, v8

    .line 4484
    .local v4, device:I
    and-int v0, v4, v12

    if-nez v0, :cond_1

    .line 4482
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4487
    :cond_1
    xor-int/lit8 v0, v4, -0x1

    and-int/2addr v12, v0

    .line 4490
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(ZI)Ljava/lang/String;

    move-result-object v11

    .line 4493
    .local v11, name:Ljava/lang/String;
    const/high16 v0, 0x8

    if-ne v4, v0, :cond_8

    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v0, v1

    .line 4495
    .local v7, defaultIndex:I
    :goto_2
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 4496
    .local v9, index:I
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readsettings index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    .line 4502
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(ZI)Ljava/lang/String;

    move-result-object v11

    .line 4505
    if-lez v9, :cond_9

    move v7, v9

    .line 4507
    :goto_3
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 4512
    .local v10, lastAudibleIndex:I
    if-nez v10, :cond_4

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4516
    :cond_3
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v10, v0, v1

    .line 4518
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v6, 0x1f4

    move-object v5, p0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4526
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v2, v10, 0xa

    invoke-direct {p0, v2}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4530
    if-nez v9, :cond_7

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4534
    :cond_6
    move v9, v10

    .line 4536
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x1f4

    move-object v5, p0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4544
    :cond_7
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "put device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " volume setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v9, 0xa

    invoke-direct {p0, v2}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into catch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v2, v9, 0xa

    invoke-direct {p0, v2}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 4480
    .end local v7           #defaultIndex:I
    .end local v9           #index:I
    .end local v10           #lastAudibleIndex:I
    .end local v11           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4493
    .restart local v11       #name:Ljava/lang/String;
    :cond_8
    const/4 v7, -0x1

    goto/16 :goto_2

    .line 4505
    .restart local v7       #defaultIndex:I
    .restart local v9       #index:I
    :cond_9
    :try_start_1
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 4550
    .end local v4           #device:I
    .end local v7           #defaultIndex:I
    .end local v9           #index:I
    .end local v11           #name:Ljava/lang/String;
    :cond_a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V
    .locals 9
    .parameter "srcStream"
    .parameter "lastAudible"

    .prologue
    .line 4740
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getAllIndexes(Z)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 4741
    .local v4, indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4742
    .local v5, set:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4743
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4745
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4746
    .local v0, device:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4747
    .local v3, index:I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getStreamType()I

    move-result v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v7, v8}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)I

    move-result v3

    .line 4748
    invoke-virtual {p0, v3, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4740
    .end local v0           #device:I
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #i:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #set:Ljava/util/Set;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4750
    .restart local v2       #i:Ljava/util/Iterator;
    .restart local v4       #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #set:Ljava/util/Set;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setIndex(IIZ)Z
    .locals 11
    .parameter "index"
    .parameter "device"
    .parameter "lastAudible"

    .prologue
    .line 4602
    monitor-enter p0

    :try_start_0
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update volume cache setting, stream:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v9}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sync lastAudible? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->shouldEnforceShutterSound()Z
    invoke-static {v7}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4610
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v7}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    mul-int/lit8 p1, v7, 0xa

    .line 4613
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v4

    .line 4614
    .local v4, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 4615
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    const/high16 v7, 0x8

    if-eq p2, v7, :cond_1

    .line 4620
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4621
    .local v1, dev:I
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4602
    .end local v1           #dev:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #oldIndex:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 4625
    .restart local v4       #oldIndex:I
    :cond_1
    :try_start_1
    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 4626
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAnalogFM:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v8

    #calls: Landroid/media/AudioService;->broadcastFMVolume(Z)V
    invoke-static {v7, v8}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Z)V

    .line 4629
    :cond_2
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v7}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4630
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v7}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/media/AudioService$HtcVolumeProfile;

    move-result-object v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v7, v8, p1}, Landroid/media/AudioService$HtcVolumeProfile;->setVolume(II)V

    .line 4633
    :cond_3
    if-eq v4, p1, :cond_9

    .line 4634
    if-eqz p3, :cond_5

    .line 4635
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4639
    const/high16 v7, 0x8

    if-eq p2, v7, :cond_4

    .line 4640
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4641
    .restart local v1       #dev:I
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4645
    .end local v1           #dev:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v7}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4646
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v7}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/media/AudioService$HtcVolumeProfile;

    move-result-object v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v7, v8, p1}, Landroid/media/AudioService$HtcVolumeProfile;->setLastAudible(II)V

    .line 4652
    :cond_5
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v8}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;I)I

    move-result v7

    if-ne p2, v7, :cond_7

    const/4 v0, 0x1

    .line 4653
    .local v0, currentDevice:Z
    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 4654
    .local v3, numStreamTypes:I
    add-int/lit8 v6, v3, -0x1

    .local v6, streamType:I
    :goto_3
    if-ltz v6, :cond_8

    .line 4655
    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v7, :cond_6

    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v7}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v7

    aget v7, v7, v6

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v8, :cond_6

    .line 4657
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v7, p1, v8, v6}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)I

    move-result v5

    .line 4658
    .local v5, scaledIndex:I
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v7}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    .line 4661
    if-eqz v0, :cond_6

    .line 4662
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v7}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v6

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v6}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;I)I

    move-result v8

    invoke-virtual {v7, v5, v8, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4654
    .end local v5           #scaledIndex:I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 4652
    .end local v0           #currentDevice:Z
    .end local v3           #numStreamTypes:I
    .end local v6           #streamType:I
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 4668
    .restart local v0       #currentDevice:Z
    .restart local v3       #numStreamTypes:I
    .restart local v6       #streamType:I
    :cond_8
    const/4 v7, 0x1

    .line 4670
    .end local v0           #currentDevice:Z
    .end local v3           #numStreamTypes:I
    .end local v6           #streamType:I
    :goto_4
    monitor-exit p0

    return v7

    :cond_9
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public declared-synchronized setLastAudibleIndex(II)V
    .locals 9
    .parameter "index"
    .parameter "device"

    .prologue
    .line 4694
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v6, v7}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;I)I

    move-result v6

    if-ne p2, v6, :cond_1

    const/4 v0, 0x1

    .line 4695
    .local v0, currentDevice:Z
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 4696
    .local v3, numStreamTypes:I
    add-int/lit8 v5, v3, -0x1

    .local v5, streamType:I
    :goto_1
    if-ltz v5, :cond_2

    .line 4697
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)[I

    move-result-object v6

    aget v6, v6, v5

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v7, :cond_0

    .line 4699
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v7, v5}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)I

    move-result v4

    .line 4700
    .local v4, scaledIndex:I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6, v4, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 4701
    if-eqz v0, :cond_0

    .line 4702
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v5}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;I)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 4696
    .end local v4           #scaledIndex:I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4694
    .end local v0           #currentDevice:Z
    .end local v3           #numStreamTypes:I
    .end local v5           #streamType:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4707
    .restart local v0       #currentDevice:Z
    .restart local v3       #numStreamTypes:I
    .restart local v5       #streamType:I
    :cond_2
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4710
    const/high16 v6, 0x8

    if-eq p2, v6, :cond_3

    .line 4711
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4712
    .local v1, dev:I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4694
    .end local v0           #currentDevice:Z
    .end local v1           #dev:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #numStreamTypes:I
    .end local v5           #streamType:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4716
    .restart local v0       #currentDevice:Z
    .restart local v3       #numStreamTypes:I
    .restart local v5       #streamType:I
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4717
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v6}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Landroid/media/AudioService$HtcVolumeProfile;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v6, v7, p1}, Landroid/media/AudioService$HtcVolumeProfile;->setLastAudible(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4718
    :cond_4
    monitor-exit p0

    return-void
.end method
