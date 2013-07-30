.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field channelData:[B

.field channelDataLength:I

.field channelStatus:[I

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field envelopeCmd:Ljava/lang/String;

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 3
    .parameter "cmdDet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method public getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public getConfirm()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    return-object v0
.end method

.method public getIntResCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v0

    return v0
.end method

.method public getMenuSelection()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    return v0
.end method

.method public getYesNo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    return v0
.end method

.method public setChannelData([BI)V
    .locals 0
    .parameter "data"
    .parameter "len"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    return-void
.end method

.method public setChannelStatus([I)V
    .locals 0
    .parameter "status"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    return-void
.end method
