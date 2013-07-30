.class Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;
.super Lcom/android/server/PowerManagerService$WakeLock;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcCpuPerfLevelWakeLock"
.end annotation


# instance fields
.field private mLevel:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "b"
    .parameter "t"
    .parameter "u"
    .parameter "p"
    .parameter "level"

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    iput p7, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    return-void
.end method


# virtual methods
.method public cpuFreqLevelToString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown cpu freq level"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CPU_FREQ_LOWEST"

    goto :goto_0

    :pswitch_1
    const-string v0, "CPU_FREQ_LOW"

    goto :goto_0

    :pswitch_2
    const-string v0, "CPU_FREQ_MEDIUM"

    goto :goto_0

    :pswitch_3
    const-string v0, "CPU_FREQ_HIGH"

    goto :goto_0

    :pswitch_4
    const-string v0, "CPU_FREQ_HIGHEST"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public cpuNumLevelToString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown cpu number level"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CPU_NUM_SINGLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CPU_NUM_DUAL"

    goto :goto_0

    :pswitch_2
    const-string v0, "CPU_NUM_TRIPLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "CPU_NUM_QUAD"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    return v0
.end method
