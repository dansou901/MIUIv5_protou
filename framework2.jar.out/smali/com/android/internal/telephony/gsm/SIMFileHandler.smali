.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 229
    move v1, p1

    .line 230
    .local v1, newEfid:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->isCommonIccFile(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    .line 233
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 239
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getUSIMEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 86
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .local v0, path:Ljava/lang/String;
    move-object v1, v0

    .line 139
    goto :goto_0

    .line 89
    .end local v0           #path:Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007F43"

    goto :goto_0

    :cond_1
    const-string v1, "7F43"

    goto :goto_0

    .line 92
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F007F10"

    goto :goto_0

    :cond_2
    const-string v1, "7F10"

    goto :goto_0

    .line 94
    :sswitch_2
    const-string v1, "7F25"

    goto :goto_0

    .line 120
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3F007F20"

    goto :goto_0

    :cond_3
    const-string v1, "7F20"

    goto :goto_0

    .line 124
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_3
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f31 -> :sswitch_2
        0x6f38 -> :sswitch_3
        0x6f3c -> :sswitch_1
        0x6f3e -> :sswitch_3
        0x6f45 -> :sswitch_3
        0x6f46 -> :sswitch_3
        0x6f62 -> :sswitch_3
        0x6f7b -> :sswitch_3
        0x6fad -> :sswitch_3
        0x6fc5 -> :sswitch_3
        0x6fc7 -> :sswitch_3
        0x6fc8 -> :sswitch_3
        0x6fc9 -> :sswitch_3
        0x6fca -> :sswitch_3
        0x6fcb -> :sswitch_3
        0x6fcd -> :sswitch_3
    .end sparse-switch
.end method

.method protected getUSIMEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 144
    sparse-switch p1, :sswitch_data_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_8

    const/16 v1, 0x2fe2

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_8

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 221
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 147
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007F43"

    goto :goto_0

    :cond_1
    const-string v1, "7F43"

    goto :goto_0

    .line 172
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_2
    const-string v1, "7FFF"

    goto :goto_0

    .line 174
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3F00"

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 183
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    const-string v1, "7F10"

    goto :goto_0

    .line 186
    :cond_5
    const-string v1, "3F007F10"

    goto :goto_0

    .line 196
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 198
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    const-string v1, "7F20"

    goto :goto_0

    .line 201
    :cond_7
    const-string v1, "3F007F20"

    goto :goto_0

    .line 209
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_8
    move-object v1, v0

    .line 221
    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_2
        0x4f22 -> :sswitch_5
        0x4f23 -> :sswitch_5
        0x4f24 -> :sswitch_5
        0x4f30 -> :sswitch_5
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_1
        0x6f11 -> :sswitch_4
        0x6f13 -> :sswitch_4
        0x6f14 -> :sswitch_4
        0x6f15 -> :sswitch_4
        0x6f16 -> :sswitch_4
        0x6f17 -> :sswitch_4
        0x6f18 -> :sswitch_4
        0x6f38 -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f3c -> :sswitch_1
        0x6f3e -> :sswitch_1
        0x6f40 -> :sswitch_1
        0x6f45 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f49 -> :sswitch_3
        0x6f4b -> :sswitch_3
        0x6f4c -> :sswitch_3
        0x6f4e -> :sswitch_1
        0x6f62 -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 66
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SimFileHandler drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 244
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 248
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method
