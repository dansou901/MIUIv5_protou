.class public Lmiui/net/SimpleRequest$StreamContent;
.super Lmiui/net/SimpleRequest$HeaderContent;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamContent"
.end annotation


# instance fields
.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 434
    invoke-direct {p0}, Lmiui/net/SimpleRequest$HeaderContent;-><init>()V

    .line 435
    iput-object p1, p0, Lmiui/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    .line 436
    return-void
.end method


# virtual methods
.method public closeStream()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lmiui/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 444
    return-void
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lmiui/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    return-object v0
.end method
