.class public Lmiui/push/IQ$Type;
.super Ljava/lang/Object;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final ERROR:Lmiui/push/IQ$Type;

.field public static final GET:Lmiui/push/IQ$Type;

.field public static final RESULT:Lmiui/push/IQ$Type;

.field public static final SET:Lmiui/push/IQ$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    goto :goto_0

    :cond_2
    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    goto :goto_0

    :cond_3
    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    goto :goto_0

    :cond_4
    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
