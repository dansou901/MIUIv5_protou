.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1
    .parameter "orig"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .local v0, newuids:[I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .end local v0           #newuids:[I
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 16
    .parameter "other"
    .parameter "set"
    .parameter "returnNewbs"

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/WorkSource;->mNum:I

    .local v1, N1:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/WorkSource;->mUids:[I

    .local v10, uids1:[I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/WorkSource;->mNum:I

    .local v2, N2:I
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/WorkSource;->mUids:[I

    .local v11, uids2:[I
    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v13, :cond_0

    const-string v13, "WorkSource"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateLocked, set= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", returnNewbs= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WorkSource"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "N1= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", N2= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .local v3, changed:Z
    const/4 v6, 0x0

    .local v6, i1:I
    const/4 v7, 0x0

    .local v7, i2:I
    :goto_0
    if-ge v7, v2, :cond_12

    if-ge v6, v1, :cond_1

    aget v13, v11, v7

    aget v14, v10, v6

    if-ge v13, v14, :cond_c

    :cond_1
    const/4 v3, 0x1

    if-nez v10, :cond_4

    const/4 v13, 0x4

    new-array v10, v13, [I

    const/4 v13, 0x0

    aget v14, v11, v7

    aput v14, v10, v13

    :goto_1
    if-eqz p3, :cond_2

    sget-object v13, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v13, :cond_b

    new-instance v13, Landroid/os/WorkSource;

    aget v14, v11, v7

    invoke-direct {v13, v14}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v13, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    array-length v13, v10

    if-lt v6, v13, :cond_7

    array-length v13, v10

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    new-array v8, v13, [I

    .local v8, newuids:[I
    if-lez v6, :cond_5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v13, v8, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-ge v6, v1, :cond_6

    add-int/lit8 v13, v6, 0x1

    sub-int v14, v1, v6

    invoke-static {v10, v6, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    move-object v10, v8

    aget v13, v11, v7

    aput v13, v10, v6

    goto :goto_1

    .end local v8           #newuids:[I
    :cond_7
    if-ge v6, v1, :cond_a

    sub-int v4, v1, v6

    .local v4, copylength:I
    add-int v5, v6, v4

    .local v5, finalposition:I
    array-length v13, v10

    add-int/lit8 v12, v13, -0x1

    .local v12, validfinalposition:I
    if-le v5, v12, :cond_9

    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v13, :cond_8

    const-string v13, "WorkSource"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copylength= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", finalposition= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", validfinalposition= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sub-int v4, v12, v6

    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v13, :cond_9

    const-string v13, "WorkSource"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adjust copylength, copylength= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v13, v6, 0x1

    invoke-static {v10, v6, v10, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v4           #copylength:I
    .end local v5           #finalposition:I
    .end local v12           #validfinalposition:I
    :cond_a
    aget v13, v11, v7

    aput v13, v10, v6

    goto/16 :goto_1

    :cond_b
    sget-object v13, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v14, v11, v7

    invoke-direct {v13, v14}, Landroid/os/WorkSource;->addLocked(I)V

    goto/16 :goto_2

    :cond_c
    if-nez p2, :cond_e

    :cond_d
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v1, :cond_3

    aget v13, v11, v7

    aget v14, v10, v6

    if-ge v13, v14, :cond_d

    goto/16 :goto_3

    :cond_e
    move v9, v6

    .local v9, start:I
    :goto_4
    if-ge v6, v1, :cond_10

    aget v13, v11, v7

    aget v14, v10, v6

    if-le v13, v14, :cond_10

    sget-object v13, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v13, :cond_f

    new-instance v13, Landroid/os/WorkSource;

    aget v14, v10, v6

    invoke-direct {v13, v14}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v13, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    sget-object v13, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v14, v10, v6

    invoke-direct {v13, v14}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    :cond_10
    if-ge v9, v6, :cond_11

    sub-int v13, v6, v9

    invoke-static {v10, v6, v10, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v13, v6, v9

    sub-int/2addr v1, v13

    move v6, v9

    :cond_11
    if-ge v6, v1, :cond_3

    aget v13, v11, v6

    aget v14, v10, v6

    if-ne v13, v14, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .end local v9           #start:I
    :cond_12
    move-object/from16 v0, p0

    iput v1, v0, Landroid/os/WorkSource;->mNum:I

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/os/WorkSource;->mUids:[I

    return v3
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .parameter "other"

    .prologue
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .parameter "uid"

    .prologue
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .parameter "other"

    .prologue
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .local v0, N:I
    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .local v2, uids1:[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .local v3, uids2:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 13
    .parameter "other"

    .prologue
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .local v0, N1:I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .local v7, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .local v1, N2:I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .local v8, uids2:[I
    const/4 v2, 0x0

    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i1:I
    const/4 v6, 0x0

    .local v6, i2:I
    :goto_0
    if-ge v6, v1, :cond_4

    if-ge v5, v0, :cond_4

    aget v10, v8, v6

    aget v11, v7, v5

    if-ne v10, v11, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_2

    sub-int v3, v0, v5

    .local v3, copylength:I
    add-int v4, v5, v3

    .local v4, finalposition:I
    array-length v10, v7

    add-int/lit8 v9, v10, -0x1

    .local v9, validfinalposition:I
    if-le v4, v9, :cond_1

    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_0

    const-string v10, "WorkSource"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copylength= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", finalposition= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", validfinalposition= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sub-int v3, v9, v5

    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_1

    const-string v10, "WorkSource"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adjust copylength, copylength= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v10, v5, 0x1

    invoke-static {v7, v10, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v3           #copylength:I
    .end local v4           #finalposition:I
    .end local v9           #validfinalposition:I
    :cond_2
    :goto_1
    if-ge v5, v0, :cond_3

    aget v10, v8, v6

    aget v11, v7, v5

    if-le v10, v11, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v2
.end method

.method public set(I)V
    .locals 2
    .parameter "uid"

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    .local v0, diffs:[Landroid/os/WorkSource;
    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    monitor-exit v2

    .end local v0           #diffs:[Landroid/os/WorkSource;
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
