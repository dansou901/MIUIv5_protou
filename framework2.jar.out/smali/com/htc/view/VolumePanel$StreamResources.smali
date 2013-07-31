.class final enum Lcom/htc/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconOutDoorRes:I

.field iconRes:I

.field iconVibrateRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 183
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x10403fe

    const v5, 0x402002c

    const v6, 0x402002d

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 188
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x10403ff

    const v5, 0x4020049

    const v6, 0x4020040

    const v7, 0x402003f

    const v8, 0x402004a

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 196
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x40700e8

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 201
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x10403fb

    const v5, 0x402002a

    const v6, 0x402002b

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 206
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x1040401

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 211
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x1040402

    const v5, 0x4020042

    const v6, 0x4020043

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 217
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "MasterStream"

    const/4 v2, 0x6

    const/16 v3, -0x64

    const v4, 0x1040401

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 222
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "RemoteStream"

    const/4 v2, 0x7

    const/16 v3, -0xc8

    const v4, 0x1040401

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 227
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "SystemStream"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const v4, 0x40700e9

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 232
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "DtmfStream"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const v4, 0x40700e9

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 237
    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "DummyStream"

    const/16 v2, 0xa

    const/4 v3, -0x2

    const v4, 0x40700e9

    const v5, 0x4020049

    const v6, 0x4020040

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 182
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->$VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "iconVibrateRes"
    .parameter "iconOutDoorRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput p3, p0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 265
    iput p4, p0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    .line 266
    iput p5, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    .line 267
    iput p6, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 268
    iput p7, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 269
    iput p8, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    .line 270
    iput-boolean p9, p0, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 271
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 255
    iput p4, p0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    .line 256
    iput p5, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    .line 257
    iput p6, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 258
    iput v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 259
    iput v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    .line 260
    iput-boolean p7, p0, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 261
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/view/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    const-class v0, Lcom/htc/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/htc/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/htc/view/VolumePanel$StreamResources;->$VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/htc/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/view/VolumePanel$StreamResources;

    return-object v0
.end method
