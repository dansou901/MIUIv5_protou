.class public Lmiui/app/ExtraNotification;
.super Ljava/lang/Object;
.source "ExtraNotification.java"


# static fields
.field public static final TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public customizedIcon:Z

.field public traceContent:Ljava/lang/CharSequence;

.field public traceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .parameter "totalLength"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, values:[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomizedIcon(Z)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "customizedIcon"

    .prologue
    iput-boolean p1, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    return-object p0
.end method

.method public setTo(Lmiui/app/ExtraNotification;)V
    .locals 1
    .parameter "extraNotification"

    .prologue
    iget v0, p1, Lmiui/app/ExtraNotification;->traceType:I

    iput v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    iget-object v0, p1, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    iget-boolean v0, p1, Lmiui/app/ExtraNotification;->customizedIcon:Z

    iput-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    return-void
.end method

.method public setTrace(ILjava/lang/CharSequence;)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "type"
    .parameter "content"

    .prologue
    iput p1, p0, Lmiui/app/ExtraNotification;->traceType:I

    iput-object p2, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
