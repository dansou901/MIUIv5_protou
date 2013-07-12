.class Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
.super Landroid/os/MemoryFile;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PduMemoryFile"
.end annotation


# instance fields
.field public mPosition:I

.field public mSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    .line 98
    invoke-direct {p0, p2, p3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 100
    iput p3, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    .line 101
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 5

    .prologue
    .line 126
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    new-array v0, v2, [B

    .line 128
    .local v0, buf:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0           #buf:[B
    :goto_0
    return-object v0

    .line 129
    .restart local v0       #buf:[B
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 5
    .parameter "oneByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    new-array v0, v2, [B

    .line 115
    .local v0, buf:[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 117
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 123
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 105
    :try_start_0
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 111
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
