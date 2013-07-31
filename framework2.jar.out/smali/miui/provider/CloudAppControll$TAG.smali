.class public final enum Lmiui/provider/CloudAppControll$TAG;
.super Ljava/lang/Enum;
.source "CloudAppControll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CloudAppControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/provider/CloudAppControll$TAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/provider/CloudAppControll$TAG; = null

.field public static final DEFAULT_ACCURATE_ALARM_CLOCK:I = 0x0

.field public static final DEFAULT_AUTO_START:I = 0x0

.field public static final DEFAULT_COMPATIBLITY_FILTER:I = 0x0

.field public static final DEFAULT_FLOATING_WINDOW:I = 0x0

.field public static final DEFAULT_NOTIFICATION_BLACKLIST:I = 0x0

.field public static final MASK_ACCURATE_ALARM_CLOCK:J = 0xc0L

.field public static final MASK_AUTO_START:J = 0x3L

.field public static final MASK_COMPATIBLITY_FILTER:J = 0x300L

.field public static final MASK_FLOATING_WINDOW:J = 0x30L

.field public static final MASK_NOTIFICATION_BLACKLIST:J = 0xcL

.field public static final OFFSET_ACCURATE_ALARM_CLOCK:I = 0x6

.field public static final OFFSET_AUTO_START:I = 0x0

.field public static final OFFSET_COMPATIBLITY_FILTER:I = 0x8

.field public static final OFFSET_FLOATING_WINDOW:I = 0x4

.field public static final OFFSET_NOTIFICATION_BLACKLIST:I = 0x2

.field public static final enum TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;


# instance fields
.field private mDefaultValue:I

.field private mMask:J

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 14
    new-instance v0, Lmiui/provider/CloudAppControll$TAG;

    const-string v1, "TAG_AUTO_START"

    const/4 v2, 0x0

    const-wide/16 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    .line 15
    new-instance v0, Lmiui/provider/CloudAppControll$TAG;

    const-string v1, "TAG_NOTIFICATION_BLACKLIST"

    const/4 v2, 0x1

    const-wide/16 v3, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    .line 17
    new-instance v0, Lmiui/provider/CloudAppControll$TAG;

    const-string v1, "TAG_FLOATING_WINDOW"

    const/4 v2, 0x2

    const-wide/16 v3, 0x30

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

    .line 19
    new-instance v0, Lmiui/provider/CloudAppControll$TAG;

    const-string v1, "TAG_ACCURATE_ALARM_CLOCK"

    const/4 v2, 0x3

    const-wide/16 v3, 0xc0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    .line 21
    new-instance v0, Lmiui/provider/CloudAppControll$TAG;

    const-string v1, "TAG_COMPATIBLITY_FILTER"

    const/4 v2, 0x4

    const-wide/16 v3, 0x300

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/provider/CloudAppControll$TAG;

    const/4 v1, 0x0

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->$VALUES:[Lmiui/provider/CloudAppControll$TAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJII)V
    .locals 0
    .parameter
    .parameter
    .parameter "mask"
    .parameter "offset"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-wide p3, p0, Lmiui/provider/CloudAppControll$TAG;->mMask:J

    .line 26
    iput p5, p0, Lmiui/provider/CloudAppControll$TAG;->mOffset:I

    .line 27
    iput p6, p0, Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I

    .line 28
    return-void
.end method

.method static synthetic access$000(Lmiui/provider/CloudAppControll$TAG;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/provider/CloudAppControll$TAG;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lmiui/provider/CloudAppControll$TAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/provider/CloudAppControll$TAG;

    return-object v0
.end method

.method public static values()[Lmiui/provider/CloudAppControll$TAG;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lmiui/provider/CloudAppControll$TAG;->$VALUES:[Lmiui/provider/CloudAppControll$TAG;

    invoke-virtual {v0}, [Lmiui/provider/CloudAppControll$TAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/provider/CloudAppControll$TAG;

    return-object v0
.end method


# virtual methods
.method public getAttribute(J)I
    .locals 4
    .parameter "attributes"

    .prologue
    .line 35
    iget-wide v1, p0, Lmiui/provider/CloudAppControll$TAG;->mMask:J

    and-long/2addr v1, p1

    iget v3, p0, Lmiui/provider/CloudAppControll$TAG;->mOffset:I

    shr-long/2addr v1, v3

    long-to-int v0, v1

    .line 36
    .local v0, attribute:I
    return v0
.end method
