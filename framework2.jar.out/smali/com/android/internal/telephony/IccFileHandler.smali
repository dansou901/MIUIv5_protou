.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field private static final COMMAND_STATUS:I = 0xf2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static DFPhonebookPath:Ljava/lang/String; = null

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_BINARY_SIZE_DONE_IMS:I = 0xf

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_ICC_DETAIL_STATUS:I = 0x32

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_DONE_IMS:I = 0x10

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0x33

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_READ_RECORD_DONE_IMS:I = 0x11

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mDestroyed:Z

.field protected final mParentCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3F007F105F3A"

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "7F105F3A"

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 151
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 0
    .parameter "efid"

    .prologue
    .line 1136
    return p1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    .line 157
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    const/4 v0, 0x0

    .line 1063
    sparse-switch p1, :sswitch_data_0

    .line 1078
    :cond_0
    :goto_0
    return-object v0

    .line 1071
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "7F10"

    goto :goto_0

    :cond_1
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1074
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3F00"

    goto :goto_0

    .line 1076
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "7F105F50"

    goto :goto_0

    :cond_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1063
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 24
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 233
    const/16 v2, 0x8

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 243
    .local v12, response:Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v4

    .line 247
    .local v4, newfileid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 255
    .end local v4           #newfileid:I
    .end local v5           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v15, p1

    move-object/from16 v23, v12

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getIccCardAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 554
    const/16 v42, 0x0

    .line 566
    .local v42, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 569
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 570
    .local v32, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 571
    .local v39, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 572
    .local v43, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v42, v0

    .line 574
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 575
    .local v37, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_1

    .line 576
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1042
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v36

    .line 1043
    .local v36, exc:Ljava/lang/Exception;
    if-eqz v42, :cond_2e

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1045
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 578
    .end local v36           #exc:Ljava/lang/Exception;
    .restart local v32       #ar:Landroid/os/AsyncResult;
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    .restart local v39       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 582
    const-string v3, "IccFileHandler:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() EVENT_READ_IMG_DONE efid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " recordNum="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " recordSize="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " msg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v14, 0x33

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 597
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 598
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 599
    .restart local v39       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 600
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v42, v0

    .line 602
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 603
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_2

    .line 604
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 606
    :cond_2
    const-string v3, "IccFileHandler:"

    const-string v4, "handleMessage() EVENT_READ_IMG_RECORD_DONE success!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 615
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 616
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v42, v0

    .line 617
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 619
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 620
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_3

    .line 621
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 623
    :cond_3
    const/4 v3, 0x2

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    const-string v3, "IccFileHandler:"

    const-string v4, "handleMessage() EVENT_READ_ICON_DONE success!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 632
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 633
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 634
    .restart local v39       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 635
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v42, v0

    .line 637
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 638
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 642
    :cond_4
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 643
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_5

    .line 644
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 648
    :cond_5
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v34, v0

    .line 651
    .local v34, data:[B
    new-instance v38, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 652
    .local v38, iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v38, :cond_7

    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_7

    .line 653
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 654
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 656
    :cond_6
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccFcp;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 657
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v41, v0

    .line 658
    .local v41, recordSize:[I
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    aput v4, v41, v3

    .line 659
    const/4 v3, 0x1

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    aput v4, v41, v3

    .line 660
    const/4 v3, 0x2

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->numOfRecords:I

    aput v4, v41, v3

    .line 677
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 663
    .end local v41           #recordSize:[I
    :cond_7
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v34, v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v34, v4

    if-eq v3, v4, :cond_9

    .line 665
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 668
    :cond_9
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v41, v0

    .line 669
    .restart local v41       #recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v41, v3

    .line 670
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v7, 0x3

    aget-byte v7, v34, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    aput v4, v41, v3

    .line 672
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v41, v4

    const/4 v7, 0x0

    aget v7, v41, v7

    div-int/2addr v4, v7

    aput v4, v41, v3

    goto :goto_1

    .line 685
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v34           #data:[B
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v41           #recordSize:[I
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 686
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 687
    .restart local v39       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 688
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v42, v0

    .line 690
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 691
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 695
    :cond_a
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 697
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_b

    .line 698
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 702
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 705
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v34, v0

    .line 706
    .restart local v34       #data:[B
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    .line 707
    .local v16, fileid:I
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v40, v0

    .line 710
    .local v40, recordNum:I
    new-instance v38, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 711
    .restart local v38       #iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v38, :cond_e

    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_e

    .line 714
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    .line 715
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 717
    :cond_c
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccFcp;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 719
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->numOfRecords:I

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 740
    :goto_2
    move-object/from16 v0, v39

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_d

    .line 741
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 746
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DFID"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 747
    .local v35, dfid:I
    if-eqz v35, :cond_11

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3F00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, efPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 751
    .local v5, newfileid:I
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 752
    .local v13, readRecordResponse:Landroid/os/Message;
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 753
    .local v33, bundle:Landroid/os/Bundle;
    const-string v3, "DFID"

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 722
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    .end local v13           #readRecordResponse:Landroid/os/Message;
    .end local v33           #bundle:Landroid/os/Bundle;
    .end local v35           #dfid:I
    :cond_e
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v34, v4

    if-eq v3, v4, :cond_f

    .line 723
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 726
    :cond_f
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v34, v4

    if-eq v3, v4, :cond_10

    .line 727
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 730
    :cond_10
    const/16 v3, 0xe

    aget-byte v3, v34, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 732
    const/4 v3, 0x2

    aget-byte v3, v34, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    add-int v20, v3, v4

    .line 735
    .local v20, size:I
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v20, v3

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    goto/16 :goto_2

    .line 768
    .end local v20           #size:I
    .restart local v35       #dfid:I
    :cond_11
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 770
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 771
    .restart local v6       #efPath:Ljava/lang/String;
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 772
    .restart local v5       #newfileid:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 778
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_16

    .line 780
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    const/16 v4, 0x6f04

    if-ne v3, v4, :cond_14

    .line 781
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/16 v4, 0x50

    if-le v3, v4, :cond_13

    .line 782
    const/16 v3, 0x50

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 784
    :cond_13
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_14

    .line 785
    const/16 v3, 0x14

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 789
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 790
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    .end local v16           #fileid:I
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 796
    .restart local v16       #fileid:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    .end local v16           #fileid:I
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 804
    .restart local v16       #fileid:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    .end local v16           #fileid:I
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 818
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v34           #data:[B
    .end local v35           #dfid:I
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v40           #recordNum:I
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 819
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v42, v0

    .line 820
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 822
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_17

    .line 823
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 827
    :cond_17
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 829
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_18

    .line 830
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 834
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 837
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v34, v0

    .line 839
    .restart local v34       #data:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 842
    .restart local v16       #fileid:I
    new-instance v38, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 844
    .restart local v38       #iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v38, :cond_1e

    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_1e

    .line 845
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileId:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_19

    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    .line 846
    :cond_19
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 848
    :cond_1a
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    move/from16 v20, v0

    .line 865
    .restart local v20       #size:I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    .line 866
    .local v17, filePath:Ljava/lang/String;
    move/from16 v5, v16

    .line 868
    .restart local v5       #newfileid:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v3, 0x6f31

    move/from16 v0, v16

    if-ne v0, v3, :cond_1b

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 873
    :cond_1b
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_22

    .line 875
    const/16 v3, 0x6f02

    move/from16 v0, v16

    if-ne v0, v3, :cond_1c

    const/16 v3, 0x64

    move/from16 v0, v20

    if-le v0, v3, :cond_1c

    .line 876
    const/16 v20, 0x64

    .line 878
    :cond_1c
    const/16 v3, 0x6f03

    move/from16 v0, v16

    if-ne v0, v3, :cond_1d

    const/16 v3, 0x4b

    move/from16 v0, v20

    if-le v0, v3, :cond_1d

    .line 879
    const/16 v20, 0x4b

    .line 882
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 883
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v42

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 851
    .end local v5           #newfileid:I
    .end local v17           #filePath:Ljava/lang/String;
    .end local v20           #size:I
    :cond_1e
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v34, v4

    if-eq v3, v4, :cond_1f

    .line 852
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 855
    :cond_1f
    const/16 v3, 0xd

    aget-byte v3, v34, v3

    if-eqz v3, :cond_20

    .line 856
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 859
    :cond_20
    const/4 v3, 0x2

    aget-byte v3, v34, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    add-int v20, v3, v4

    .restart local v20       #size:I
    goto/16 :goto_3

    .line 888
    .restart local v5       #newfileid:I
    .restart local v17       #filePath:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v42

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 900
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v42

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    move/from16 v23, v5

    move-object/from16 v24, v17

    move/from16 v27, v20

    invoke-interface/range {v21 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 914
    .end local v5           #newfileid:I
    .end local v16           #fileid:I
    .end local v17           #filePath:Ljava/lang/String;
    .end local v20           #size:I
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v34           #data:[B
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 915
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 916
    .restart local v39       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 917
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v42, v0

    .line 919
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_23

    .line 920
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 924
    :cond_23
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 926
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_24

    .line 927
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 931
    :cond_24
    move-object/from16 v0, v39

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_25

    .line 932
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 934
    :cond_25
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v39

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 938
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_26

    .line 939
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 942
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 946
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DFID"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 947
    .restart local v35       #dfid:I
    if-eqz v35, :cond_27

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3F00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 950
    .restart local v6       #efPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 952
    .restart local v5       #newfileid:I
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 953
    .restart local v13       #readRecordResponse:Landroid/os/Message;
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 954
    .restart local v33       #bundle:Landroid/os/Bundle;
    const-string v3, "DFID"

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 955
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 966
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    .end local v13           #readRecordResponse:Landroid/os/Message;
    .end local v33           #bundle:Landroid/os/Bundle;
    :cond_27
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_28

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 968
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 969
    .restart local v6       #efPath:Ljava/lang/String;
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 970
    .restart local v5       #newfileid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    move/from16 v23, v5

    move-object/from16 v24, v6

    invoke-interface/range {v21 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 976
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2a

    .line 978
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v23, v0

    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget-object v30, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v21 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 985
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v23, v0

    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v21 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 993
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v23, v0

    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v21 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1007
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v35           #dfid:I
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 1008
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v42, v0

    .line 1009
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 1011
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2b

    .line 1012
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1016
    :cond_2b
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v37

    .line 1018
    .restart local v37       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v37, :cond_2c

    .line 1019
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1023
    :cond_2c
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1029
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v37           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    .line 1030
    .restart local v32       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v42, v0

    .line 1031
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccIoResult;

    .line 1033
    .restart local v43       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2d

    .line 1034
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1037
    :cond_2d
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1047
    .end local v32           #ar:Landroid/os/AsyncResult;
    .end local v43           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v36       #exc:Ljava/lang/Exception;
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_6
        0x32 -> :sswitch_8
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

.method protected htcExceptionWhenDisposed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/IccException;
        }
    .end annotation

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Lcom/android/internal/telephony/IccException;

    const-string v1, "disposed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    return-void
.end method

.method protected isCommonIccFile(I)Z
    .locals 1
    .parameter "efid"

    .prologue
    .line 1085
    sparse-switch p1, :sswitch_data_0

    .line 1091
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1089
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1085
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f31 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3c -> :sswitch_0
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 204
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 209
    .local v10, response:Landroid/os/Message;
    const/4 v0, 0x2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, path:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 221
    return-void

    .line 209
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    const-string v3, "img"

    goto :goto_0
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 426
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 432
    .local v11, response:Landroid/os/Message;
    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4f20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, path:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 439
    return-void

    .line 432
    .end local v4           #path:Ljava/lang/String;
    :cond_0
    const-string v4, "img"

    goto :goto_0
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 25
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 172
    const/4 v3, 0x6

    new-instance v4, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 182
    .local v13, response:Landroid/os/Message;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 186
    .local v5, newfileid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 192
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 188
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v16, p1

    move-object/from16 v24, v13

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "dfid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 346
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 348
    .local v10, response:Landroid/os/Message;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v11, bundle:Landroid/os/Bundle;
    const-string v0, "DFID"

    invoke-virtual {v11, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    invoke-virtual {v10, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3F00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, efPath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 357
    .local v2, newfileid:I
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v5, v4

    move v6, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 24
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 267
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 276
    .local v12, response:Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v4

    .line 280
    .local v4, newfileid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 288
    .end local v4           #newfileid:I
    .end local v5           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v15, p1

    move-object/from16 v23, v12

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 24
    .parameter "fileid"
    .parameter "filePath"
    .parameter "onLoaded"

    .prologue
    .line 293
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 295
    .local v12, response:Landroid/os/Message;
    const/16 v2, 0x4f30

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 296
    sput-object p2, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 301
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v4

    .line 305
    .local v4, newfileid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 312
    .end local v4           #newfileid:I
    .end local v5           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v23, v12

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 12
    .parameter "aid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 327
    new-instance v11, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v11, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 329
    .local v11, ct:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 330
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    move v2, p2

    move v5, v4

    move v6, v4

    move-object v8, v7

    move-object v9, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 332
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 25
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 374
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 382
    .local v13, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x6f31

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 383
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 385
    .local v5, newfileid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 393
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v16, p1

    move-object/from16 v24, v13

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .parameter "aid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 407
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, v4, p3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 409
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    move v2, p2

    move v5, v4

    move v6, v4

    move-object v8, v7

    move-object v9, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 411
    return-void
.end method

.method public loadIccDetailStatus(Landroid/os/Message;)V
    .locals 11
    .parameter "onLoaded"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1106
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1110
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf2

    const/4 v2, -0x1

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v5, v4

    move v6, v4

    move-object v7, v3

    move-object v8, v3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1111
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1142
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 475
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v3

    .line 479
    .local v3, newfileid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    const/4 v6, 0x4

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v5, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 489
    .end local v3           #newfileid:I
    .end local v4           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 483
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xdc

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    move-object/from16 v0, p3

    array-length v11, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v7, p1

    move/from16 v9, p2

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "strDFid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3F00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, efPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    array-length v6, p4

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 455
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 16
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 505
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f31

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v3

    .line 508
    .local v3, newfileid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v11, p3

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 518
    .end local v3           #newfileid:I
    .end local v4           #efPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd6

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v7, p1

    move-object/from16 v15, p3

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V
    .locals 11
    .parameter "aid"
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p2

    move v5, v4

    move-object v9, p1

    move-object v10, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    return-void
.end method
