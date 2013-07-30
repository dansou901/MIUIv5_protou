.class final enum Lcom/htc/view/VolumePanel$SeekBarStyle;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SeekBarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/view/VolumePanel$SeekBarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/view/VolumePanel$SeekBarStyle;

.field public static final enum SeekBar_GEP:Lcom/htc/view/VolumePanel$SeekBarStyle;

.field public static final enum SeekBar_HTC:Lcom/htc/view/VolumePanel$SeekBarStyle;

.field public static final enum SeekBar_Undefine:Lcom/htc/view/VolumePanel$SeekBarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/view/VolumePanel$SeekBarStyle;

    const-string v1, "SeekBar_Undefine"

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_Undefine:Lcom/htc/view/VolumePanel$SeekBarStyle;

    new-instance v0, Lcom/htc/view/VolumePanel$SeekBarStyle;

    const-string v1, "SeekBar_GEP"

    invoke-direct {v0, v1, v3}, Lcom/htc/view/VolumePanel$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_GEP:Lcom/htc/view/VolumePanel$SeekBarStyle;

    new-instance v0, Lcom/htc/view/VolumePanel$SeekBarStyle;

    const-string v1, "SeekBar_HTC"

    invoke-direct {v0, v1, v4}, Lcom/htc/view/VolumePanel$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_HTC:Lcom/htc/view/VolumePanel$SeekBarStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/view/VolumePanel$SeekBarStyle;

    sget-object v1, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_Undefine:Lcom/htc/view/VolumePanel$SeekBarStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_GEP:Lcom/htc/view/VolumePanel$SeekBarStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_HTC:Lcom/htc/view/VolumePanel$SeekBarStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/view/VolumePanel$SeekBarStyle;->$VALUES:[Lcom/htc/view/VolumePanel$SeekBarStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/view/VolumePanel$SeekBarStyle;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/htc/view/VolumePanel$SeekBarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$SeekBarStyle;

    return-object v0
.end method

.method public static values()[Lcom/htc/view/VolumePanel$SeekBarStyle;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/view/VolumePanel$SeekBarStyle;->$VALUES:[Lcom/htc/view/VolumePanel$SeekBarStyle;

    invoke-virtual {v0}, [Lcom/htc/view/VolumePanel$SeekBarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/view/VolumePanel$SeekBarStyle;

    return-object v0
.end method
